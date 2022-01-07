; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/delta/extr_delta_encoder.c_delta_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/delta/extr_delta_encoder.c_delta_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* }

@LZMA_RUN = common dso_local global i64 0, align 8
@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* @delta_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_encode(%struct.TYPE_7__* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)** %26, align 8
  %28 = icmp eq i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* %27, null
  br i1 %28, label %29, label %74

29:                                               ; preds = %9
  %30 = load i64, i64* %14, align 8
  %31 = load i64*, i64** %13, align 8
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %30, %32
  store i64 %33, i64* %20, align 8
  %34 = load i64, i64* %17, align 8
  %35 = load i64*, i64** %16, align 8
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %34, %36
  store i64 %37, i64* %21, align 8
  %38 = load i64, i64* %20, align 8
  %39 = load i64, i64* %21, align 8
  %40 = call i64 @my_min(i64 %38, i64 %39)
  store i64 %40, i64* %22, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i64*, i64** %13, align 8
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32*, i32** %15, align 8
  %47 = load i64*, i64** %16, align 8
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i64, i64* %22, align 8
  %51 = call i32 @copy_and_encode(%struct.TYPE_7__* %41, i32* %45, i32* %49, i64 %50)
  %52 = load i64, i64* %22, align 8
  %53 = load i64*, i64** %13, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* %22, align 8
  %57 = load i64*, i64** %16, align 8
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %56
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* @LZMA_RUN, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %29
  %64 = load i64*, i64** %13, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @LZMA_STREAM_END, align 4
  br label %72

70:                                               ; preds = %63, %29
  %71 = load i32, i32* @LZMA_OK, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %19, align 4
  br label %103

74:                                               ; preds = %9
  %75 = load i64*, i64** %16, align 8
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %23, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)** %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i64*, i64** %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = load i64*, i64** %16, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %18, align 8
  %93 = call i32 %80(i32 %84, i32* %85, i32* %86, i64* %87, i64 %88, i32* %89, i64* %90, i64 %91, i64 %92)
  store i32 %93, i32* %19, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i64, i64* %23, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i64*, i64** %16, align 8
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %23, align 8
  %101 = sub i64 %99, %100
  %102 = call i32 @encode_in_place(%struct.TYPE_7__* %94, i32* %97, i64 %101)
  br label %103

103:                                              ; preds = %74, %72
  %104 = load i32, i32* %19, align 4
  ret i32 %104
}

declare dso_local i64 @my_min(i64, i64) #1

declare dso_local i32 @copy_and_encode(%struct.TYPE_7__*, i32*, i32*, i64) #1

declare dso_local i32 @encode_in_place(%struct.TYPE_7__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
