; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_swab.c_TIFFReverseBits.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_swab.c_TIFFReverseBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIFFBitRevTable = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIFFReverseBits(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %75, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 8
  br i1 %7, label %8, label %78

8:                                                ; preds = %5
  %9 = load i64*, i64** @TIFFBitRevTable, align 8
  %10 = load i64*, i64** %3, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %9, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %14, i64* %16, align 8
  %17 = load i64*, i64** @TIFFBitRevTable, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 %22, i64* %24, align 8
  %25 = load i64*, i64** @TIFFBitRevTable, align 8
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  store i64 %30, i64* %32, align 8
  %33 = load i64*, i64** @TIFFBitRevTable, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 3
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  store i64 %38, i64* %40, align 8
  %41 = load i64*, i64** @TIFFBitRevTable, align 8
  %42 = load i64*, i64** %3, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 4
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 4
  store i64 %46, i64* %48, align 8
  %49 = load i64*, i64** @TIFFBitRevTable, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 5
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %3, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 5
  store i64 %54, i64* %56, align 8
  %57 = load i64*, i64** @TIFFBitRevTable, align 8
  %58 = load i64*, i64** %3, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 6
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %3, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 6
  store i64 %62, i64* %64, align 8
  %65 = load i64*, i64** @TIFFBitRevTable, align 8
  %66 = load i64*, i64** %3, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 7
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %3, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 7
  store i64 %70, i64* %72, align 8
  %73 = load i64*, i64** %3, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 8
  store i64* %74, i64** %3, align 8
  br label %75

75:                                               ; preds = %8
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %76, 8
  store i32 %77, i32* %4, align 4
  br label %5

78:                                               ; preds = %5
  br label %79

79:                                               ; preds = %83, %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %4, align 4
  %82 = icmp sgt i32 %80, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i64*, i64** @TIFFBitRevTable, align 8
  %85 = load i64*, i64** %3, align 8
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %3, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64*, i64** %3, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %3, align 8
  br label %79

92:                                               ; preds = %79
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
