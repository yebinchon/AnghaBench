; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_range.c_range_initialize_copy.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_range.c_range_initialize_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RRange = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"wrong argument class\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @range_initialize_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_initialize_copy(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.RRange*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @mrb_get_args(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @mrb_obj_equal(i32* %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mrb_obj_class(i32* %20, i32 %21)
  %23 = call i32 @mrb_obj_is_instance_of(i32* %18, i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @E_TYPE_ERROR, align 4
  %28 = call i32 @mrb_raise(i32* %26, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.RRange* @mrb_range_ptr(i32* %30, i32 %31)
  store %struct.RRange* %32, %struct.RRange** %7, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mrb_range_raw_ptr(i32 %34)
  %36 = load %struct.RRange*, %struct.RRange** %7, align 8
  %37 = call i32 @RANGE_BEG(%struct.RRange* %36)
  %38 = load %struct.RRange*, %struct.RRange** %7, align 8
  %39 = call i32 @RANGE_END(%struct.RRange* %38)
  %40 = load %struct.RRange*, %struct.RRange** %7, align 8
  %41 = call i32 @RANGE_EXCL(%struct.RRange* %40)
  %42 = call i32 @range_ptr_replace(i32* %33, i32 %35, i32 %37, i32 %39, i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %29, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_obj_equal(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_is_instance_of(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local %struct.RRange* @mrb_range_ptr(i32*, i32) #1

declare dso_local i32 @range_ptr_replace(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_range_raw_ptr(i32) #1

declare dso_local i32 @RANGE_BEG(%struct.RRange*) #1

declare dso_local i32 @RANGE_END(%struct.RRange*) #1

declare dso_local i32 @RANGE_EXCL(%struct.RRange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
