
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_mbcliplen (char*,int,scalar_t__) ;
 scalar_t__ pgstat_track_activity_query_size ;
 char* pnstrdup (char const*,scalar_t__) ;
 int strlen (char*) ;

char *
pgstat_clip_activity(const char *raw_activity)
{
 char *activity;
 int rawlen;
 int cliplen;
 activity = pnstrdup(raw_activity, pgstat_track_activity_query_size - 1);


 rawlen = strlen(activity);
 cliplen = pg_mbcliplen(activity, rawlen,
         pgstat_track_activity_query_size - 1);

 activity[cliplen] = '\0';

 return activity;
}
