; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_downlink_check.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_downlink_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"downlink to deleted page found in index \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Parent block=%u child block=%u parent page lsn=%X/%X.\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"down-link lower bound invariant violated for index \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Parent block=%u child index tid=(%u,%u) parent page lsn=%X/%X.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @bt_downlink_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_downlink_check(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @Assert(i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @palloc_btree_page(%struct.TYPE_5__* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @PageGetSpecialPointer(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @PageGetMaxOffsetNumber(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @P_ISDELETED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %3
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RelationGetRelationName(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 32
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i32, i32, i64, i32, ...) @errdetail_internal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i64 %42, i32 %45)
  %47 = call i32 @ereport(i32 %26, i32 %46)
  br label %48

48:                                               ; preds = %25, %3
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @P_FIRSTDATAKEY(i64 %49)
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %93, %48
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @offset_is_negative_infinity(i64 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %93

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @invariant_l_nontarget_offset(%struct.TYPE_5__* %62, i32 %63, i32 %64, i32 %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @RelationGetRelationName(i32 %75)
  %77 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 32
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i32, i32, i64, i32, ...) @errdetail_internal(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81, i64 %82, i32 %86, i32 %89)
  %91 = call i32 @ereport(i32 %70, i32 %90)
  br label %92

92:                                               ; preds = %69, %61
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @OffsetNumberNext(i64 %94)
  store i64 %95, i64* %7, align 8
  br label %51

96:                                               ; preds = %51
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @pfree(i32 %97)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @palloc_btree_page(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @P_ISDELETED(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail_internal(i8*, i32, i32, i64, i32, ...) #1

declare dso_local i64 @P_FIRSTDATAKEY(i64) #1

declare dso_local i64 @offset_is_negative_infinity(i64, i64) #1

declare dso_local i32 @invariant_l_nontarget_offset(%struct.TYPE_5__*, i32, i32, i32, i64) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @pfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
