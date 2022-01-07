; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_intset_flush_buffered_values.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_intset_flush_buffered_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i32, i32**, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32 }

@MAX_VALUES_PER_LEAF_ITEM = common dso_local global i32 0, align 4
@MAX_LEAF_ITEMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @intset_flush_buffered_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intset_flush_buffered_values(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = icmp eq %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = call %struct.TYPE_9__* @intset_new_leaf_node(%struct.TYPE_10__* %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %6, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = bitcast %struct.TYPE_9__* %27 to i32*
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = bitcast %struct.TYPE_9__* %34 to i32*
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  store i32* %35, i32** %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %24, %1
  br label %43

43:                                               ; preds = %89, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* @MAX_VALUES_PER_LEAF_ITEM, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %43
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @simple8b_encode(i32* %60, i32* %8, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MAX_LEAF_ITEMS, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %49
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %9, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = call %struct.TYPE_9__* @intset_new_leaf_node(%struct.TYPE_10__* %72)
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %6, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = bitcast %struct.TYPE_9__* %77 to i32*
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  store i32* %78, i32** %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = bitcast %struct.TYPE_9__* %84 to i32*
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @intset_update_upper(%struct.TYPE_10__* %83, i32 1, i32* %85, i32 %87)
  br label %89

89:                                               ; preds = %70, %49
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %95
  %98 = bitcast %struct.TYPE_8__* %97 to i8*
  %99 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 8, i1 false)
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 1, %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %5, align 4
  br label %43

104:                                              ; preds = %43
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %104
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memmove(i32* %114, i32* %120, i32 %128)
  br label %130

130:                                              ; preds = %110, %104
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  ret void
}

declare dso_local %struct.TYPE_9__* @intset_new_leaf_node(%struct.TYPE_10__*) #1

declare dso_local i32 @simple8b_encode(i32*, i32*, i32) #1

declare dso_local i32 @intset_update_upper(%struct.TYPE_10__*, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
