; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_tidbitmap.c_tbm_begin_iterate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_tidbitmap.c_tbm_begin_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32, i32, %struct.TYPE_10__**, %struct.TYPE_10__**, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@TBM_ITERATING_SHARED = common dso_local global i64 0, align 8
@MAX_TUPLES_PER_PAGE = common dso_local global i32 0, align 4
@TBM_HASH = common dso_local global i64 0, align 8
@TBM_NOT_ITERATING = common dso_local global i64 0, align 8
@tbm_comparator = common dso_local global i32 0, align 4
@TBM_ITERATING_PRIVATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @tbm_begin_iterate(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TBM_ITERATING_SHARED, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* @MAX_TUPLES_PER_PAGE, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 32, %17
  %19 = trunc i64 %18 to i32
  %20 = call i64 @palloc(i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %3, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TBM_HASH, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %160

36:                                               ; preds = %1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TBM_NOT_ITERATING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %160

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %44, align 8
  %46 = icmp ne %struct.TYPE_10__** %45, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call i64 @MemoryContextAlloc(i32 %55, i32 %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_10__**
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  store %struct.TYPE_10__** %63, %struct.TYPE_10__*** %65, align 8
  br label %66

66:                                               ; preds = %52, %47, %42
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %68, align 8
  %70 = icmp ne %struct.TYPE_10__** %69, null
  br i1 %70, label %90, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i64 @MemoryContextAlloc(i32 %79, i32 %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_10__**
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  store %struct.TYPE_10__** %87, %struct.TYPE_10__*** %89, align 8
  br label %90

90:                                               ; preds = %76, %71, %66
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @pagetable_start_iterate(i32 %93, i32* %4)
  br label %95

95:                                               ; preds = %124, %90
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.TYPE_10__* @pagetable_iterate(i32 %98, i32* %4)
  store %struct.TYPE_10__* %99, %struct.TYPE_10__** %5, align 8
  %100 = icmp ne %struct.TYPE_10__* %99, null
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %110, i64 %113
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %114, align 8
  br label %124

115:                                              ; preds = %101
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %119, i64 %122
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %123, align 8
  br label %124

124:                                              ; preds = %115, %106
  br label %95

125:                                              ; preds = %95
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %126, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @Assert(i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %133, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  %140 = load i32, i32* %6, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %149

142:                                              ; preds = %125
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @tbm_comparator, align 4
  %148 = call i32 @qsort(%struct.TYPE_10__** %145, i32 %146, i32 8, i32 %147)
  br label %149

149:                                              ; preds = %142, %125
  %150 = load i32, i32* %7, align 4
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @tbm_comparator, align 4
  %158 = call i32 @qsort(%struct.TYPE_10__** %155, i32 %156, i32 8, i32 %157)
  br label %159

159:                                              ; preds = %152, %149
  br label %160

160:                                              ; preds = %159, %36, %1
  %161 = load i64, i64* @TBM_ITERATING_PRIVATE, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %164
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @pagetable_start_iterate(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @pagetable_iterate(i32, i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_10__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
