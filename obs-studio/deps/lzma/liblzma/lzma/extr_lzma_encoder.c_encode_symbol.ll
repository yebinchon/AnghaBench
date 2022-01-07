; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_encode_symbol.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_encode_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32*, i32, i32** }
%struct.TYPE_9__ = type { i64 }

@UINT32_MAX = common dso_local global i64 0, align 8
@REP_DISTANCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i64, i64, i64)* @encode_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_symbol(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = and i64 %12, %15
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @UINT32_MAX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %5
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @rc_bit(i32* %26, i32* %36, i32 0)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @literal(%struct.TYPE_10__* %38, %struct.TYPE_9__* %39, i64 %40)
  br label %94

42:                                               ; preds = %5
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load i32**, i32*** %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = call i32 @rc_bit(i32* %44, i32* %54, i32 1)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @REP_DISTANCES, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %42
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = call i32 @rc_bit(i32* %61, i32* %68, i32 1)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @rep_match(%struct.TYPE_10__* %70, i64 %71, i64 %72, i64 %73)
  br label %93

75:                                               ; preds = %42
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = call i32 @rc_bit(i32* %77, i32* %84, i32 0)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @REP_DISTANCES, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @match(%struct.TYPE_10__* %86, i64 %87, i64 %90, i64 %91)
  br label %93

93:                                               ; preds = %75, %59
  br label %94

94:                                               ; preds = %93, %20
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = icmp sge i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rc_bit(i32*, i32*, i32) #1

declare dso_local i32 @literal(%struct.TYPE_10__*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @rep_match(%struct.TYPE_10__*, i64, i64, i64) #1

declare dso_local i32 @match(%struct.TYPE_10__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
