; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_mruby_array_ext_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_mruby_array_ext_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"assoc\00", align 1
@mrb_ary_assoc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@mrb_ary_at = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rassoc\00", align 1
@mrb_ary_rassoc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"values_at\00", align 1
@mrb_ary_values_at = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"slice!\00", align 1
@mrb_ary_slice_bang = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_array_ext_gem_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.RClass*, %struct.RClass** %5, align 8
  store %struct.RClass* %6, %struct.RClass** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = load %struct.RClass*, %struct.RClass** %3, align 8
  %9 = load i32, i32* @mrb_ary_assoc, align 4
  %10 = call i32 @MRB_ARGS_REQ(i32 1)
  %11 = call i32 @mrb_define_method(%struct.TYPE_4__* %7, %struct.RClass* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = load %struct.RClass*, %struct.RClass** %3, align 8
  %14 = load i32, i32* @mrb_ary_at, align 4
  %15 = call i32 @MRB_ARGS_REQ(i32 1)
  %16 = call i32 @mrb_define_method(%struct.TYPE_4__* %12, %struct.RClass* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = load %struct.RClass*, %struct.RClass** %3, align 8
  %19 = load i32, i32* @mrb_ary_rassoc, align 4
  %20 = call i32 @MRB_ARGS_REQ(i32 1)
  %21 = call i32 @mrb_define_method(%struct.TYPE_4__* %17, %struct.RClass* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = load %struct.RClass*, %struct.RClass** %3, align 8
  %24 = load i32, i32* @mrb_ary_values_at, align 4
  %25 = call i32 (...) @MRB_ARGS_ANY()
  %26 = call i32 @mrb_define_method(%struct.TYPE_4__* %22, %struct.RClass* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = load %struct.RClass*, %struct.RClass** %3, align 8
  %29 = load i32, i32* @mrb_ary_slice_bang, align 4
  %30 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %31 = call i32 @mrb_define_method(%struct.TYPE_4__* %27, %struct.RClass* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @mrb_define_method(%struct.TYPE_4__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
