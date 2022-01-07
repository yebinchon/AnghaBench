
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int h; int i; int s; scalar_t__ sse; int d; int m; int y; } ;
typedef TYPE_1__ timelib_time ;
typedef scalar_t__ timelib_sll ;


 double acosd (double) ;
 scalar_t__ astro_GMST0 (double) ;
 double astro_rev180 (double) ;
 double astro_revolution (scalar_t__) ;
 int astro_sun_RA_dec (double,double*,double*,double*) ;
 double cosd (double) ;
 double sind (double) ;
 TYPE_1__* timelib_time_ctor () ;
 int timelib_time_dtor (TYPE_1__*) ;
 int timelib_ts_to_j2000 (scalar_t__) ;
 int timelib_update_ts (TYPE_1__*,int *) ;

int timelib_astro_rise_set_altitude(timelib_time *t_loc, double lon, double lat, double altit, int upper_limb, double *h_rise, double *h_set, timelib_sll *ts_rise, timelib_sll *ts_set, timelib_sll *ts_transit)
{
 double d,
 sr,
 sRA,
 sdec,
 sradius,
 t,
 tsouth,
 sidtime;
 timelib_time *t_utc;
 timelib_sll timestamp, old_sse;

 int rc = 0;


 old_sse = t_loc->sse;
 t_loc->h = 12;
 t_loc->i = t_loc->s = 0;
 timelib_update_ts(t_loc, ((void*)0));



 t_utc = timelib_time_ctor();
 t_utc->y = t_loc->y;
 t_utc->m = t_loc->m;
 t_utc->d = t_loc->d;
 t_utc->h = t_utc->i = t_utc->s = 0;
 timelib_update_ts(t_utc, ((void*)0));


 timestamp = t_utc->sse;
 d = timelib_ts_to_j2000(timestamp) + 2 - lon/360.0;


 sidtime = astro_revolution(astro_GMST0(d) + 180.0 + lon);


 astro_sun_RA_dec( d, &sRA, &sdec, &sr );


 tsouth = 12.0 - astro_rev180(sidtime - sRA) / 15.0;


 sradius = 0.2666 / sr;


 if (upper_limb) {
  altit -= sradius;
 }



 {
  double cost;
  cost = (sind(altit) - sind(lat) * sind(sdec)) / (cosd(lat) * cosd(sdec));
  *ts_transit = t_utc->sse + (tsouth * 3600);
  if (cost >= 1.0) {
   rc = -1;
   t = 0.0;

   *ts_rise = *ts_set = t_utc->sse + (tsouth * 3600);
  } else if (cost <= -1.0) {
   rc = +1;
   t = 12.0;

   *ts_rise = t_loc->sse - (12 * 3600);
   *ts_set = t_loc->sse + (12 * 3600);
  } else {
   t = acosd(cost) / 15.0;


   *ts_rise = ((tsouth - t) * 3600) + t_utc->sse;
   *ts_set = ((tsouth + t) * 3600) + t_utc->sse;

   *h_rise = (tsouth - t);
   *h_set = (tsouth + t);
  }
 }


 timelib_time_dtor(t_utc);
 t_loc->sse = old_sse;

 return rc;
}
