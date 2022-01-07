; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_bd_flush.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_bd_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 (%struct.TYPE_15__*, i64, i32, i32, i32)*, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }

@LFS2_BLOCK_NULL = common dso_local global i64 0, align 8
@LFS2_BLOCK_INLINE = common dso_local global i64 0, align 8
@LFS2_CMP_EQ = common dso_local global i32 0, align 4
@LFS2_ERR_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32)* @lfs2_bd_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_bd_flush(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LFS2_BLOCK_NULL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %108

18:                                               ; preds = %4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LFS2_BLOCK_INLINE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %108

24:                                               ; preds = %18
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %27, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @LFS2_ASSERT(i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lfs2_alignup(i32 %38, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_15__*, i64, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i64, i32, i32, i32)** %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 %49(%struct.TYPE_15__* %52, i64 %55, i32 %58, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sle i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @LFS2_ASSERT(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %24
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %109

72:                                               ; preds = %24
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %72
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = call i32 @lfs2_cache_drop(%struct.TYPE_13__* %76, %struct.TYPE_14__* %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @lfs2_bd_cmp(%struct.TYPE_13__* %79, i32* null, %struct.TYPE_14__* %80, i32 %81, i64 %84, i32 %87, i32 %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %75
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %109

97:                                               ; preds = %75
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @LFS2_CMP_EQ, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @LFS2_ERR_CORRUPT, align 4
  store i32 %102, i32* %5, align 4
  br label %109

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %72
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = call i32 @lfs2_cache_zero(%struct.TYPE_13__* %105, %struct.TYPE_14__* %106)
  br label %108

108:                                              ; preds = %104, %18, %4
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %101, %95, %70
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @LFS2_ASSERT(i32) #1

declare dso_local i32 @lfs2_alignup(i32, i32) #1

declare dso_local i32 @lfs2_cache_drop(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @lfs2_bd_cmp(%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @lfs2_cache_zero(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
