; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_getmeta.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_getmeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@BTREE_MAGIC = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"index \22%s\22 is not a btree\00", align 1
@BTREE_MIN_VERSION = common dso_local global i64 0, align 8
@BTREE_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [98 x i8] c"version mismatch in index \22%s\22: file version %d, current version %d, minimal supported version %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i32)* @_bt_getmeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @_bt_getmeta(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @BufferGetPage(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @PageGetSpecialPointer(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_4__* @BTPageGetMeta(i32 %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @P_ISMETA(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BTREE_MAGIC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @RelationGetRelationName(i32 %27)
  %29 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i32 @ereport(i32 %24, i32 %29)
  br label %31

31:                                               ; preds = %23, %17
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BTREE_MIN_VERSION, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BTREE_VERSION, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @RelationGetRelationName(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BTREE_VERSION, align 8
  %53 = load i64, i64* @BTREE_MIN_VERSION, align 8
  %54 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 %48, i64 %51, i64 %52, i64 %53)
  %55 = call i32 @ereport(i32 %44, i32 %54)
  br label %56

56:                                               ; preds = %43, %37
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %57
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local %struct.TYPE_4__* @BTPageGetMeta(i32) #1

declare dso_local i32 @P_ISMETA(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
