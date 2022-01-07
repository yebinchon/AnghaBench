; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lz/extr_lz_encoder.c_lz_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lz/extr_lz_encoder.c_lz_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64 (i32, %struct.TYPE_8__*, i32*, i64*, i64)*, i32 }

@LZMA_RUN = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* @lz_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lz_encode(%struct.TYPE_7__* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  br label %21

21:                                               ; preds = %89, %9
  %22 = load i64*, i64** %17, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %18, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i64*, i64** %14, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %19, align 8
  %33 = load i64, i64* @LZMA_RUN, align 8
  %34 = icmp ne i64 %32, %33
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i1 [ true, %26 ], [ %34, %31 ]
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi i1 [ false, %21 ], [ %36, %35 ]
  br i1 %38, label %39, label %90

39:                                               ; preds = %37
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LZMA_RUN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %50, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i64*, i64** %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %19, align 8
  %63 = call i32 @fill_window(%struct.TYPE_7__* %57, i32* %58, i32* %59, i64* %60, i64 %61, i64 %62)
  %64 = call i32 @return_if_error(i32 %63)
  br label %65

65:                                               ; preds = %56, %46, %39
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64 (i32, %struct.TYPE_8__*, i32*, i64*, i64)*, i64 (i32, %struct.TYPE_8__*, i32*, i64*, i64)** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %16, align 8
  %77 = load i64*, i64** %17, align 8
  %78 = load i64, i64* %18, align 8
  %79 = call i64 %69(i32 %73, %struct.TYPE_8__* %75, i32* %76, i64* %77, i64 %78)
  store i64 %79, i64* %20, align 8
  %80 = load i64, i64* %20, align 8
  %81 = load i64, i64* @LZMA_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %65
  %84 = load i64, i64* @LZMA_RUN, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load i64, i64* %20, align 8
  store i64 %88, i64* %10, align 8
  br label %92

89:                                               ; preds = %65
  br label %21

90:                                               ; preds = %37
  %91 = load i64, i64* @LZMA_OK, align 8
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %90, %83
  %93 = load i64, i64* %10, align 8
  ret i64 %93
}

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @fill_window(%struct.TYPE_7__*, i32*, i32*, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
