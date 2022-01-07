; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_color_utils.c_grb2hsv.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_color_utils.c_grb2hsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grb2hsv(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @min3(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @max3(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %74

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  %37 = mul nsw i32 %36, 60
  %38 = load i32, i32* %9, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %13, align 4
  br label %61

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %45, %46
  %48 = mul nsw i32 %47, 60
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %48, %49
  %51 = add nsw i32 %50, 120
  store i32 %51, i32* %13, align 4
  br label %60

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %53, %54
  %56 = mul nsw i32 %55, 60
  %57 = load i32, i32* %9, align 4
  %58 = sdiv i32 %56, %57
  %59 = add nsw i32 %58, 240
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %52, %44
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 360
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 256, %69
  %71 = sub nsw i32 %70, 8
  %72 = load i32, i32* %8, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %67, %28
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %77, %79
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  ret i32 %83
}

declare dso_local i32 @min3(i32, i32, i32) #1

declare dso_local i32 @max3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
