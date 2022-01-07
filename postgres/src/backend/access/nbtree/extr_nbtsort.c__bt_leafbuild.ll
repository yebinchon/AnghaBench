; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_leafbuild.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_leafbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32*, i64, i64, i32, i32, i32 }

@PROGRESS_CREATEIDX_SUBPHASE = common dso_local global i32 0, align 4
@PROGRESS_BTREE_PHASE_PERFORMSORT_1 = common dso_local global i32 0, align 4
@PROGRESS_BTREE_PHASE_PERFORMSORT_2 = common dso_local global i32 0, align 4
@BTREE_METAPAGE = common dso_local global i64 0, align 8
@PROGRESS_BTREE_PHASE_LEAF_LOAD = common dso_local global i32 0, align 4
@log_btree_build_stats = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*)* @_bt_leafbuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_leafbuild(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load i32, i32* @PROGRESS_CREATEIDX_SUBPHASE, align 4
  %7 = load i32, i32* @PROGRESS_BTREE_PHASE_PERFORMSORT_1, align 4
  %8 = call i32 @pgstat_progress_update_param(i32 %6, i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @tuplesort_performsort(i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @PROGRESS_CREATEIDX_SUBPHASE, align 4
  %17 = load i32, i32* @PROGRESS_BTREE_PHASE_PERFORMSORT_2, align 4
  %18 = call i32 @pgstat_progress_update_param(i32 %16, i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @tuplesort_performsort(i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @_bt_mkscankey(i32 %33, i32* null)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = call i64 (...) @XLogIsNeeded()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @RelationNeedsWAL(i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %23
  %44 = phi i1 [ false, %23 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i64, i64* @BTREE_METAPAGE, align 8
  %48 = add nsw i64 %47, 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load i32, i32* @PROGRESS_CREATEIDX_SUBPHASE, align 4
  %53 = load i32, i32* @PROGRESS_BTREE_PHASE_LEAF_LOAD, align 4
  %54 = call i32 @pgstat_progress_update_param(i32 %52, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = call i32 @_bt_load(%struct.TYPE_8__* %5, %struct.TYPE_9__* %55, %struct.TYPE_9__* %56)
  ret void
}

declare dso_local i32 @pgstat_progress_update_param(i32, i32) #1

declare dso_local i32 @tuplesort_performsort(i32) #1

declare dso_local i32 @_bt_mkscankey(i32, i32*) #1

declare dso_local i64 @XLogIsNeeded(...) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @_bt_load(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
