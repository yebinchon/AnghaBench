; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-math/src/extr_math.c_mrb_mruby_math_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-math/src/extr_math.c_mrb_mruby_math_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Math\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DomainError\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@math_sin = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@math_cos = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@math_tan = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@math_asin = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@math_acos = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@math_atan = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@math_atan2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@math_sinh = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@math_cosh = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@math_tanh = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"asinh\00", align 1
@math_asinh = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@math_acosh = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"atanh\00", align 1
@math_atanh = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@math_exp = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@math_log = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"log2\00", align 1
@math_log2 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@math_log10 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@math_sqrt = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"cbrt\00", align 1
@math_cbrt = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@math_frexp = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@math_ldexp = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"hypot\00", align 1
@math_hypot = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"erf\00", align 1
@math_erf = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"erfc\00", align 1
@math_erfc = common dso_local global i32 0, align 4
@M_E = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_math_gem_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call %struct.RClass* @mrb_define_module(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %5, %struct.RClass** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.RClass*, %struct.RClass** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mrb_define_class_under(%struct.TYPE_8__* %6, %struct.RClass* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.RClass*, %struct.RClass** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call double @atan(double 1.000000e+00) #3
  %16 = fmul double %15, 4.000000e+00
  %17 = call i32 @mrb_float_value(%struct.TYPE_8__* %14, double %16)
  %18 = call i32 @mrb_define_const(%struct.TYPE_8__* %12, %struct.RClass* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load %struct.RClass*, %struct.RClass** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = call double @exp(double 1.000000e+00) #3
  %23 = call i32 @mrb_float_value(%struct.TYPE_8__* %21, double %22)
  %24 = call i32 @mrb_define_const(%struct.TYPE_8__* %19, %struct.RClass* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = load %struct.RClass*, %struct.RClass** %3, align 8
  %27 = load i32, i32* @math_sin, align 4
  %28 = call i32 @MRB_ARGS_REQ(i32 1)
  %29 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %25, %struct.RClass* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = load %struct.RClass*, %struct.RClass** %3, align 8
  %32 = load i32, i32* @math_cos, align 4
  %33 = call i32 @MRB_ARGS_REQ(i32 1)
  %34 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %30, %struct.RClass* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = load %struct.RClass*, %struct.RClass** %3, align 8
  %37 = load i32, i32* @math_tan, align 4
  %38 = call i32 @MRB_ARGS_REQ(i32 1)
  %39 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %35, %struct.RClass* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = load %struct.RClass*, %struct.RClass** %3, align 8
  %42 = load i32, i32* @math_asin, align 4
  %43 = call i32 @MRB_ARGS_REQ(i32 1)
  %44 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %40, %struct.RClass* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = load %struct.RClass*, %struct.RClass** %3, align 8
  %47 = load i32, i32* @math_acos, align 4
  %48 = call i32 @MRB_ARGS_REQ(i32 1)
  %49 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %45, %struct.RClass* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = load %struct.RClass*, %struct.RClass** %3, align 8
  %52 = load i32, i32* @math_atan, align 4
  %53 = call i32 @MRB_ARGS_REQ(i32 1)
  %54 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %50, %struct.RClass* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = load %struct.RClass*, %struct.RClass** %3, align 8
  %57 = load i32, i32* @math_atan2, align 4
  %58 = call i32 @MRB_ARGS_REQ(i32 2)
  %59 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %55, %struct.RClass* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = load %struct.RClass*, %struct.RClass** %3, align 8
  %62 = load i32, i32* @math_sinh, align 4
  %63 = call i32 @MRB_ARGS_REQ(i32 1)
  %64 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %60, %struct.RClass* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = load %struct.RClass*, %struct.RClass** %3, align 8
  %67 = load i32, i32* @math_cosh, align 4
  %68 = call i32 @MRB_ARGS_REQ(i32 1)
  %69 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %65, %struct.RClass* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = load %struct.RClass*, %struct.RClass** %3, align 8
  %72 = load i32, i32* @math_tanh, align 4
  %73 = call i32 @MRB_ARGS_REQ(i32 1)
  %74 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %70, %struct.RClass* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = load %struct.RClass*, %struct.RClass** %3, align 8
  %77 = load i32, i32* @math_asinh, align 4
  %78 = call i32 @MRB_ARGS_REQ(i32 1)
  %79 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %75, %struct.RClass* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = load %struct.RClass*, %struct.RClass** %3, align 8
  %82 = load i32, i32* @math_acosh, align 4
  %83 = call i32 @MRB_ARGS_REQ(i32 1)
  %84 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %80, %struct.RClass* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = load %struct.RClass*, %struct.RClass** %3, align 8
  %87 = load i32, i32* @math_atanh, align 4
  %88 = call i32 @MRB_ARGS_REQ(i32 1)
  %89 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %85, %struct.RClass* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = load %struct.RClass*, %struct.RClass** %3, align 8
  %92 = load i32, i32* @math_exp, align 4
  %93 = call i32 @MRB_ARGS_REQ(i32 1)
  %94 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %90, %struct.RClass* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = load %struct.RClass*, %struct.RClass** %3, align 8
  %97 = load i32, i32* @math_log, align 4
  %98 = call i32 @MRB_ARGS_REQ(i32 1)
  %99 = call i32 @MRB_ARGS_OPT(i32 1)
  %100 = or i32 %98, %99
  %101 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %95, %struct.RClass* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %103 = load %struct.RClass*, %struct.RClass** %3, align 8
  %104 = load i32, i32* @math_log2, align 4
  %105 = call i32 @MRB_ARGS_REQ(i32 1)
  %106 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %102, %struct.RClass* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = load %struct.RClass*, %struct.RClass** %3, align 8
  %109 = load i32, i32* @math_log10, align 4
  %110 = call i32 @MRB_ARGS_REQ(i32 1)
  %111 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %107, %struct.RClass* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = load %struct.RClass*, %struct.RClass** %3, align 8
  %114 = load i32, i32* @math_sqrt, align 4
  %115 = call i32 @MRB_ARGS_REQ(i32 1)
  %116 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %112, %struct.RClass* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %118 = load %struct.RClass*, %struct.RClass** %3, align 8
  %119 = load i32, i32* @math_cbrt, align 4
  %120 = call i32 @MRB_ARGS_REQ(i32 1)
  %121 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %117, %struct.RClass* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = load %struct.RClass*, %struct.RClass** %3, align 8
  %124 = load i32, i32* @math_frexp, align 4
  %125 = call i32 @MRB_ARGS_REQ(i32 1)
  %126 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %122, %struct.RClass* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = load %struct.RClass*, %struct.RClass** %3, align 8
  %129 = load i32, i32* @math_ldexp, align 4
  %130 = call i32 @MRB_ARGS_REQ(i32 2)
  %131 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %127, %struct.RClass* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %133 = load %struct.RClass*, %struct.RClass** %3, align 8
  %134 = load i32, i32* @math_hypot, align 4
  %135 = call i32 @MRB_ARGS_REQ(i32 2)
  %136 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %132, %struct.RClass* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = load %struct.RClass*, %struct.RClass** %3, align 8
  %139 = load i32, i32* @math_erf, align 4
  %140 = call i32 @MRB_ARGS_REQ(i32 1)
  %141 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %137, %struct.RClass* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %143 = load %struct.RClass*, %struct.RClass** %3, align 8
  %144 = load i32, i32* @math_erfc, align 4
  %145 = call i32 @MRB_ARGS_REQ(i32 1)
  %146 = call i32 @mrb_define_module_function(%struct.TYPE_8__* %142, %struct.RClass* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %144, i32 %145)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_module(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mrb_define_class_under(%struct.TYPE_8__*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @mrb_define_const(%struct.TYPE_8__*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @mrb_float_value(%struct.TYPE_8__*, double) #1

; Function Attrs: nounwind
declare dso_local double @atan(double) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

declare dso_local i32 @mrb_define_module_function(%struct.TYPE_8__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
