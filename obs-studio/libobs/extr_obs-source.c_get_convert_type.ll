; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_get_convert_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_get_convert_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONVERT_420 = common dso_local global i32 0, align 4
@CONVERT_NV12 = common dso_local global i32 0, align 4
@CONVERT_444 = common dso_local global i32 0, align 4
@CONVERT_422 = common dso_local global i32 0, align 4
@CONVERT_422_PACK = common dso_local global i32 0, align 4
@CONVERT_800 = common dso_local global i32 0, align 4
@CONVERT_NONE = common dso_local global i32 0, align 4
@CONVERT_RGB_LIMITED = common dso_local global i32 0, align 4
@CONVERT_BGR3 = common dso_local global i32 0, align 4
@CONVERT_420_A = common dso_local global i32 0, align 4
@CONVERT_422_A = common dso_local global i32 0, align 4
@CONVERT_444_A = common dso_local global i32 0, align 4
@CONVERT_444_A_PACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_convert_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_convert_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %38 [
    i32 139, label %7
    i32 134, label %9
    i32 136, label %11
    i32 138, label %13
    i32 128, label %15
    i32 129, label %15
    i32 132, label %15
    i32 131, label %17
    i32 135, label %19
    i32 133, label %19
    i32 142, label %19
    i32 141, label %19
    i32 143, label %28
    i32 140, label %30
    i32 137, label %32
    i32 130, label %34
    i32 144, label %36
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @CONVERT_420, align 4
  store i32 %8, i32* %3, align 4
  br label %40

9:                                                ; preds = %2
  %10 = load i32, i32* @CONVERT_NV12, align 4
  store i32 %10, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  %12 = load i32, i32* @CONVERT_444, align 4
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* @CONVERT_422, align 4
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2, %2, %2
  %16 = load i32, i32* @CONVERT_422_PACK, align 4
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load i32, i32* @CONVERT_800, align 4
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %2, %2, %2, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @CONVERT_NONE, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @CONVERT_RGB_LIMITED, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* @CONVERT_BGR3, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load i32, i32* @CONVERT_420_A, align 4
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %2
  %33 = load i32, i32* @CONVERT_422_A, align 4
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %2
  %35 = load i32, i32* @CONVERT_444_A, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* @CONVERT_444_A_PACK, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @CONVERT_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %17, %15, %13, %11, %9, %7
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
