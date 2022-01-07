; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_utf.c_UTF8_Encoder_ToUnicode_Func.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_utf.c_UTF8_Encoder_ToUnicode_Func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_5__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @UTF8_Encoder_ToUnicode_Func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UTF8_Encoder_ToUnicode_Func(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %96 [
    i32 3, label %22
    i32 2, label %52
    i32 1, label %75
    i32 0, label %90
  ]

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 7
  %29 = shl i32 %28, 18
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 12
  %36 = add i32 %29, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 63
  %43 = shl i32 %42, 6
  %44 = add i32 %36, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 63
  %51 = add i32 %44, %50
  store i32 %51, i32* %7, align 4
  br label %97

52:                                               ; preds = %2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 15
  %59 = shl i32 %58, 12
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 63
  %66 = shl i32 %65, 6
  %67 = add i32 %59, %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 63
  %74 = add i32 %67, %73
  store i32 %74, i32* %7, align 4
  br label %97

75:                                               ; preds = %2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 31
  %82 = shl i32 %81, 6
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 63
  %89 = add i32 %82, %88
  store i32 %89, i32* %7, align 4
  br label %97

90:                                               ; preds = %2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %7, align 4
  br label %97

96:                                               ; preds = %2
  store i32 32, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %90, %75, %52, %22
  %98 = load i32, i32* %7, align 4
  %99 = icmp ugt i32 %98, 65535
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 32, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
