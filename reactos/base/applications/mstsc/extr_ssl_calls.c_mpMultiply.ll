; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpMultiply.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpMultiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*, i32)* @mpMultiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpMultiply(i64* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %14, align 4
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %27, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %13, align 4
  %20 = mul i32 2, %19
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %17

30:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %127, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %130

35:                                               ; preds = %31
  %36 = load i64*, i64** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i64*, i64** %5, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %43, i64 %47
  store i64 0, i64* %48, align 8
  br label %126

49:                                               ; preds = %35
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %115, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %118

54:                                               ; preds = %50
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %56 = load i64*, i64** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @spMultiply(i64* %55, i64 %60, i64 %65)
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %69 = load i64, i64* %68, align 16
  %70 = add nsw i64 %69, %67
  store i64 %70, i64* %68, align 16
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %72 = load i64, i64* %71, align 16
  %73 = load i64, i64* %9, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %54
  %76 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %75, %54
  %80 = load i64*, i64** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %80, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %88 = load i64, i64* %87, align 16
  %89 = add nsw i64 %88, %86
  store i64 %89, i64* %87, align 16
  %90 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %91 = load i64, i64* %90, align 16
  %92 = load i64*, i64** %5, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %92, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %91, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %79
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %100, %79
  %105 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %106 = load i64, i64* %105, align 16
  %107 = load i64*, i64** %5, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  store i64 %106, i64* %112, align 8
  %113 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %9, align 8
  br label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %50

118:                                              ; preds = %50
  %119 = load i64, i64* %9, align 8
  %120 = load i64*, i64** %5, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  %123 = add i32 %121, %122
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %120, i64 %124
  store i64 %119, i64* %125, align 8
  br label %126

126:                                              ; preds = %118, %42
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %31

130:                                              ; preds = %31
  ret i32 0
}

declare dso_local i32 @spMultiply(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
