; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_video.c_VideoFadeOut.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_video.c_VideoFadeOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGB_MAX = common dso_local global i64 0, align 8
@RGB_MAX_PER_ITERATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VideoFadeOut(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %55, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @RGB_MAX, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %9
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @RGB_MAX_PER_ITERATION, align 8
  %21 = srem i64 %19, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @MachVideoSync()
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @MachVideoGetPaletteColor(i64 %26, i64* %6, i64* %7, i64* %8)
  %28 = load i64, i64* %6, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i64, i64* %7, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %8, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @MachVideoSetPaletteColor(i64 %46, i64 %47, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %14

54:                                               ; preds = %14
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %4, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %9

58:                                               ; preds = %9
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @MachVideoSync(...) #1

declare dso_local i32 @MachVideoGetPaletteColor(i64, i64*, i64*, i64*) #1

declare dso_local i32 @MachVideoSetPaletteColor(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
