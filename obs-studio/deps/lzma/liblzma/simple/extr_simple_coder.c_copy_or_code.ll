; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/simple/extr_simple_coder.c_copy_or_code.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/simple/extr_simple_coder.c_copy_or_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)*, i32 }

@LZMA_FINISH = common dso_local global i64 0, align 8
@LZMA_STREAM_END = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* @copy_or_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_or_code(%struct.TYPE_5__* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)*, i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)** %30, align 8
  %32 = icmp eq i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %9
  %34 = load i32*, i32** %13, align 8
  %35 = load i64*, i64** %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i64*, i64** %17, align 8
  %39 = load i64, i64* %18, align 8
  %40 = call i32 @lzma_bufcpy(i32* %34, i64* %35, i64 %36, i32* %37, i64* %38, i64 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %33
  %46 = load i64, i64* %19, align 8
  %47 = load i64, i64* @LZMA_FINISH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i64*, i64** %14, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %15, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %49, %45, %33
  br label %102

58:                                               ; preds = %9
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)*, i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)** %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i64*, i64** %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load i64*, i64** %17, align 8
  %73 = load i64, i64* %18, align 8
  %74 = load i64, i64* %19, align 8
  %75 = call i64 %62(i32 %66, i32* %67, i32* %68, i64* %69, i64 %70, i32* %71, i64* %72, i64 %73, i64 %74)
  store i64 %75, i64* %20, align 8
  %76 = load i64, i64* %20, align 8
  %77 = load i64, i64* @LZMA_STREAM_END, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %58
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* @LZMA_FINISH, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i1 [ true, %79 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %101

94:                                               ; preds = %58
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* @LZMA_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* %20, align 8
  store i64 %99, i64* %10, align 8
  br label %104

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %88
  br label %102

102:                                              ; preds = %101, %57
  %103 = load i64, i64* @LZMA_OK, align 8
  store i64 %103, i64* %10, align 8
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i64, i64* %10, align 8
  ret i64 %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lzma_bufcpy(i32*, i64*, i64, i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
