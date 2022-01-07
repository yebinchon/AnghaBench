; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_add_pi.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_add_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__** }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32**, i32*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32, i32)* @add_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @add_pi(i32** %0, i32* %1, %struct.TYPE_18__* %2, %struct.TYPE_17__* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @needs_pi(i32* %17, %struct.TYPE_18__* %18, %struct.TYPE_17__* %19, i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  br label %161

26:                                               ; preds = %7
  %27 = load i32**, i32*** %9, align 8
  %28 = call i32 @ZEND_MM_ALIGNED_SIZE(i32 40)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ZEND_MM_ALIGNED_SIZE(i32 %40)
  %42 = add nsw i32 %28, %41
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 8, %53
  %55 = add i64 %43, %54
  %56 = trunc i64 %55 to i32
  %57 = call %struct.TYPE_16__* @zend_arena_calloc(i32** %27, i32 1, i32 %56)
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %16, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %59 = bitcast %struct.TYPE_16__* %58 to i8*
  %60 = call i32 @ZEND_MM_ALIGNED_SIZE(i32 40)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(i32* %68, i32 255, i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 4, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @ZEND_MM_ALIGNED_SIZE(i32 %97)
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %85, i64 %99
  %101 = bitcast i8* %100 to %struct.TYPE_16__**
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 5
  store %struct.TYPE_16__** %101, %struct.TYPE_16__*** %103, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  store i32 -1, i32* %111, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 4
  store %struct.TYPE_16__* %119, %struct.TYPE_16__** %121, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  store %struct.TYPE_16__* %122, %struct.TYPE_16__** %129, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @DFG_SET(i32 %132, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %159

149:                                              ; preds = %26
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @DFG_SET(i32 %152, i32 %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %149, %26
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %160, %struct.TYPE_16__** %8, align 8
  br label %161

161:                                              ; preds = %159, %25
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  ret %struct.TYPE_16__* %162
}

declare dso_local i32 @needs_pi(i32*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @zend_arena_calloc(i32**, i32, i32) #1

declare dso_local i32 @ZEND_MM_ALIGNED_SIZE(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @DFG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
