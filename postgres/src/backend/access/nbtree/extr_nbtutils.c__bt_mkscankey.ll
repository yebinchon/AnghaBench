; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_mkscankey.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_mkscankey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_12__ = type { i32*, i32* }

@BTScanInsertData = common dso_local global i32 0, align 4
@scankeys = common dso_local global i32 0, align 4
@BTORDER_PROC = common dso_local global i32 0, align 4
@SK_ISNULL = common dso_local global i32 0, align 4
@SK_BT_INDOPTION_SHIFT = common dso_local global i32 0, align 4
@InvalidStrategy = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @_bt_mkscankey(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = call i32 @RelationGetDescr(%struct.TYPE_12__* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_12__* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = call i32 @BTreeTupleGetNAtts(i32* %26, %struct.TYPE_12__* %27)
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = call i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_12__* %33)
  %35 = icmp sle i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i32, i32* @BTScanInsertData, align 4
  %39 = load i32, i32* @scankeys, align 4
  %40 = call i64 @offsetof(i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = add i64 %40, %43
  %45 = call %struct.TYPE_13__* @palloc(i64 %44)
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %5, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %30
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = call i64 @_bt_heapkeyspace(%struct.TYPE_12__* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %30
  %53 = phi i1 [ true, %30 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @Min(i32 %63, i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %52
  %73 = load i32*, i32** %4, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %4, align 8
  %77 = call i32* @BTreeTupleGetHeapTID(i32* %76)
  br label %79

78:                                               ; preds = %72, %52
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32* [ %77, %75 ], [ null, %78 ]
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 5
  store i32* %80, i32** %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %6, align 8
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %147, %79
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %150

90:                                               ; preds = %86
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @BTORDER_PROC, align 4
  %95 = call i32* @index_getprocinfo(%struct.TYPE_12__* %91, i32 %93, i32 %94)
  store i32* %95, i32** %12, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @index_getattr(i32* %100, i32 %102, i32 %103, i32* %14)
  store i64 %104, i64* %13, align 8
  br label %106

105:                                              ; preds = %90
  store i64 0, i64* %13, align 8
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %105, %99
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @SK_ISNULL, align 4
  br label %112

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SK_BT_INDOPTION_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = or i32 %113, %120
  store i32 %121, i32* %15, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* @InvalidStrategy, align 4
  %130 = load i32, i32* @InvalidOid, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %12, align 8
  %139 = load i64, i64* %13, align 8
  %140 = call i32 @ScanKeyEntryInitializeWithInfo(i32* %125, i32 %126, i32 %128, i32 %129, i32 %130, i32 %137, i32* %138, i64 %139)
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %112
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %112
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %86

150:                                              ; preds = %86
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %151
}

declare dso_local i32 @RelationGetDescr(%struct.TYPE_12__*) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_12__*) #1

declare dso_local i32 @BTreeTupleGetNAtts(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @palloc(i64) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i64 @_bt_heapkeyspace(%struct.TYPE_12__*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32* @BTreeTupleGetHeapTID(i32*) #1

declare dso_local i32* @index_getprocinfo(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @index_getattr(i32*, i32, i32, i32*) #1

declare dso_local i32 @ScanKeyEntryInitializeWithInfo(i32*, i32, i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
