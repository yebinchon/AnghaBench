; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btvacuumscan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btvacuumscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i32, i32, i8*, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }

@BTREE_METAPAGE = common dso_local global i64 0, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"_bt_pagedel\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@PROGRESS_SCAN_BLOCKS_TOTAL = common dso_local global i32 0, align 4
@PROGRESS_SCAN_BLOCKS_DONE = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i8*, i32, i32*)* @btvacuumscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btvacuumscan(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 9
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 7
  store i32 %32, i32* %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 6
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 5
  store i32 %36, i32* %37, align 8
  %38 = load i64, i64* @BTREE_METAPAGE, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* @BTREE_METAPAGE, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @InvalidTransactionId, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @CurrentMemoryContext, align 4
  %46 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %47 = call i32 @AllocSetContextCreate(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @RELATION_IS_LOCAL(i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %17, align 4
  %54 = load i64, i64* @BTREE_METAPAGE, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %16, align 8
  br label %56

56:                                               ; preds = %107, %6
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @ExclusiveLock, align 4
  %62 = call i32 @LockRelationForExtension(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %13, align 4
  %65 = call i64 @RelationGetNumberOfBlocks(i32 %64)
  store i64 %65, i64* %15, align 8
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @ExclusiveLock, align 4
  %71 = call i32 @UnlockRelationForExtension(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @PROGRESS_SCAN_BLOCKS_TOTAL, align 4
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @pgstat_progress_update_param(i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %108

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %104, %86
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %15, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i32 @btvacuumpage(%struct.TYPE_9__* %14, i64 %92, i64 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i32, i32* @PROGRESS_SCAN_BLOCKS_DONE, align 4
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @pgstat_progress_update_param(i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %91
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %16, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %16, align 8
  br label %87

107:                                              ; preds = %87
  br label %56

108:                                              ; preds = %85
  %109 = call i64 (...) @XLogStandbyInfoActive()
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %111
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @MAIN_FORKNUM, align 4
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @RBM_NORMAL, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ReadBufferExtended(i32 %118, i32 %119, i64 %121, i32 %122, i32 %125)
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @LockBufferForCleanup(i32 %127)
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @_bt_checkpage(i32 %129, i32 %130)
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %18, align 4
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @_bt_delitems_vacuum(i32 %132, i32 %133, i32* null, i32 0, i64 %135)
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @_bt_relbuf(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %117, %111, %108
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @MemoryContextDelete(i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @IndexFreeSpaceMapVacuum(i32 %148)
  br label %150

150:                                              ; preds = %147, %140
  %151 = load i64, i64* %15, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %12, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %150
  ret void
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @RELATION_IS_LOCAL(i32) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

declare dso_local i32 @pgstat_progress_update_param(i32, i64) #1

declare dso_local i32 @btvacuumpage(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i64 @XLogStandbyInfoActive(...) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBufferForCleanup(i32) #1

declare dso_local i32 @_bt_checkpage(i32, i32) #1

declare dso_local i32 @_bt_delitems_vacuum(i32, i32, i32*, i32, i64) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

declare dso_local i32 @IndexFreeSpaceMapVacuum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
