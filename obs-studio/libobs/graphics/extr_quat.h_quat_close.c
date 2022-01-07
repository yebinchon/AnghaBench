
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {float x; float y; float z; float w; } ;


 int quat_sub (struct quat*,struct quat const*,struct quat const*) ;

__attribute__((used)) static inline bool quat_close(const struct quat *q1, const struct quat *q2,
         float epsilon)
{
 struct quat test;
 quat_sub(&test, q1, q2);
 return test.x < epsilon && test.y < epsilon && test.z < epsilon &&
        test.w < epsilon;
}
