; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_check_third_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_check_third_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"cannot insert oversized tuple of size %zu on internal page of index \22%s\22\00", align 1
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"index row size %zu exceeds btree version %u maximum %zu for index \22%s\22\00", align 1
@BTREE_VERSION = common dso_local global i32 0, align 4
@BTREE_NOVAC_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Index row references tuple (%u,%u) in relation \22%s\22.\00", align 1
@.str.3 = private unnamed_addr constant [141 x i8] c"Values larger than 1/3 of a buffer page cannot be indexed.\0AConsider a function index of an MD5 hash of the value, or use full text indexing.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_check_third_page(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %14 = call i32 @IndexTupleSize(%struct.TYPE_4__* %13)
  %15 = call i64 @MAXALIGN(i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @BTMaxItemSize(i32 %17)
  %19 = icmp sle i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %83

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @BTMaxItemSizeNoHeapTid(i32 %26)
  %28 = icmp sle i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %83

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @PageGetSpecialPointer(i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @P_ISLEAF(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @RelationGetRelationName(i32 %39)
  %41 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @BTREE_VERSION, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @BTREE_NOVAC_VERSION, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @BTMaxItemSize(i32 %58)
  br label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @BTMaxItemSizeNoHeapTid(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i64 [ %59, %57 ], [ %62, %60 ]
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @RelationGetRelationName(i32 %65)
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %46, i32 %54, i64 %64, i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @ItemPointerGetBlockNumber(i32* %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @ItemPointerGetOffsetNumber(i32* %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @RelationGetRelationName(i32 %74)
  %76 = call i32 @errdetail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73, i32 %75)
  %77 = call i32 @errhint(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @RelationGetRelationName(i32 %79)
  %81 = call i32 @errtableconstraint(i32 %78, i32 %80)
  %82 = call i32 @ereport(i32 %43, i32 %81)
  br label %83

83:                                               ; preds = %63, %29, %20
  ret void
}

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_4__*) #1

declare dso_local i64 @BTMaxItemSize(i32) #1

declare dso_local i64 @BTMaxItemSizeNoHeapTid(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @P_ISLEAF(i64) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i32, i64, i32) #1

declare dso_local i32 @errdetail(i8*, i32, i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @errtableconstraint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
