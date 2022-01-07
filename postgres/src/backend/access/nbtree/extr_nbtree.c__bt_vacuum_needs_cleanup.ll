; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c__bt_vacuum_needs_cleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c__bt_vacuum_needs_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@BTREE_METAPAGE = common dso_local global i32 0, align 4
@BT_READ = common dso_local global i32 0, align 4
@BTREE_NOVAC_VERSION = common dso_local global i64 0, align 8
@RecentGlobalXmin = common dso_local global i32 0, align 4
@vacuum_cleanup_index_scale_factor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @_bt_vacuum_needs_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_vacuum_needs_cleanup(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = load i32, i32* @BTREE_METAPAGE, align 4
  %14 = load i32, i32* @BT_READ, align 4
  %15 = call i32 @_bt_getbuf(%struct.TYPE_11__* %12, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @BufferGetPage(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.TYPE_10__* @BTPageGetMeta(i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %85

26:                                               ; preds = %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @TransactionIdIsValid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RecentGlobalXmin, align 4
  %37 = call i64 @TransactionIdPrecedes(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %84

40:                                               ; preds = %32, %26
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %7, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  br label %61

58:                                               ; preds = %49, %40
  %59 = load i32, i32* @vacuum_cleanup_index_scale_factor, align 4
  %60 = sext i32 %59 to i64
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i64 [ %57, %54 ], [ %60, %58 ]
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* %9, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72, %69, %61
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %72
  br label %84

84:                                               ; preds = %83, %39
  br label %85

85:                                               ; preds = %84, %25
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @_bt_relbuf(%struct.TYPE_11__* %88, i32 %89)
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @_bt_getbuf(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_10__* @BTPageGetMeta(i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @_bt_relbuf(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
