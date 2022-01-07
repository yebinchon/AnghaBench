; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecDelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_56__ = type { i64, %struct.TYPE_53__* }
%struct.TYPE_53__ = type { i64 }
%struct.TYPE_52__ = type { i32 }
%struct.TYPE_57__ = type { i32, i32, i32, i32, %struct.TYPE_55__* }
%struct.TYPE_55__ = type { %struct.TYPE_51__*, i64, i32, %struct.TYPE_50__*, i32 }
%struct.TYPE_51__ = type { %struct.TYPE_52__* (%struct.TYPE_57__*, %struct.TYPE_55__*, %struct.TYPE_52__*, %struct.TYPE_52__*)* }
%struct.TYPE_50__ = type { i64, i64 }
%struct.TYPE_54__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"tuple to be deleted was already modified by an operation triggered by the current command\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"Consider using an AFTER trigger instead of a BEFORE trigger to propagate changes to other rows.\00", align 1
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"could not serialize access due to concurrent update\00", align 1
@LockTupleExclusive = common dso_local global i32 0, align 4
@LockWaitBlock = common dso_local global i32 0, align 4
@TUPLE_LOCK_FLAG_FIND_LAST_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"unexpected table_tuple_lock status: %u\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"could not serialize access due to concurrent delete\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"unrecognized table_tuple_delete status: %u\00", align 1
@CMD_UPDATE = common dso_local global i64 0, align 8
@SnapshotAny = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"failed to fetch deleted tuple for DELETE RETURNING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_52__* (%struct.TYPE_56__*, i32, i32*, %struct.TYPE_52__*, i32*, %struct.TYPE_57__*, i32, i32, i32, i32*, %struct.TYPE_52__**)* @ExecDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_52__* @ExecDelete(%struct.TYPE_56__* %0, i32 %1, i32* %2, %struct.TYPE_52__* %3, i32* %4, %struct.TYPE_57__* %5, i32 %6, i32 %7, i32 %8, i32* %9, %struct.TYPE_52__** %10) #0 {
  %12 = alloca %struct.TYPE_52__*, align 8
  %13 = alloca %struct.TYPE_56__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_52__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_57__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_52__**, align 8
  %24 = alloca %struct.TYPE_55__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_54__, align 4
  %28 = alloca %struct.TYPE_52__*, align 8
  %29 = alloca %struct.TYPE_53__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_52__*, align 8
  %33 = alloca %struct.TYPE_52__*, align 8
  %34 = alloca %struct.TYPE_52__*, align 8
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store %struct.TYPE_52__* %3, %struct.TYPE_52__** %16, align 8
  store i32* %4, i32** %17, align 8
  store %struct.TYPE_57__* %5, %struct.TYPE_57__** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store %struct.TYPE_52__** %10, %struct.TYPE_52__*** %23, align 8
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %28, align 8
  %35 = load i32*, i32** %22, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %11
  %38 = load i32*, i32** %22, align 8
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %11
  %40 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_55__*, %struct.TYPE_55__** %41, align 8
  store %struct.TYPE_55__* %42, %struct.TYPE_55__** %24, align 8
  %43 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %44 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %25, align 4
  %46 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %47 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_50__*, %struct.TYPE_50__** %47, align 8
  %49 = icmp ne %struct.TYPE_50__* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %39
  %51 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %52 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_50__*, %struct.TYPE_50__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = load %struct.TYPE_52__**, %struct.TYPE_52__*** %23, align 8
  %64 = call i32 @ExecBRDeleteTriggers(%struct.TYPE_57__* %58, i32* %59, %struct.TYPE_55__* %60, i32 %61, i32* %62, %struct.TYPE_52__** %63)
  store i32 %64, i32* %30, align 4
  %65 = load i32, i32* %30, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %50, %39
  %70 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %71 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_50__*, %struct.TYPE_50__** %71, align 8
  %73 = icmp ne %struct.TYPE_50__* %72, null
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %76 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_50__*, %struct.TYPE_50__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load i32*, i32** %15, align 8
  %83 = icmp ne i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %87 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @ExecIRDeleteTriggers(%struct.TYPE_57__* %86, %struct.TYPE_55__* %87, i32* %88)
  store i32 %89, i32* %31, align 4
  %90 = load i32, i32* %31, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

93:                                               ; preds = %81
  br label %250

94:                                               ; preds = %74, %69
  %95 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %96 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_51__*, %struct.TYPE_51__** %96, align 8
  %98 = icmp ne %struct.TYPE_51__* %97, null
  br i1 %98, label %99, label %128

