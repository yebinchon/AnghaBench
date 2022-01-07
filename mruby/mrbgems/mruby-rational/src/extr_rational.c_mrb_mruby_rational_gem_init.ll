; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-rational/src/extr_rational.c_mrb_mruby_rational_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-rational/src/extr_rational.c_mrb_mruby_rational_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Rational\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Numeric\00", align 1
@MRB_TT_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_new\00", align 1
@rational_s_new = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"numerator\00", align 1
@rational_numerator = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"denominator\00", align 1
@rational_denominator = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"to_f\00", align 1
@rational_to_f = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"to_i\00", align 1
@rational_to_i = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"to_r\00", align 1
@rational_to_r = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"negative?\00", align 1
@rational_negative_p = common dso_local global i32 0, align 4
@fix_to_r = common dso_local global i32 0, align 4
@ISTRUCT_DATA_SIZE = common dso_local global i32 0, align 4
@MRB_TT_ISTRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_rational_gem_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call i32 @mrb_class_get(%struct.TYPE_8__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %7 = call %struct.RClass* @mrb_define_class(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6)
  store %struct.RClass* %7, %struct.RClass** %3, align 8
  %8 = load %struct.RClass*, %struct.RClass** %3, align 8
  %9 = load i32, i32* @MRB_TT_DATA, align 4
  %10 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %8, i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = load %struct.RClass*, %struct.RClass** %3, align 8
  %13 = call i32 @mrb_undef_class_method(%struct.TYPE_8__* %11, %struct.RClass* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = load %struct.RClass*, %struct.RClass** %3, align 8
  %16 = load i32, i32* @rational_s_new, align 4
  %17 = call i32 @MRB_ARGS_REQ(i32 2)
  %18 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %14, %struct.RClass* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load %struct.RClass*, %struct.RClass** %3, align 8
  %21 = load i32, i32* @rational_numerator, align 4
  %22 = call i32 (...) @MRB_ARGS_NONE()
  %23 = call i32 @mrb_define_method(%struct.TYPE_8__* %19, %struct.RClass* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = load %struct.RClass*, %struct.RClass** %3, align 8
  %26 = load i32, i32* @rational_denominator, align 4
  %27 = call i32 (...) @MRB_ARGS_NONE()
  %28 = call i32 @mrb_define_method(%struct.TYPE_8__* %24, %struct.RClass* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = load %struct.RClass*, %struct.RClass** %3, align 8
  %31 = load i32, i32* @rational_to_f, align 4
  %32 = call i32 (...) @MRB_ARGS_NONE()
  %33 = call i32 @mrb_define_method(%struct.TYPE_8__* %29, %struct.RClass* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = load %struct.RClass*, %struct.RClass** %3, align 8
  %36 = load i32, i32* @rational_to_i, align 4
  %37 = call i32 (...) @MRB_ARGS_NONE()
  %38 = call i32 @mrb_define_method(%struct.TYPE_8__* %34, %struct.RClass* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = load %struct.RClass*, %struct.RClass** %3, align 8
  %41 = load i32, i32* @rational_to_r, align 4
  %42 = call i32 (...) @MRB_ARGS_NONE()
  %43 = call i32 @mrb_define_method(%struct.TYPE_8__* %39, %struct.RClass* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = load %struct.RClass*, %struct.RClass** %3, align 8
  %46 = load i32, i32* @rational_negative_p, align 4
  %47 = call i32 (...) @MRB_ARGS_NONE()
  %48 = call i32 @mrb_define_method(%struct.TYPE_8__* %44, %struct.RClass* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.RClass*, %struct.RClass** %51, align 8
  %53 = load i32, i32* @fix_to_r, align 4
  %54 = call i32 (...) @MRB_ARGS_NONE()
  %55 = call i32 @mrb_define_method(%struct.TYPE_8__* %49, %struct.RClass* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %53, i32 %54)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @mrb_class_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_undef_class_method(%struct.TYPE_8__*, %struct.RClass*, i8*) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_8__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_8__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
