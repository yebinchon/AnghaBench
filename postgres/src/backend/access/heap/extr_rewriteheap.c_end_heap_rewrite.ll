; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_end_heap_rewrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_end_heap_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_16__*, i64, i32, i64, i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@MAIN_FORKNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_heap_rewrite(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @hash_seq_init(i32* %3, i32 %7)
  br label %9

9:                                                ; preds = %12, %1
  %10 = call %struct.TYPE_13__* @hash_seq_search(i32* %3)
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %4, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = call i32 @ItemPointerSetInvalid(i32* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = call i32 @raw_heap_insert(%struct.TYPE_14__* %20, %struct.TYPE_15__* %23)
  br label %9

25:                                               ; preds = %9
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %25
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* @MAIN_FORKNUM, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @log_newpage(i32* %39, i32 %40, i32 %43, i64 %46, i32 1)
  br label %48

48:                                               ; preds = %35, %30
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = call i32 @RelationOpenSmgr(%struct.TYPE_16__* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PageSetChecksumInplace(i64 %55, i32 %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MAIN_FORKNUM, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @smgrextend(i32 %64, i32 %65, i32 %68, i8* %72, i32 1)
  br label %74

74:                                               ; preds = %48, %25
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = call i64 @RelationNeedsWAL(%struct.TYPE_16__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = call i32 @heap_sync(%struct.TYPE_16__* %83)
  br label %85

85:                                               ; preds = %80, %74
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = call i32 @logical_end_heap_rewrite(%struct.TYPE_14__* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @MemoryContextDelete(i32 %90)
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @hash_seq_search(i32*) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @raw_heap_insert(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @log_newpage(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_16__*) #1

declare dso_local i32 @PageSetChecksumInplace(i64, i32) #1

declare dso_local i32 @smgrextend(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_16__*) #1

declare dso_local i32 @heap_sync(%struct.TYPE_16__*) #1

declare dso_local i32 @logical_end_heap_rewrite(%struct.TYPE_14__*) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
