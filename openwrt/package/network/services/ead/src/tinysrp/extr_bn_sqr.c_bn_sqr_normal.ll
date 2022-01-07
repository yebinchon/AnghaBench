; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_sqr.c_bn_sqr_normal.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_sqr.c_bn_sqr_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bn_sqr_normal(i64* %0, i64* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %11, align 4
  %16 = load i64*, i64** %6, align 8
  store i64* %16, i64** %12, align 8
  %17 = load i64*, i64** %5, align 8
  store i64* %17, i64** %13, align 8
  %18 = load i64*, i64** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %13, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %13, align 8
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %4
  %32 = load i64*, i64** %12, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %12, align 8
  %34 = load i64*, i64** %13, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i64*, i64** %12, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 -1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @bn_mul_words(i64* %34, i64* %35, i32 %36, i64 %39)
  %41 = load i64*, i64** %13, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 %40, i64* %44, align 8
  %45 = load i64*, i64** %13, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  store i64* %46, i64** %13, align 8
  br label %47

47:                                               ; preds = %31, %4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 2
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %71, %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %10, align 4
  %56 = load i64*, i64** %12, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %12, align 8
  %58 = load i64*, i64** %13, align 8
  %59 = load i64*, i64** %12, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i64*, i64** %12, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 -1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @bn_mul_add_words(i64* %58, i64* %59, i32 %60, i64 %63)
  %65 = load i64*, i64** %13, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %64, i64* %68, align 8
  %69 = load i64*, i64** %13, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 2
  store i64* %70, i64** %13, align 8
  br label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %9, align 4
  br label %50

74:                                               ; preds = %50
  %75 = load i64*, i64** %5, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = load i64*, i64** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @bn_add_words(i64* %75, i64* %76, i64* %77, i32 %78)
  %80 = load i64*, i64** %8, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @bn_sqr_words(i64* %80, i64* %81, i32 %82)
  %84 = load i64*, i64** %5, align 8
  %85 = load i64*, i64** %5, align 8
  %86 = load i64*, i64** %8, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @bn_add_words(i64* %84, i64* %85, i64* %86, i32 %87)
  ret void
}

declare dso_local i64 @bn_mul_words(i64*, i64*, i32, i64) #1

declare dso_local i64 @bn_mul_add_words(i64*, i64*, i32, i64) #1

declare dso_local i32 @bn_add_words(i64*, i64*, i64*, i32) #1

declare dso_local i32 @bn_sqr_words(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
