; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma2_encoder.c_lzma2_header_lzma.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma2_encoder.c_lzma2_header_lzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32, i64, i32 }

@LZMA2_UNCOMPRESSED_MAX = common dso_local global i32 0, align 4
@LZMA2_CHUNK_MAX = common dso_local global i32 0, align 4
@LZMA2_HEADER_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @lzma2_header_lzma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma2_header_lzma(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LZMA2_UNCOMPRESSED_MAX, align 4
  %15 = icmp sle i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LZMA2_CHUNK_MAX, align 4
  %28 = icmp sle i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 224, i32* %45, align 4
  br label %52

46:                                               ; preds = %35
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 192, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %40
  br label %71

53:                                               ; preds = %1
  store i64 1, i64* %3, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 160, i32* %63, align 4
  br label %70

64:                                               ; preds = %53
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 128, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i64, i64* %3, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = lshr i64 %80, 16
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %3, align 8
  %87 = getelementptr inbounds i32, i32* %84, i64 %85
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, %81
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load i64, i64* %4, align 8
  %93 = lshr i64 %92, 8
  %94 = and i64 %93, 255
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %3, align 8
  %101 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %95, i32* %101, align 4
  %102 = load i64, i64* %4, align 8
  %103 = and i64 %102, 255
  %104 = trunc i64 %103 to i32
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %3, align 8
  %110 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %104, i32* %110, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = lshr i64 %116, 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %3, align 8
  %124 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 %118, i32* %124, align 4
  %125 = load i64, i64* %4, align 8
  %126 = and i64 %125, 255
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %3, align 8
  %133 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %127, i32* %133, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %71
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 7
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %3, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = bitcast i32* %145 to i64*
  %147 = call i32 @lzma_lzma_lclppb_encode(i32* %140, i64* %146)
  br label %148

148:                                              ; preds = %138, %71
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  store i32 0, i32* %150, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 5
  store i32 0, i32* %152, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  store i32 0, i32* %154, align 4
  %155 = load i64, i64* @LZMA2_HEADER_MAX, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %155
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lzma_lzma_lclppb_encode(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
