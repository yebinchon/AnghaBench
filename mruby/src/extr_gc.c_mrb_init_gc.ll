; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_gc.c_mrb_init_gc.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_gc.c_mrb_init_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"GC\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@gc_start = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@gc_enable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@gc_disable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"interval_ratio\00", align 1
@gc_interval_ratio_get = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"interval_ratio=\00", align 1
@gc_interval_ratio_set = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"step_ratio\00", align 1
@gc_step_ratio_get = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"step_ratio=\00", align 1
@gc_step_ratio_set = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"generational_mode=\00", align 1
@gc_generational_mode_set = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"generational_mode\00", align 1
@gc_generational_mode_get = common dso_local global i32 0, align 4
@gc_test = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_gc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.RClass* @mrb_define_module(i32* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %5, %struct.RClass** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load %struct.RClass*, %struct.RClass** %3, align 8
  %8 = load i32, i32* @gc_start, align 4
  %9 = call i32 (...) @MRB_ARGS_NONE()
  %10 = call i32 @mrb_define_class_method(i32* %6, %struct.RClass* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load %struct.RClass*, %struct.RClass** %3, align 8
  %13 = load i32, i32* @gc_enable, align 4
  %14 = call i32 (...) @MRB_ARGS_NONE()
  %15 = call i32 @mrb_define_class_method(i32* %11, %struct.RClass* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load %struct.RClass*, %struct.RClass** %3, align 8
  %18 = load i32, i32* @gc_disable, align 4
  %19 = call i32 (...) @MRB_ARGS_NONE()
  %20 = call i32 @mrb_define_class_method(i32* %16, %struct.RClass* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load %struct.RClass*, %struct.RClass** %3, align 8
  %23 = load i32, i32* @gc_interval_ratio_get, align 4
  %24 = call i32 (...) @MRB_ARGS_NONE()
  %25 = call i32 @mrb_define_class_method(i32* %21, %struct.RClass* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load %struct.RClass*, %struct.RClass** %3, align 8
  %28 = load i32, i32* @gc_interval_ratio_set, align 4
  %29 = call i32 @MRB_ARGS_REQ(i32 1)
  %30 = call i32 @mrb_define_class_method(i32* %26, %struct.RClass* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load %struct.RClass*, %struct.RClass** %3, align 8
  %33 = load i32, i32* @gc_step_ratio_get, align 4
  %34 = call i32 (...) @MRB_ARGS_NONE()
  %35 = call i32 @mrb_define_class_method(i32* %31, %struct.RClass* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load %struct.RClass*, %struct.RClass** %3, align 8
  %38 = load i32, i32* @gc_step_ratio_set, align 4
  %39 = call i32 @MRB_ARGS_REQ(i32 1)
  %40 = call i32 @mrb_define_class_method(i32* %36, %struct.RClass* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load %struct.RClass*, %struct.RClass** %3, align 8
  %43 = load i32, i32* @gc_generational_mode_set, align 4
  %44 = call i32 @MRB_ARGS_REQ(i32 1)
  %45 = call i32 @mrb_define_class_method(i32* %41, %struct.RClass* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load %struct.RClass*, %struct.RClass** %3, align 8
  %48 = load i32, i32* @gc_generational_mode_get, align 4
  %49 = call i32 (...) @MRB_ARGS_NONE()
  %50 = call i32 @mrb_define_class_method(i32* %46, %struct.RClass* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %48, i32 %49)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_module(i32*, i8*) #1

declare dso_local i32 @mrb_define_class_method(i32*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