99:                                               ; preds = %94
  %100 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %101 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %102 = call %struct.TYPE_52__* @ExecGetReturningSlot(%struct.TYPE_57__* %100, %struct.TYPE_55__* %101)
  store %struct.TYPE_52__* %102, %struct.TYPE_52__** %28, align 8
  %103 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %104 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_51__*, %struct.TYPE_51__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_52__* (%struct.TYPE_57__*, %struct.TYPE_55__*, %struct.TYPE_52__*, %struct.TYPE_52__*)*, %struct.TYPE_52__* (%struct.TYPE_57__*, %struct.TYPE_55__*, %struct.TYPE_52__*, %struct.TYPE_52__*)** %106, align 8
  %108 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %109 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %110 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %111 = load %struct.TYPE_52__*, %struct.TYPE_52__** %16, align 8
  %112 = call %struct.TYPE_52__* %107(%struct.TYPE_57__* %108, %struct.TYPE_55__* %109, %struct.TYPE_52__* %110, %struct.TYPE_52__* %111)
  store %struct.TYPE_52__* %112, %struct.TYPE_52__** %28, align 8
  %113 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %114 = icmp eq %struct.TYPE_52__* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

116:                                              ; preds = %99
  %117 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %118 = call i64 @TTS_EMPTY(%struct.TYPE_52__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %122 = call i32 @ExecStoreAllNullTuple(%struct.TYPE_52__* %121)
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i32, i32* %25, align 4
  %125 = call i32 @RelationGetRelid(i32 %124)
  %126 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %127 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  br label %249

128:                                              ; preds = %94
  br label %129

129:                                              ; preds = %213, %128
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %21, align 4
  %142 = call i32 @table_tuple_delete(i32 %130, i32 %131, i32 %134, i32 %137, i32 %140, i32 1, %struct.TYPE_54__* %27, i32 %141)
  store i32 %142, i32* %26, align 4
  %143 = load i32, i32* %26, align 4
  switch i32 %143, label %244 [
    i32 129, label %144
    i32 130, label %159
    i32 128, label %160
    i32 131, label %234
  ]

144:                                              ; preds = %129
  %145 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %27, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load i32, i32* @ERROR, align 4
  %153 = load i32, i32* @ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION, align 4
  %154 = call i32 @errcode(i32 %153)
  %155 = call i32 @errmsg(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  %156 = call i32 @errhint(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  %157 = call i32 @ereport(i32 %152, i32 %156)
  br label %158

158:                                              ; preds = %151, %144
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

159:                                              ; preds = %129
  br label %248

160:                                              ; preds = %129
  %161 = call i32 (...) @IsolationUsesXactSnapshot()
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* @ERROR, align 4
  %165 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %166 = call i32 @errcode(i32 %165)
  %167 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %168 = call i32 @ereport(i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %163, %160
  %170 = load i32*, i32** %17, align 8
  %171 = call i32 @EvalPlanQualBegin(i32* %170)
  %172 = load i32*, i32** %17, align 8
  %173 = load i32, i32* %25, align 4
  %174 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %175 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call %struct.TYPE_52__* @EvalPlanQualSlot(i32* %172, i32 %173, i32 %176)
  store %struct.TYPE_52__* %177, %struct.TYPE_52__** %32, align 8
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_52__*, %struct.TYPE_52__** %32, align 8
  %184 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @LockTupleExclusive, align 4
  %188 = load i32, i32* @LockWaitBlock, align 4
  %189 = load i32, i32* @TUPLE_LOCK_FLAG_FIND_LAST_VERSION, align 4
  %190 = call i32 @table_tuple_lock(i32 %178, i32 %179, i32 %182, %struct.TYPE_52__* %183, i32 %186, i32 %187, i32 %188, i32 %189, %struct.TYPE_54__* %27)
  store i32 %190, i32* %26, align 4
  %191 = load i32, i32* %26, align 4
  switch i32 %191, label %230 [
    i32 130, label %192
    i32 129, label %214
    i32 131, label %229
  ]

192:                                              ; preds = %169
  %193 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %27, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @Assert(i32 %194)
  %196 = load i32*, i32** %17, align 8
  %197 = load i32, i32* %25, align 4
  %198 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %199 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_52__*, %struct.TYPE_52__** %32, align 8
  %202 = call %struct.TYPE_52__* @EvalPlanQual(i32* %196, i32 %197, i32 %200, %struct.TYPE_52__* %201)
  store %struct.TYPE_52__* %202, %struct.TYPE_52__** %33, align 8
  %203 = load %struct.TYPE_52__*, %struct.TYPE_52__** %33, align 8
  %204 = call i32 @TupIsNull(%struct.TYPE_52__* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %192
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

207:                                              ; preds = %192
  %208 = load %struct.TYPE_52__**, %struct.TYPE_52__*** %23, align 8
  %209 = icmp ne %struct.TYPE_52__** %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load %struct.TYPE_52__*, %struct.TYPE_52__** %33, align 8
  %212 = load %struct.TYPE_52__**, %struct.TYPE_52__*** %23, align 8
  store %struct.TYPE_52__* %211, %struct.TYPE_52__** %212, align 8
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

213:                                              ; preds = %207
  br label %129

214:                                              ; preds = %169
  %215 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %27, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %216, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %214
  %222 = load i32, i32* @ERROR, align 4
  %223 = load i32, i32* @ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION, align 4
  %224 = call i32 @errcode(i32 %223)
  %225 = call i32 @errmsg(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  %226 = call i32 @errhint(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  %227 = call i32 @ereport(i32 %222, i32 %226)
  br label %228

228:                                              ; preds = %221, %214
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

229:                                              ; preds = %169
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

230:                                              ; preds = %169
  %231 = load i32, i32* @ERROR, align 4
  %232 = load i32, i32* %26, align 4
  %233 = call i32 (i32, i8*, ...) @elog(i32 %231, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %232)
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

234:                                              ; preds = %129
  %235 = call i32 (...) @IsolationUsesXactSnapshot()
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load i32, i32* @ERROR, align 4
  %239 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %240 = call i32 @errcode(i32 %239)
  %241 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %242 = call i32 @ereport(i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %237, %234
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

244:                                              ; preds = %129
  %245 = load i32, i32* @ERROR, align 4
  %246 = load i32, i32* %26, align 4
  %247 = call i32 (i32, i8*, ...) @elog(i32 %245, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %246)
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

248:                                              ; preds = %159
  br label %249

249:                                              ; preds = %248, %123
  br label %250

250:                                              ; preds = %249, %93
  %251 = load i32, i32* %20, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %250
  %254 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %255 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 8
  br label %258

258:                                              ; preds = %253, %250
  %259 = load i32*, i32** %22, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = load i32*, i32** %22, align 8
  store i32 1, i32* %262, align 4
  br label %263

263:                                              ; preds = %261, %258
  %264 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_53__*, %struct.TYPE_53__** %265, align 8
  store %struct.TYPE_53__* %266, %struct.TYPE_53__** %29, align 8
  %267 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @CMD_UPDATE, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %293

272:                                              ; preds = %263
  %273 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_53__*, %struct.TYPE_53__** %274, align 8
  %276 = icmp ne %struct.TYPE_53__* %275, null
  br i1 %276, label %277, label %293

277:                                              ; preds = %272
  %278 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_53__*, %struct.TYPE_53__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %277
  %285 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %286 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %287 = load i32, i32* %14, align 4
  %288 = load i32*, i32** %15, align 8
  %289 = load %struct.TYPE_56__*, %struct.TYPE_56__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_53__*, %struct.TYPE_53__** %290, align 8
  %292 = call i32 @ExecARUpdateTriggers(%struct.TYPE_57__* %285, %struct.TYPE_55__* %286, i32 %287, i32* %288, i32* null, i32* null, %struct.TYPE_53__* %291)
  store %struct.TYPE_53__* null, %struct.TYPE_53__** %29, align 8
  br label %293

293:                                              ; preds = %284, %277, %272, %263
  %294 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %295 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %296 = load i32, i32* %14, align 4
  %297 = load i32*, i32** %15, align 8
  %298 = load %struct.TYPE_53__*, %struct.TYPE_53__** %29, align 8
  %299 = call i32 @ExecARDeleteTriggers(%struct.TYPE_57__* %294, %struct.TYPE_55__* %295, i32 %296, i32* %297, %struct.TYPE_53__* %298)
  %300 = load i32, i32* %19, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %351

302:                                              ; preds = %293
  %303 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %304 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %351

307:                                              ; preds = %302
  %308 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %309 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_51__*, %struct.TYPE_51__** %309, align 8
  %311 = icmp ne %struct.TYPE_51__* %310, null
  br i1 %311, label %312, label %319

312:                                              ; preds = %307
  %313 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %314 = call i32 @TupIsNull(%struct.TYPE_52__* %313)
  %315 = icmp ne i32 %314, 0
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i32
  %318 = call i32 @Assert(i32 %317)
  br label %341

319:                                              ; preds = %307
  %320 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %321 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %322 = call %struct.TYPE_52__* @ExecGetReturningSlot(%struct.TYPE_57__* %320, %struct.TYPE_55__* %321)
  store %struct.TYPE_52__* %322, %struct.TYPE_52__** %28, align 8
  %323 = load i32*, i32** %15, align 8
  %324 = icmp ne i32* %323, null
  br i1 %324, label %325, label %329

325:                                              ; preds = %319
  %326 = load i32*, i32** %15, align 8
  %327 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %328 = call i32 @ExecForceStoreHeapTuple(i32* %326, %struct.TYPE_52__* %327, i32 0)
  br label %340

329:                                              ; preds = %319
  %330 = load i32, i32* %25, align 4
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* @SnapshotAny, align 4
  %333 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %334 = call i32 @table_tuple_fetch_row_version(i32 %330, i32 %331, i32 %332, %struct.TYPE_52__* %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %329
  %337 = load i32, i32* @ERROR, align 4
  %338 = call i32 (i32, i8*, ...) @elog(i32 %337, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %339

339:                                              ; preds = %336, %329
  br label %340

340:                                              ; preds = %339, %325
  br label %341

341:                                              ; preds = %340, %312
  %342 = load %struct.TYPE_55__*, %struct.TYPE_55__** %24, align 8
  %343 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %344 = load %struct.TYPE_52__*, %struct.TYPE_52__** %16, align 8
  %345 = call %struct.TYPE_52__* @ExecProcessReturning(%struct.TYPE_55__* %342, %struct.TYPE_52__* %343, %struct.TYPE_52__* %344)
  store %struct.TYPE_52__* %345, %struct.TYPE_52__** %34, align 8
  %346 = load %struct.TYPE_52__*, %struct.TYPE_52__** %34, align 8
  %347 = call i32 @ExecMaterializeSlot(%struct.TYPE_52__* %346)
  %348 = load %struct.TYPE_52__*, %struct.TYPE_52__** %28, align 8
  %349 = call i32 @ExecClearTuple(%struct.TYPE_52__* %348)
  %350 = load %struct.TYPE_52__*, %struct.TYPE_52__** %34, align 8
  store %struct.TYPE_52__* %350, %struct.TYPE_52__** %12, align 8
  br label %352

351:                                              ; preds = %302, %293
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %12, align 8
  br label %352

352:                                              ; preds = %351, %341, %244, %243, %230, %229, %228, %210, %206, %158, %115, %92, %67
  %353 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  ret %struct.TYPE_52__* %353
}

declare dso_local i32 @ExecBRDeleteTriggers(%struct.TYPE_57__*, i32*, %struct.TYPE_55__*, i32, i32*, %struct.TYPE_52__**) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExecIRDeleteTriggers(%struct.TYPE_57__*, %struct.TYPE_55__*, i32*) #1

declare dso_local %struct.TYPE_52__* @ExecGetReturningSlot(%struct.TYPE_57__*, %struct.TYPE_55__*) #1

declare dso_local i64 @TTS_EMPTY(%struct.TYPE_52__*) #1

declare dso_local i32 @ExecStoreAllNullTuple(%struct.TYPE_52__*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @table_tuple_delete(i32, i32, i32, i32, i32, i32, %struct.TYPE_54__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @IsolationUsesXactSnapshot(...) #1

declare dso_local i32 @EvalPlanQualBegin(i32*) #1

declare dso_local %struct.TYPE_52__* @EvalPlanQualSlot(i32*, i32, i32) #1

declare dso_local i32 @table_tuple_lock(i32, i32, i32, %struct.TYPE_52__*, i32, i32, i32, i32, %struct.TYPE_54__*) #1

declare dso_local %struct.TYPE_52__* @EvalPlanQual(i32*, i32, i32, %struct.TYPE_52__*) #1

declare dso_local i32 @TupIsNull(%struct.TYPE_52__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @ExecARUpdateTriggers(%struct.TYPE_57__*, %struct.TYPE_55__*, i32, i32*, i32*, i32*, %struct.TYPE_53__*) #1

declare dso_local i32 @ExecARDeleteTriggers(%struct.TYPE_57__*, %struct.TYPE_55__*, i32, i32*, %struct.TYPE_53__*) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32*, %struct.TYPE_52__*, i32) #1

declare dso_local i32 @table_tuple_fetch_row_version(i32, i32, i32, %struct.TYPE_52__*) #1

declare dso_local %struct.TYPE_52__* @ExecProcessReturning(%struct.TYPE_55__*, %struct.TYPE_52__*, %struct.TYPE_52__*) #1

declare dso_local i32 @ExecMaterializeSlot(%struct.TYPE_52__*) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_52__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
