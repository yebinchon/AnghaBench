; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_lock_branch_parent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_lock_branch_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64 }

@InvalidBuffer = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"failed to re-find parent key in index \22%s\22 for deletion target page %u\00", align 1
@P_NONE = common dso_local global i64 0, align 8
@BT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_9__*, i64*, i64*, i64*, i64*)* @_bt_lock_branch_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_lock_branch_parent(i32 %0, i64 %1, %struct.TYPE_9__* %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @_bt_getstackbuf(i32 %26, %struct.TYPE_9__* %27, i64 %28)
  store i64 %29, i64* %19, align 8
  %30 = load i64, i64* %19, align 8
  %31 = load i64, i64* @InvalidBuffer, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %7
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @RelationGetRelationName(i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @errmsg_internal(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %39)
  %41 = call i32 @ereport(i32 %34, i32 %40)
  br label %42

42:                                               ; preds = %33, %7
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %16, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %19, align 8
  %50 = call i32 @BufferGetPage(i64 %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = call i64 @PageGetSpecialPointer(i32 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %21, align 8
  %54 = load i32, i32* %20, align 4
  %55 = call i64 @PageGetMaxOffsetNumber(i32 %54)
  store i64 %55, i64* %18, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %18, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %138

59:                                               ; preds = %42
  %60 = load i64, i64* %17, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %62 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_10__* %61)
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %134

64:                                               ; preds = %59
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %66 = call i64 @P_RIGHTMOST(%struct.TYPE_10__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %70 = call i64 @P_ISROOT(%struct.TYPE_10__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %74 = call i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_10__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72, %68, %64
  %77 = load i32, i32* %9, align 4
  %78 = load i64, i64* %19, align 8
  %79 = call i32 @_bt_relbuf(i32 %77, i64 %78)
  store i32 0, i32* %8, align 4
  br label %143

80:                                               ; preds = %72
  %81 = load i64, i64* %16, align 8
  %82 = load i64*, i64** %14, align 8
  store i64 %81, i64* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %15, align 8
  store i64 %85, i64* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %22, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i64, i64* %19, align 8
  %92 = call i32 @_bt_relbuf(i32 %90, i64 %91)
  %93 = load i64, i64* %22, align 8
  %94 = load i64, i64* @P_NONE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %80
  %97 = load i32, i32* %9, align 4
  %98 = load i64, i64* %22, align 8
  %99 = load i32, i32* @BT_READ, align 4
  %100 = call i64 @_bt_getbuf(i32 %97, i64 %98, i32 %99)
  store i64 %100, i64* %23, align 8
  %101 = load i64, i64* %23, align 8
  %102 = call i32 @BufferGetPage(i64 %101)
  store i32 %102, i32* %24, align 4
  %103 = load i32, i32* %24, align 4
  %104 = call i64 @PageGetSpecialPointer(i32 %103)
  %105 = inttoptr i64 %104 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %25, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %16, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %96
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %113 = call i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_10__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = load i64, i64* %23, align 8
  %118 = call i32 @_bt_relbuf(i32 %116, i64 %117)
  store i32 0, i32* %8, align 4
  br label %143

119:                                              ; preds = %111, %96
  %120 = load i32, i32* %9, align 4
  %121 = load i64, i64* %23, align 8
  %122 = call i32 @_bt_relbuf(i32 %120, i64 %121)
  br label %123

123:                                              ; preds = %119, %80
  %124 = load i32, i32* %9, align 4
  %125 = load i64, i64* %16, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i64*, i64** %12, align 8
  %130 = load i64*, i64** %13, align 8
  %131 = load i64*, i64** %14, align 8
  %132 = load i64*, i64** %15, align 8
  %133 = call i32 @_bt_lock_branch_parent(i32 %124, i64 %125, %struct.TYPE_9__* %128, i64* %129, i64* %130, i64* %131, i64* %132)
  store i32 %133, i32* %8, align 4
  br label %143

134:                                              ; preds = %59
  %135 = load i32, i32* %9, align 4
  %136 = load i64, i64* %19, align 8
  %137 = call i32 @_bt_relbuf(i32 %135, i64 %136)
  store i32 0, i32* %8, align 4
  br label %143

138:                                              ; preds = %42
  %139 = load i64, i64* %19, align 8
  %140 = load i64*, i64** %12, align 8
  store i64 %139, i64* %140, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i64*, i64** %13, align 8
  store i64 %141, i64* %142, align 8
  store i32 1, i32* %8, align 4
  br label %143

143:                                              ; preds = %138, %134, %123, %115, %76
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i64 @_bt_getstackbuf(i32, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32, i64) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_10__*) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_10__*) #1

declare dso_local i64 @P_ISROOT(%struct.TYPE_10__*) #1

declare dso_local i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_10__*) #1

declare dso_local i32 @_bt_relbuf(i32, i64) #1

declare dso_local i64 @_bt_getbuf(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
