; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4hc.c_LZ4HC_countPattern.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4hc.c_LZ4HC_countPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32)* @LZ4HC_countPattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4HC_countPattern(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64*, i64** %5, align 8
  store i64* %14, i64** %8, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %31, %3
  %17 = load i64*, i64** %5, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 -3
  %20 = icmp ult i64* %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %16
  %25 = load i64*, i64** %5, align 8
  %26 = call i32 @LZ4_read_ARCH(i64* %25)
  %27 = load i32, i32* %9, align 4
  %28 = xor i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 4
  store i64* %33, i64** %5, align 8
  br label %16

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @LZ4_NbCommonBytes(i32 %35)
  %37 = load i64*, i64** %5, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64* %39, i64** %5, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = ptrtoint i64* %40 to i64
  %43 = ptrtoint i64* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %99

47:                                               ; preds = %16
  %48 = call i64 (...) @LZ4_isLittleEndian()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %64, %50
  %53 = load i64*, i64** %5, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = icmp ult i64* %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i64*, i64** %5, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp eq i64 %58, %60
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i1 [ false, %52 ], [ %61, %56 ]
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = load i64*, i64** %5, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = ashr i32 %67, 8
  store i32 %68, i32* %11, align 4
  br label %52

69:                                               ; preds = %62
  br label %91

70:                                               ; preds = %47
  store i32 24, i32* %12, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i64*, i64** %5, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = icmp ult i64* %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = ashr i32 %76, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %13, align 8
  %80 = load i64*, i64** %5, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %90

85:                                               ; preds = %75
  %86 = load i64*, i64** %5, align 8
  %87 = getelementptr inbounds i64, i64* %86, i32 1
  store i64* %87, i64** %5, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %88, 8
  store i32 %89, i32* %12, align 4
  br label %71

90:                                               ; preds = %84, %71
  br label %91

91:                                               ; preds = %90, %69
  %92 = load i64*, i64** %5, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = ptrtoint i64* %92 to i64
  %95 = ptrtoint i64* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %91, %34
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @LZ4_read_ARCH(i64*) #1

declare dso_local i32 @LZ4_NbCommonBytes(i32) #1

declare dso_local i64 @LZ4_isLittleEndian(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
