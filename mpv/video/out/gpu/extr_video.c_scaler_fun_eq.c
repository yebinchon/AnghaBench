
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scaler_fun {scalar_t__ blur; scalar_t__ taper; int * params; scalar_t__ name; } ;


 scalar_t__ double_seq (int ,int ) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool scaler_fun_eq(struct scaler_fun a, struct scaler_fun b)
{
    if ((a.name && !b.name) || (b.name && !a.name))
        return 0;

    return ((!a.name && !b.name) || strcmp(a.name, b.name) == 0) &&
           double_seq(a.params[0], b.params[0]) &&
           double_seq(a.params[1], b.params[1]) &&
           a.blur == b.blur &&
           a.taper == b.taper;
}
