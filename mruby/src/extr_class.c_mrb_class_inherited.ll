; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_class.c_mrb_class_inherited.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_class.c_mrb_class_inherited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.RClass* }
%struct.RClass = type { i32 }

@MRB_FL_CLASS_IS_INHERITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"inherited\00", align 1
@mrb_bob_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.RClass*, %struct.RClass*)* @mrb_class_inherited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrb_class_inherited(%struct.TYPE_7__* %0, %struct.RClass* %1, %struct.RClass* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.RClass* %1, %struct.RClass** %5, align 8
  store %struct.RClass* %2, %struct.RClass** %6, align 8
  %10 = load %struct.RClass*, %struct.RClass** %5, align 8
  %11 = icmp ne %struct.RClass* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.RClass*, %struct.RClass** %14, align 8
  store %struct.RClass* %15, %struct.RClass** %5, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @MRB_FL_CLASS_IS_INHERITED, align 4
  %18 = load %struct.RClass*, %struct.RClass** %5, align 8
  %19 = getelementptr inbounds %struct.RClass, %struct.RClass* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.RClass*, %struct.RClass** %5, align 8
  %23 = call i32 @mrb_obj_value(%struct.RClass* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load %struct.RClass*, %struct.RClass** %6, align 8
  %26 = call i32 @mc_clear_by_class(%struct.TYPE_7__* %24, %struct.RClass* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = call i32 @mrb_intern_lit(%struct.TYPE_7__* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @mrb_bob_init, align 4
  %33 = call i32 @mrb_func_basic_p(%struct.TYPE_7__* %29, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %16
  %36 = load %struct.RClass*, %struct.RClass** %6, align 8
  %37 = call i32 @mrb_obj_value(%struct.RClass* %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @mrb_funcall_argv(%struct.TYPE_7__* %38, i32 %39, i32 %40, i32 1, i32* %9)
  br label %42

42:                                               ; preds = %35, %16
  ret void
}

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mc_clear_by_class(%struct.TYPE_7__*, %struct.RClass*) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mrb_func_basic_p(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @mrb_funcall_argv(%struct.TYPE_7__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
