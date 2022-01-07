; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_checkpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_checkpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"index \22%s\22 contains unexpected zero page at block %u\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Please REINDEX it.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"index \22%s\22 contains corrupted page at block %u\00", align 1
@LH_META_PAGE = common dso_local global i32 0, align 4
@HASH_MAGIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"index \22%s\22 is not a hash index\00", align 1
@HASH_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"index \22%s\22 has wrong hash version\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hash_checkpage(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @BufferGetPage(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @PageIsNew(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @RelationGetRelationName(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @BufferGetBlockNumber(i32 %21)
  %23 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = call i32 @errhint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @ereport(i32 %16, i32 %24)
  br label %26

26:                                               ; preds = %15, %3
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @PageGetSpecialSize(i32 %27)
  %29 = call i64 @MAXALIGN(i32 4)
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @RelationGetRelationName(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @BufferGetBlockNumber(i32 %37)
  %39 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %38)
  %40 = call i32 @errhint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @ereport(i32 %32, i32 %40)
  br label %42

42:                                               ; preds = %31, %26
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @PageGetSpecialPointer(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %8, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @RelationGetRelationName(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @BufferGetBlockNumber(i32 %62)
  %64 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %63)
  %65 = call i32 @errhint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @ereport(i32 %57, i32 %65)
  br label %67

67:                                               ; preds = %56, %45
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @LH_META_PAGE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = call %struct.TYPE_5__* @HashPageGetMeta(i32 %73)
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %9, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @HASH_MAGIC, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @RelationGetRelationName(i32 %84)
  %86 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = call i32 @ereport(i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %80, %72
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @HASH_VERSION, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @RelationGetRelationName(i32 %98)
  %100 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = call i32 @errhint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %102 = call i32 @ereport(i32 %95, i32 %101)
  br label %103

103:                                              ; preds = %94, %88
  br label %104

104:                                              ; preds = %103, %68
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @PageGetSpecialSize(i32) #1

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32 @PageGetSpecialPointer(i32) #1

declare dso_local %struct.TYPE_5__* @HashPageGetMeta(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
