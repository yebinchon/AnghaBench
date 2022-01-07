; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-object-ext/src/extr_object.c_mrb_mruby_object_ext_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-object-ext/src/extr_object.c_mrb_mruby_object_ext_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.RClass*, %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"to_a\00", align 1
@nil_to_a = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"to_f\00", align 1
@nil_to_f = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"to_h\00", align 1
@nil_to_h = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"to_i\00", align 1
@nil_to_i = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"itself\00", align 1
@mrb_f_itself = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"BasicObject\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"instance_exec\00", align 1
@mrb_obj_instance_exec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_object_ext_gem_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.RClass*, %struct.RClass** %5, align 8
  store %struct.RClass* %6, %struct.RClass** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.RClass*, %struct.RClass** %3, align 8
  %9 = load i32, i32* @nil_to_a, align 4
  %10 = call i32 (...) @MRB_ARGS_NONE()
  %11 = call i32 @mrb_define_method(%struct.TYPE_5__* %7, %struct.RClass* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.RClass*, %struct.RClass** %3, align 8
  %14 = load i32, i32* @nil_to_f, align 4
  %15 = call i32 (...) @MRB_ARGS_NONE()
  %16 = call i32 @mrb_define_method(%struct.TYPE_5__* %12, %struct.RClass* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = load %struct.RClass*, %struct.RClass** %3, align 8
  %19 = load i32, i32* @nil_to_h, align 4
  %20 = call i32 (...) @MRB_ARGS_NONE()
  %21 = call i32 @mrb_define_method(%struct.TYPE_5__* %17, %struct.RClass* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = load %struct.RClass*, %struct.RClass** %3, align 8
  %24 = load i32, i32* @nil_to_i, align 4
  %25 = call i32 (...) @MRB_ARGS_NONE()
  %26 = call i32 @mrb_define_method(%struct.TYPE_5__* %22, %struct.RClass* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.RClass*, %struct.RClass** %29, align 8
  %31 = load i32, i32* @mrb_f_itself, align 4
  %32 = call i32 (...) @MRB_ARGS_NONE()
  %33 = call i32 @mrb_define_method(%struct.TYPE_5__* %27, %struct.RClass* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = call %struct.RClass* @mrb_class_get(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %37 = load i32, i32* @mrb_obj_instance_exec, align 4
  %38 = call i32 (...) @MRB_ARGS_ANY()
  %39 = call i32 (...) @MRB_ARGS_BLOCK()
  %40 = or i32 %38, %39
  %41 = call i32 @mrb_define_method(%struct.TYPE_5__* %34, %struct.RClass* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @mrb_define_method(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local %struct.RClass* @mrb_class_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @MRB_ARGS_BLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
