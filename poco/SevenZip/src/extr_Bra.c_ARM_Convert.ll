; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_Bra.c_ARM_Convert.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_Bra.c_ARM_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ARM_Convert(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 8
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %96, %16
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %99

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 235
  br i1 %32, label %33, label %95

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %40, %47
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 0
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %48, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = shl i32 %56, 2
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %33
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %11, align 4
  br label %72

66:                                               ; preds = %33
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %68, %69
  %71 = sub nsw i32 %67, %70
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i32, i32* %11, align 4
  %74 = ashr i32 %73, 2
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = ashr i32 %75, 16
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %82, 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 0
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  br label %95

95:                                               ; preds = %72, %25
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 4
  store i32 %98, i32* %10, align 4
  br label %21

99:                                               ; preds = %21
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %15
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
