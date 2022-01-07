; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mul.c_bn_mul_normal.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mul.c_bn_mul_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bn_mul_normal(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %9, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %13, align 8
  store i32* %23, i32** %9, align 8
  br label %24

24:                                               ; preds = %17, %5
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @bn_mul_words(i32* %32, i32* %33, i32 %34, i32 0)
  br label %114

36:                                               ; preds = %24
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bn_mul_words(i32* %37, i32* %38, i32 %39, i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %97, %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %10, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %114

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bn_mul_add_words(i32* %54, i32* %55, i32 %56, i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %114

67:                                               ; preds = %52
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bn_mul_add_words(i32* %69, i32* %70, i32 %71, i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %10, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %114

82:                                               ; preds = %67
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bn_mul_add_words(i32* %84, i32* %85, i32 %86, i32 %89)
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %114

97:                                               ; preds = %82
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bn_mul_add_words(i32* %99, i32* %100, i32 %101, i32 %104)
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %11, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32* %111, i32** %6, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  store i32* %113, i32** %9, align 8
  br label %47

114:                                              ; preds = %96, %81, %66, %51, %31
  ret void
}

declare dso_local i32 @bn_mul_words(i32*, i32*, i32, i32) #1

declare dso_local i32 @bn_mul_add_words(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
