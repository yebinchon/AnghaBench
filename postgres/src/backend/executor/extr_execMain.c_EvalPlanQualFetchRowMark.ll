; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_EvalPlanQualFetchRowMark.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_EvalPlanQualFetchRowMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 (i32, %struct.TYPE_14__*, i32, i32*, i32*)* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EvalPlanQual doesn't support locking rowmarks\00", align 1
@ROW_MARK_REFERENCE = common dso_local global i64 0, align 8
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot lock rows in foreign table \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to fetch tuple for EvalPlanQual recheck\00", align 1
@SnapshotAny = common dso_local global i32 0, align 4
@ROW_MARK_COPY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EvalPlanQualFetchRowMark(%struct.TYPE_16__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %17, i64 %20
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %8, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %9, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @RowMarkRequiresRowShareLock(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %3
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ExecGetJunkAttribute(i32* %55, i32 %58, i32* %11)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %185

63:                                               ; preds = %52
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @DatumGetObjectId(i32 %64)
  store i64 %65, i64* %12, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @OidIsValid(i64 %68)
  %70 = call i32 @Assert(i32 %69)
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %185

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ROW_MARK_REFERENCE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %163

84:                                               ; preds = %78
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = icmp ne %struct.TYPE_17__* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ExecGetJunkAttribute(i32* %93, i32 %96, i32* %11)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  store i32 0, i32* %4, align 4
  br label %185

101:                                              ; preds = %84
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %101
  store i32 0, i32* %14, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = call %struct.TYPE_13__* @GetFdwRoutineForRelation(%struct.TYPE_17__* %114, i32 0)
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %13, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32 (i32, %struct.TYPE_14__*, i32, i32*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32, i32*, i32*)** %117, align 8
  %119 = icmp eq i32 (i32, %struct.TYPE_14__*, i32, i32*, i32*)* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %111
  %121 = load i32, i32* @ERROR, align 4
  %122 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %123 = call i32 @errcode(i32 %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = call i32 @RelationGetRelationName(%struct.TYPE_17__* %126)
  %128 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = call i32 @ereport(i32 %121, i32 %128)
  br label %130

130:                                              ; preds = %120, %111
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32 (i32, %struct.TYPE_14__*, i32, i32*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32, i32*, i32*)** %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 %133(i32 %136, %struct.TYPE_14__* %137, i32 %138, i32* %139, i32* %14)
  %141 = load i32*, i32** %7, align 8
  %142 = call i64 @TupIsNull(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %130
  %145 = load i32, i32* @ERROR, align 4
  %146 = call i32 @elog(i32 %145, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %130
  store i32 1, i32* %4, align 4
  br label %185

148:                                              ; preds = %101
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i64 @DatumGetPointer(i32 %152)
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* @SnapshotAny, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @table_tuple_fetch_row_version(%struct.TYPE_17__* %151, i32 %154, i32 %155, i32* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %148
  %160 = load i32, i32* @ERROR, align 4
  %161 = call i32 @elog(i32 %160, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %148
  store i32 1, i32* %4, align 4
  br label %185

163:                                              ; preds = %78
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @ROW_MARK_COPY, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @Assert(i32 %169)
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ExecGetJunkAttribute(i32* %173, i32 %176, i32* %11)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %163
  store i32 0, i32* %4, align 4
  br label %185

181:                                              ; preds = %163
  %182 = load i32, i32* %10, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @ExecStoreHeapTupleDatum(i32 %182, i32* %183)
  store i32 1, i32* %4, align 4
  br label %185

185:                                              ; preds = %181, %180, %162, %147, %100, %76, %62
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RowMarkRequiresRowShareLock(i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ExecGetJunkAttribute(i32*, i32, i32*) #1

declare dso_local i64 @DatumGetObjectId(i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local %struct.TYPE_13__* @GetFdwRoutineForRelation(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_17__*) #1

declare dso_local i64 @TupIsNull(i32*) #1

declare dso_local i32 @table_tuple_fetch_row_version(%struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @ExecStoreHeapTupleDatum(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
