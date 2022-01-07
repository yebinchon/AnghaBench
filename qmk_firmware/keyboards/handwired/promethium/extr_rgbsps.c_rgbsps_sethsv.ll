; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/extr_rgbsps.c_rgbsps_sethsv.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/extr_rgbsps.c_rgbsps_sethsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgbsps_sethsv(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %11, align 4
  br label %72

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 255, %21
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = ashr i32 %24, 8
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = srem i32 %29, 60
  %31 = mul nsw i32 %28, %30
  %32 = sdiv i32 %31, 60
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 60
  switch i32 %34, label %71 [
    i32 0, label %35
    i32 1, label %41
    i32 2, label %47
    i32 3, label %53
    i32 4, label %59
    i32 5, label %65
  ]

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %11, align 4
  br label %71

41:                                               ; preds = %20
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %11, align 4
  br label %71

47:                                               ; preds = %20
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %11, align 4
  br label %71

53:                                               ; preds = %20
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %11, align 4
  br label %71

59:                                               ; preds = %20
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %11, align 4
  br label %71

65:                                               ; preds = %20
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %20, %65, %59, %53, %47, %41, %35
  br label %72

72:                                               ; preds = %71, %16
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @rgbsps_set(i32 %73, i32 %74, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @rgbsps_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
