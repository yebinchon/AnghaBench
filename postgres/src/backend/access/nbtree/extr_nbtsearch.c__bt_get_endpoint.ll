; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_get_endpoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_get_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@BT_READ = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@P_NONE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fell off the end of index \22%s\22\00", align 1
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"btree level %u not found in index \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_get_endpoint(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BT_READ, align 4
  %21 = call i32 @_bt_getroot(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @_bt_gettrueroot(i32 %23)
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @BufferIsValid(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @InvalidBuffer, align 4
  store i32 %30, i32* %5, align 4
  br label %138

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @BufferGetPage(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @TestForOldSnapshot(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @PageGetSpecialPointer(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %12, align 8
  br label %41

41:                                               ; preds = %118, %31
  br label %42

42:                                               ; preds = %70, %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %44 = call i64 @P_IGNORE(%struct.TYPE_7__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = call i32 @P_RIGHTMOST(%struct.TYPE_7__* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %49, %46
  %55 = phi i1 [ false, %46 ], [ %53, %49 ]
  br label %56

56:                                               ; preds = %54, %42
  %57 = phi i1 [ true, %42 ], [ %55, %54 ]
  br i1 %57, label %58, label %85

58:                                               ; preds = %56
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @P_NONE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @RelationGetRelationName(i32 %67)
  %69 = call i32 @elog(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i64, i64* %14, align 8
  %74 = load i32, i32* @BT_READ, align 4
  %75 = call i32 @_bt_relandgetbuf(i32 %71, i32 %72, i64 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @BufferGetPage(i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @TestForOldSnapshot(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @PageGetSpecialPointer(i32 %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %12, align 8
  br label %42

85:                                               ; preds = %56
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %136

93:                                               ; preds = %85
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load i32, i32* @ERROR, align 4
  %102 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %103 = call i32 @errcode(i32 %102)
  %104 = load i64, i64* %7, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @RelationGetRelationName(i32 %105)
  %107 = call i32 @errmsg_internal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %104, i32 %106)
  %108 = call i32 @ereport(i32 %101, i32 %107)
  br label %109

109:                                              ; preds = %100, %93
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @PageGetMaxOffsetNumber(i32 %113)
  store i32 %114, i32* %13, align 4
  br label %118

115:                                              ; preds = %109
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = call i32 @P_FIRSTDATAKEY(%struct.TYPE_7__* %116)
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @PageGetItemId(i32 %120, i32 %121)
  %123 = call i64 @PageGetItem(i32 %119, i32 %122)
  store i64 %123, i64* %15, align 8
  %124 = load i64, i64* %15, align 8
  %125 = call i64 @BTreeInnerTupleGetDownLink(i64 %124)
  store i64 %125, i64* %14, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i64, i64* %14, align 8
  %129 = load i32, i32* @BT_READ, align 4
  %130 = call i32 @_bt_relandgetbuf(i32 %126, i32 %127, i64 %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @BufferGetPage(i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @PageGetSpecialPointer(i32 %133)
  %135 = inttoptr i64 %134 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %12, align 8
  br label %41

136:                                              ; preds = %92
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %29
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @_bt_getroot(i32, i32) #1

declare dso_local i32 @_bt_gettrueroot(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_IGNORE(%struct.TYPE_7__*) #1

declare dso_local i32 @P_RIGHTMOST(%struct.TYPE_7__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @_bt_relandgetbuf(i32, i32, i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i64, i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @P_FIRSTDATAKEY(%struct.TYPE_7__*) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i64 @BTreeInnerTupleGetDownLink(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
