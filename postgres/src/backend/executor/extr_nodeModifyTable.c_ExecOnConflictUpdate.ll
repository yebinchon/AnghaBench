; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecOnConflictUpdate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecOnConflictUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32*, i32*, i32* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32*, i32* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }

@LockWaitBlock = common dso_local global i32 0, align 4
@MinTransactionIdAttributeNumber = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CARDINALITY_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ON CONFLICT DO UPDATE command cannot affect row a second time\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"Ensure that no rows proposed for insertion within the same command have duplicate constrained values.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"attempted to lock invisible tuple\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unexpected self-updated tuple\00", align 1
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"could not serialize access due to concurrent update\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"could not serialize access due to concurrent delete\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"unrecognized table_tuple_lock status: %u\00", align 1
@NIL = common dso_local global i64 0, align 8
@WCO_RLS_CONFLICT_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, i32, i32*, i32*, %struct.TYPE_23__*, i32, i32**)* @ExecOnConflictUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecOnConflictUpdate(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32 %2, i32* %3, i32* %4, %struct.TYPE_23__* %5, i32 %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_19__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32** %7, i32*** %17, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %18, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %19, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %20, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %21, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %47 = call i32 @ExecUpdateLockMode(%struct.TYPE_23__* %45, %struct.TYPE_20__* %46)
  store i32 %47, i32* %23, align 4
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %21, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %23, align 4
  %58 = load i32, i32* @LockWaitBlock, align 4
  %59 = call i32 @table_tuple_lock(i32 %48, i32 %49, i32 %52, i32* %53, i32 %56, i32 %57, i32 %58, i32 0, %struct.TYPE_19__* %22)
  store i32 %59, i32* %24, align 4
  %60 = load i32, i32* %24, align 4
  switch i32 %60, label %125 [
    i32 130, label %61
    i32 131, label %62
    i32 129, label %86
    i32 128, label %89
    i32 132, label %107
  ]

61:                                               ; preds = %8
  br label %129

62:                                               ; preds = %8
  %63 = load i32*, i32** %21, align 8
  %64 = load i32, i32* @MinTransactionIdAttributeNumber, align 4
  %65 = call i32 @slot_getsysattr(i32* %63, i32 %64, i32* %27)
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %27, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @Assert(i32 %69)
  %71 = load i32, i32* %25, align 4
  %72 = call i32 @DatumGetTransactionId(i32 %71)
  store i32 %72, i32* %26, align 4
  %73 = load i32, i32* %26, align 4
  %74 = call i32 @TransactionIdIsCurrentTransactionId(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %62
  %77 = load i32, i32* @ERROR, align 4
  %78 = load i32, i32* @ERRCODE_CARDINALITY_VIOLATION, align 4
  %79 = call i32 @errcode(i32 %78)
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %81 = call i32 @errhint(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @ereport(i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %76, %62
  %84 = load i32, i32* @ERROR, align 4
  %85 = call i32 (i32, i8*, ...) @elog(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %129

86:                                               ; preds = %8
  %87 = load i32, i32* @ERROR, align 4
  %88 = call i32 (i32, i8*, ...) @elog(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %129

89:                                               ; preds = %8
  %90 = call i32 (...) @IsolationUsesXactSnapshot()
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @ereport(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %89
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %100 = call i32 @ItemPointerIndicatesMovedPartitions(i32* %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 @Assert(i32 %103)
  %105 = load i32*, i32** %21, align 8
  %106 = call i32 @ExecClearTuple(i32* %105)
  store i32 0, i32* %9, align 4
  br label %193

107:                                              ; preds = %8
  %108 = call i32 (...) @IsolationUsesXactSnapshot()
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* @ERROR, align 4
  %112 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %113 = call i32 @errcode(i32 %112)
  %114 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %115 = call i32 @ereport(i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %107
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %118 = call i32 @ItemPointerIndicatesMovedPartitions(i32* %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @Assert(i32 %121)
  %123 = load i32*, i32** %21, align 8
  %124 = call i32 @ExecClearTuple(i32* %123)
  store i32 0, i32* %9, align 4
  br label %193

125:                                              ; preds = %8
  %126 = load i32, i32* @ERROR, align 4
  %127 = load i32, i32* %24, align 4
  %128 = call i32 (i32, i8*, ...) @elog(i32 %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %125, %86, %83, %61
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %131 = load i32, i32* %19, align 4
  %132 = load i32*, i32** %21, align 8
  %133 = call i32 @ExecCheckTupleVisible(%struct.TYPE_23__* %130, i32 %131, i32* %132)
  %134 = load i32*, i32** %21, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 2
  store i32* %134, i32** %136, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = load i32*, i32** %20, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %144 = call i32 @ExecQual(i32* %142, %struct.TYPE_22__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %129
  %147 = load i32*, i32** %21, align 8
  %148 = call i32 @ExecClearTuple(i32* %147)
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = call i32 @InstrCountFiltered1(%struct.TYPE_24__* %150, i32 1)
  store i32 1, i32* %9, align 4
  br label %193

152:                                              ; preds = %129
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NIL, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load i32, i32* @WCO_RLS_CONFLICT_CHECK, align 4
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %161 = load i32*, i32** %21, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @ExecWithCheckOptions(i32 %159, %struct.TYPE_20__* %160, i32* %161, i32 %165)
  br label %167

167:                                              ; preds = %158, %152
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ExecProject(i32 %172)
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %16, align 4
  %189 = call i32* @ExecUpdate(%struct.TYPE_21__* %174, i32 %175, i32* null, i32 %180, i32* %181, i32* %183, i32 %187, i32 %188)
  %190 = load i32**, i32*** %17, align 8
  store i32* %189, i32** %190, align 8
  %191 = load i32*, i32** %21, align 8
  %192 = call i32 @ExecClearTuple(i32* %191)
  store i32 1, i32* %9, align 4
  br label %193

193:                                              ; preds = %167, %146, %116, %98
  %194 = load i32, i32* %9, align 4
  ret i32 %194
}

declare dso_local i32 @ExecUpdateLockMode(%struct.TYPE_23__*, %struct.TYPE_20__*) #1

declare dso_local i32 @table_tuple_lock(i32, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @slot_getsysattr(i32*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @DatumGetTransactionId(i32) #1

declare dso_local i32 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @IsolationUsesXactSnapshot(...) #1

declare dso_local i32 @ItemPointerIndicatesMovedPartitions(i32*) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

declare dso_local i32 @ExecCheckTupleVisible(%struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32 @ExecQual(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @InstrCountFiltered1(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ExecWithCheckOptions(i32, %struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @ExecProject(i32) #1

declare dso_local i32* @ExecUpdate(%struct.TYPE_21__*, i32, i32*, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
