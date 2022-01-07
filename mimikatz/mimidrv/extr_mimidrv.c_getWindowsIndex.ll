; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_mimidrv.c_getWindowsIndex.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_mimidrv.c_getWindowsIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NtBuildNumber = common dso_local global i32* null, align 8
@KiwiOsIndex_10_1903 = common dso_local global i32 0, align 4
@KiwiOsIndex_XP = common dso_local global i32 0, align 4
@KiwiOsIndex_2K3 = common dso_local global i32 0, align 4
@KiwiOsIndex_VISTA = common dso_local global i32 0, align 4
@KiwiOsIndex_7 = common dso_local global i32 0, align 4
@KiwiOsIndex_8 = common dso_local global i32 0, align 4
@KiwiOsIndex_BLUE = common dso_local global i32 0, align 4
@KiwiOsIndex_10_1507 = common dso_local global i32 0, align 4
@KiwiOsIndex_10_1511 = common dso_local global i32 0, align 4
@KiwiOsIndex_10_1607 = common dso_local global i32 0, align 4
@KiwiOsIndex_10_1703 = common dso_local global i32 0, align 4
@KiwiOsIndex_10_1709 = common dso_local global i32 0, align 4
@KiwiOsIndex_10_1803 = common dso_local global i32 0, align 4
@KiwiOsIndex_10_1809 = common dso_local global i32 0, align 4
@KiwiOsIndex_UNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getWindowsIndex() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @NtBuildNumber, align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 18362
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @KiwiOsIndex_10_1903, align 4
  store i32 %6, i32* %1, align 4
  br label %40

7:                                                ; preds = %0
  %8 = load i32*, i32** @NtBuildNumber, align 8
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %38 [
    i32 2600, label %10
    i32 3790, label %12
    i32 6000, label %14
    i32 6001, label %14
    i32 6002, label %14
    i32 7600, label %16
    i32 7601, label %16
    i32 8102, label %18
    i32 8250, label %18
    i32 9200, label %18
    i32 9431, label %20
    i32 9600, label %20
    i32 10240, label %22
    i32 10586, label %24
    i32 14393, label %26
    i32 15063, label %28
    i32 16299, label %30
    i32 17134, label %32
    i32 17763, label %34
    i32 18362, label %36
  ]

10:                                               ; preds = %7
  %11 = load i32, i32* @KiwiOsIndex_XP, align 4
  store i32 %11, i32* %1, align 4
  br label %40

12:                                               ; preds = %7
  %13 = load i32, i32* @KiwiOsIndex_2K3, align 4
  store i32 %13, i32* %1, align 4
  br label %40

14:                                               ; preds = %7, %7, %7
  %15 = load i32, i32* @KiwiOsIndex_VISTA, align 4
  store i32 %15, i32* %1, align 4
  br label %40

16:                                               ; preds = %7, %7
  %17 = load i32, i32* @KiwiOsIndex_7, align 4
  store i32 %17, i32* %1, align 4
  br label %40

18:                                               ; preds = %7, %7, %7
  %19 = load i32, i32* @KiwiOsIndex_8, align 4
  store i32 %19, i32* %1, align 4
  br label %40

20:                                               ; preds = %7, %7
  %21 = load i32, i32* @KiwiOsIndex_BLUE, align 4
  store i32 %21, i32* %1, align 4
  br label %40

22:                                               ; preds = %7
  %23 = load i32, i32* @KiwiOsIndex_10_1507, align 4
  store i32 %23, i32* %1, align 4
  br label %40

24:                                               ; preds = %7
  %25 = load i32, i32* @KiwiOsIndex_10_1511, align 4
  store i32 %25, i32* %1, align 4
  br label %40

26:                                               ; preds = %7
  %27 = load i32, i32* @KiwiOsIndex_10_1607, align 4
  store i32 %27, i32* %1, align 4
  br label %40

28:                                               ; preds = %7
  %29 = load i32, i32* @KiwiOsIndex_10_1703, align 4
  store i32 %29, i32* %1, align 4
  br label %40

30:                                               ; preds = %7
  %31 = load i32, i32* @KiwiOsIndex_10_1709, align 4
  store i32 %31, i32* %1, align 4
  br label %40

32:                                               ; preds = %7
  %33 = load i32, i32* @KiwiOsIndex_10_1803, align 4
  store i32 %33, i32* %1, align 4
  br label %40

34:                                               ; preds = %7
  %35 = load i32, i32* @KiwiOsIndex_10_1809, align 4
  store i32 %35, i32* %1, align 4
  br label %40

36:                                               ; preds = %7
  %37 = load i32, i32* @KiwiOsIndex_10_1903, align 4
  store i32 %37, i32* %1, align 4
  br label %40

38:                                               ; preds = %7
  %39 = load i32, i32* @KiwiOsIndex_UNK, align 4
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %5
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
