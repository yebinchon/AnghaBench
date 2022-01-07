
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int y; int z; int x; } ;
struct quat {int dummy; } ;
struct axisang {int dummy; } ;


 int EPSILON ;
 int asinf (int ) ;
 int atan2f (int ,int ) ;
 int axisang_set (struct axisang*,float,float,float,int ) ;
 int close_float (int ,float,int ) ;
 int quat_copy (struct quat*,struct quat*) ;
 int quat_from_axisang (struct quat*,struct axisang*) ;
 int quat_identity (struct quat*) ;
 int quat_mul (struct quat*,struct quat*,struct quat*) ;
 int vec3_neg (struct vec3*,struct vec3*) ;
 int vec3_norm (struct vec3*,struct vec3 const*) ;

void quat_set_look_dir(struct quat *dst, const struct vec3 *dir)
{
 struct vec3 new_dir;
 struct quat xz_rot, yz_rot;
 bool xz_valid;
 bool yz_valid;
 struct axisang aa;

 vec3_norm(&new_dir, dir);
 vec3_neg(&new_dir, &new_dir);

 quat_identity(&xz_rot);
 quat_identity(&yz_rot);

 xz_valid = close_float(new_dir.x, 0.0f, EPSILON) ||
     close_float(new_dir.z, 0.0f, EPSILON);
 yz_valid = close_float(new_dir.y, 0.0f, EPSILON);

 if (xz_valid) {
  axisang_set(&aa, 0.0f, 1.0f, 0.0f,
       atan2f(new_dir.x, new_dir.z));

  quat_from_axisang(&xz_rot, &aa);
 }
 if (yz_valid) {
  axisang_set(&aa, -1.0f, 0.0f, 0.0f, asinf(new_dir.y));
  quat_from_axisang(&yz_rot, &aa);
 }

 if (!xz_valid)
  quat_copy(dst, &yz_rot);
 else if (!yz_valid)
  quat_copy(dst, &xz_rot);
 else
  quat_mul(dst, &xz_rot, &yz_rot);
}
