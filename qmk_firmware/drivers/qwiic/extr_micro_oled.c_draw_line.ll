; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/qwiic/extr_micro_oled.c_draw_line.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/qwiic/extr_micro_oled.c_draw_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_line(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = sub nsw i64 %18, %19
  %21 = call i64 @abs(i64 %20)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub nsw i64 %22, %23
  %25 = call i64 @abs(i64 %24)
  %26 = icmp sgt i64 %21, %25
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %6
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @swap(i64 %32, i64 %33)
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @swap(i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %31, %6
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @swap(i64 %43, i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @swap(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %42, %38
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub nsw i64 %50, %51
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i64 @abs(i64 %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %14, align 8
  %58 = sdiv i64 %57, 2
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  store i64 1, i64* %17, align 8
  br label %64

63:                                               ; preds = %49
  store i64 -1, i64* %17, align 8
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %98, %64
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %65
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @draw_pixel(i64 %73, i64 %74, i64 %75, i64 %76)
  br label %84

78:                                               ; preds = %69
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @draw_pixel(i64 %79, i64 %80, i64 %81, i64 %82)
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %16, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %16, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %16, align 8
  br label %97

97:                                               ; preds = %90, %84
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %7, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %7, align 8
  br label %65

101:                                              ; preds = %65
  ret void
}

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @swap(i64, i64) #1

declare dso_local i32 @draw_pixel(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
