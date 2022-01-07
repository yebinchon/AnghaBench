; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_RGBtoHSL.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_RGBtoHSL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32)* @CC_RGBtoHSL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CC_RGBtoHSL(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
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
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @GetRValue(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @GetGValue(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @GetBValue(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @max(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @max(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @min(i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i8, i8* %3, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %127 [
    i32 76, label %40
    i32 83, label %45
    i32 72, label %72
  ]

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, 120
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %43, 255
  store i32 %44, i32* %9, align 4
  br label %127

45:                                               ; preds = %2
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %71

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49
  store i32 240, i32* %9, align 4
  br label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %57, 240
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 255
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 510, %62
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i32 [ %63, %61 ], [ %65, %64 ]
  %68 = load i32, i32* %9, align 4
  %69 = sdiv i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %55
  br label %71

71:                                               ; preds = %70, %48
  br label %127

72:                                               ; preds = %2
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 160, i32* %9, align 4
  br label %126

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %81, %82
  %84 = mul nsw i32 40, %83
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sdiv i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 240
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %80
  br label %124

94:                                               ; preds = %76
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %99, %100
  %102 = mul nsw i32 40, %101
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sdiv i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 80
  store i32 %107, i32* %10, align 4
  br label %123

108:                                              ; preds = %94
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %113, %114
  %116 = mul nsw i32 40, %115
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %10, align 4
  %119 = sdiv i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 160
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %112, %108
  br label %123

123:                                              ; preds = %122, %98
  br label %124

124:                                              ; preds = %123, %93
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %75
  br label %127

127:                                              ; preds = %2, %126, %71, %40
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @GetRValue(i32) #1

declare dso_local i32 @GetGValue(i32) #1

declare dso_local i32 @GetBValue(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
