; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_insert_parent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_insert_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"concurrent ROOT page split\00", align 1
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@P_HIKEY = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"failed to re-find parent key in index \22%s\22 for split pages %u/%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, %struct.TYPE_8__*, i32, i32)* @_bt_insert_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_insert_parent(i32 %0, i64 %1, i64 %2, %struct.TYPE_8__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_8__, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %6
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @Assert(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @_bt_newroot(i32 %31, i64 %32, i64 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @_bt_relbuf(i32 %35, i64 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @_bt_relbuf(i32 %38, i64 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @_bt_relbuf(i32 %41, i64 %42)
  br label %125

44:                                               ; preds = %6
  %45 = load i64, i64* %8, align 8
  %46 = call i8* @BufferGetBlockNumber(i64 %45)
  store i8* %46, i8** %14, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i8* @BufferGetBlockNumber(i64 %47)
  store i8* %48, i8** %15, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @BufferGetPage(i64 %49)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = icmp eq %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %78

53:                                               ; preds = %44
  %54 = load i32, i32* @DEBUG2, align 4
  %55 = call i32 @elog(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %16, align 4
  %57 = call i64 @PageGetSpecialPointer(i32 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %21, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i64 @_bt_get_endpoint(i32 %59, i64 %64, i32 0, i32* null)
  store i64 %65, i64* %20, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %10, align 8
  %66 = load i64, i64* %20, align 8
  %67 = call i8* @BufferGetBlockNumber(i64 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* @InvalidOffsetNumber, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i64, i64* %20, align 8
  %77 = call i32 @_bt_relbuf(i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %53, %44
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @P_HIKEY, align 4
  %82 = call i32 @PageGetItemId(i32 %80, i32 %81)
  %83 = call i64 @PageGetItem(i32 %79, i32 %82)
  store i64 %83, i64* %19, align 8
  %84 = load i64, i64* %19, align 8
  %85 = call i64 @CopyIndexTuple(i64 %84)
  store i64 %85, i64* %17, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = call i32 @BTreeInnerTupleSetDownLink(i64 %86, i8* %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = call i64 @_bt_getstackbuf(i32 %89, %struct.TYPE_8__* %90, i8* %91)
  store i64 %92, i64* %20, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @_bt_relbuf(i32 %93, i64 %94)
  %96 = load i64, i64* %20, align 8
  %97 = load i64, i64* @InvalidBuffer, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %78
  %100 = load i32, i32* @ERROR, align 4
  %101 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %102 = call i32 @errcode(i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @RelationGetRelationName(i32 %103)
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = call i32 @errmsg_internal(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %104, i8* %105, i8* %106)
  %108 = call i32 @ereport(i32 %100, i32 %107)
  br label %109

109:                                              ; preds = %99, %78
  %110 = load i32, i32* %7, align 4
  %111 = load i64, i64* %20, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %17, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @_bt_insertonpg(i32 %110, i32* null, i64 %111, i64 %112, i32* %115, i64 %116, i64 %120, i32 %121)
  %123 = load i64, i64* %17, align 8
  %124 = call i32 @pfree(i64 %123)
  br label %125

125:                                              ; preds = %109, %24
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @_bt_newroot(i32, i64, i64) #1

declare dso_local i32 @_bt_relbuf(i32, i64) #1

declare dso_local i8* @BufferGetBlockNumber(i64) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @_bt_get_endpoint(i32, i64, i32, i32*) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i64 @CopyIndexTuple(i64) #1

declare dso_local i32 @BTreeInnerTupleSetDownLink(i64, i8*) #1

declare dso_local i64 @_bt_getstackbuf(i32, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32, i8*, i8*) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @_bt_insertonpg(i32, i32*, i64, i64, i32*, i64, i64, i32) #1

declare dso_local i32 @pfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
