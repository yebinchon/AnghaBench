; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_index.c_index_dup_stream.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_index.c_index_dup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_17__, i32, i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i64, i64 }

@PREALLOC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_14__*, i32*)* @index_dup_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @index_dup_stream(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PREALLOC_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %149

16:                                               ; preds = %2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.TYPE_14__* @index_stream_init(i32 %20, i32 %24, i32 %27, i32 %30, i32* %31)
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %6, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = icmp eq %struct.TYPE_14__* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %16
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %16
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %3, align 8
  br label %149

43:                                               ; preds = %35
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = add i64 40, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %5, align 8
  %72 = call %struct.TYPE_15__* @lzma_alloc(i32 %70, i32* %71)
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %7, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = icmp eq %struct.TYPE_15__* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %43
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @index_stream_end(%struct.TYPE_14__* %76, i32* %77)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %149

79:                                               ; preds = %43
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %104

104:                                              ; preds = %131, %79
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %107, %108
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memcpy(i64 %109, i64 %112, i32 %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %9, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = call %struct.TYPE_15__* @index_tree_next(%struct.TYPE_16__* %129)
  store %struct.TYPE_15__* %130, %struct.TYPE_15__** %8, align 8
  br label %131

131:                                              ; preds = %104
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %133 = icmp ne %struct.TYPE_15__* %132, null
  br i1 %133, label %104, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* %9, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp eq i64 %135, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = call i32 @index_tree_append(%struct.TYPE_17__* %144, %struct.TYPE_16__* %146)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %148, %struct.TYPE_14__** %3, align 8
  br label %149

149:                                              ; preds = %134, %75, %41, %15
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %150
}

declare dso_local %struct.TYPE_14__* @index_stream_init(i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @lzma_alloc(i32, i32*) #1

declare dso_local i32 @index_stream_end(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local %struct.TYPE_15__* @index_tree_next(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @index_tree_append(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
