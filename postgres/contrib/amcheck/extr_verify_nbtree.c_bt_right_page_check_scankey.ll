; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_right_page_check_scankey.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_right_page_check_scankey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@ERRCODE_NO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"level %u leftmost page of index \22%s\22 was found deleted or half dead\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Deleted page found when building scankey from right sibling.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s block %u of index \22%s\22 has no first data item\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"leaf\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*)* @bt_right_page_check_scankey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bt_right_page_check_scankey(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @PageGetSpecialPointer(i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = call i64 @P_RIGHTMOST(%struct.TYPE_13__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %123

19:                                               ; preds = %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %39, %19
  %24 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @palloc_btree_page(%struct.TYPE_12__* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @PageGetSpecialPointer(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %4, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = call i32 @P_IGNORE(%struct.TYPE_13__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = call i64 @P_RIGHTMOST(%struct.TYPE_13__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %23
  br label %61

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @DEBUG1, align 4
  %44 = load i32, i32* @ERRCODE_NO_DATA, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @RelationGetRelationName(i32 %54)
  %56 = call i32 (i8*, i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %55)
  %57 = call i32 @errdetail_internal(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %43, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @pfree(i32 %59)
  br label %23

61:                                               ; preds = %38
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @PageGetMaxOffsetNumber(i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call i64 @P_ISLEAF(%struct.TYPE_13__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_13__* %69)
  %71 = icmp sge i64 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_13__* %76)
  %78 = call i32 @PageGetItemIdCareful(%struct.TYPE_12__* %73, i32 %74, i32 %75, i64 %77)
  store i32 %78, i32* %5, align 4
  br label %114

79:                                               ; preds = %67, %61
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = call i64 @P_ISLEAF(%struct.TYPE_13__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_13__* %85)
  %87 = call i64 @OffsetNumberNext(i64 %86)
  %88 = icmp sge i64 %84, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_13__* %93)
  %95 = call i64 @OffsetNumberNext(i64 %94)
  %96 = call i32 @PageGetItemIdCareful(%struct.TYPE_12__* %90, i32 %91, i32 %92, i64 %95)
  store i32 %96, i32* %5, align 4
  br label %113

97:                                               ; preds = %83, %79
  %98 = load i32, i32* @DEBUG1, align 4
  %99 = load i32, i32* @ERRCODE_NO_DATA, align 4
  %100 = call i32 @errcode(i32 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = call i64 @P_ISLEAF(%struct.TYPE_13__* %101)
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @RelationGetRelationName(i32 %109)
  %111 = call i32 (i8*, i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %105, i32 %106, i32 %110)
  %112 = call i32 @ereport(i32 %98, i32 %111)
  store i32* null, i32** %2, align 8
  br label %123

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113, %72
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i64 @PageGetItem(i32 %115, i32 %116)
  store i64 %117, i64* %6, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %6, align 8
  %122 = call i32* @bt_mkscankey_pivotsearch(i32 %120, i64 %121)
  store i32* %122, i32** %2, align 8
  br label %123

123:                                              ; preds = %114, %97, %18
  %124 = load i32*, i32** %2, align 8
  ret i32* %124
}

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_13__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @palloc_btree_page(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @P_IGNORE(%struct.TYPE_13__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail_internal(i8*) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @P_ISLEAF(%struct.TYPE_13__*) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_13__*) #1

declare dso_local i32 @PageGetItemIdCareful(%struct.TYPE_12__*, i32, i32, i64) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32* @bt_mkscankey_pivotsearch(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
