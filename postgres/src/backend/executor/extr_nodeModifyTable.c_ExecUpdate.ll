; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecUpdate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_88__ = type { i32, i64, %struct.TYPE_98__*, %struct.TYPE_98__*, i32*, i32, %struct.TYPE_100__*, %struct.TYPE_93__, i32* }
%struct.TYPE_98__ = type { %struct.TYPE_97__*, i32* }
%struct.TYPE_97__ = type { i32 }
%struct.TYPE_100__ = type { i64, i64, i32*, i32, i32, i64, %struct.TYPE_92__*, %struct.TYPE_91__*, %struct.TYPE_87__* }
%struct.TYPE_92__ = type { %struct.TYPE_96__* (%struct.TYPE_90__*, %struct.TYPE_100__*, %struct.TYPE_96__*, %struct.TYPE_96__*)* }
%struct.TYPE_91__ = type { i64, i64 }
%struct.TYPE_87__ = type { %struct.TYPE_95__* }
%struct.TYPE_95__ = type { %struct.TYPE_94__* }
%struct.TYPE_94__ = type { i64 }
%struct.TYPE_93__ = type { i64 }
%struct.TYPE_96__ = type { i8* }
%struct.TYPE_90__ = type { i32, i32, i32, i32, %struct.TYPE_100__* }
%struct.TYPE_99__ = type { i32, i32 }
%struct.TYPE_89__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot UPDATE during bootstrap\00", align 1
@WCO_RLS_UPDATE_CHECK = common dso_local global i32 0, align 4
@ONCONFLICT_UPDATE = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid ON UPDATE specification\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"The result tuple would appear in a different partition than the original tuple.\00", align 1
@ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [90 x i8] c"tuple to be updated was already modified by an operation triggered by the current command\00", align 1
@.str.4 = private unnamed_addr constant [96 x i8] c"Consider using an AFTER trigger instead of a BEFORE trigger to propagate changes to other rows.\00", align 1
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"could not serialize access due to concurrent update\00", align 1
@LockWaitBlock = common dso_local global i32 0, align 4
@TUPLE_LOCK_FLAG_FIND_LAST_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"unexpected table_tuple_lock status: %u\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"could not serialize access due to concurrent delete\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"unrecognized table_tuple_update status: %u\00", align 1
@CMD_INSERT = common dso_local global i64 0, align 8
@WCO_VIEW_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_96__* (%struct.TYPE_88__*, i32, i32, %struct.TYPE_96__*, %struct.TYPE_96__*, i32*, %struct.TYPE_90__*, i32)* @ExecUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_96__* @ExecUpdate(%struct.TYPE_88__* %0, i32 %1, i32 %2, %struct.TYPE_96__* %3, %struct.TYPE_96__* %4, i32* %5, %struct.TYPE_90__* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_96__*, align 8
  %10 = alloca %struct.TYPE_88__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_96__*, align 8
  %14 = alloca %struct.TYPE_96__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_90__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_100__*, align 8
  %19 = alloca %struct.TYPE_87__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_99__, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_97__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_96__*, align 8
  %29 = alloca %struct.TYPE_96__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_97__*, align 8
  %33 = alloca %struct.TYPE_96__*, align 8
  %34 = alloca %struct.TYPE_96__*, align 8
  store %struct.TYPE_88__* %0, %struct.TYPE_88__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_96__* %3, %struct.TYPE_96__** %13, align 8
  store %struct.TYPE_96__* %4, %struct.TYPE_96__** %14, align 8
  store i32* %5, i32** %15, align 8
  store %struct.TYPE_90__* %6, %struct.TYPE_90__** %16, align 8
  store i32 %7, i32* %17, align 4
  %35 = load i32*, i32** @NIL, align 8
  store i32* %35, i32** %22, align 8
  store %struct.TYPE_97__* null, %struct.TYPE_97__** %23, align 8
  %36 = call i64 (...) @IsBootstrapProcessingMode()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %8
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 (i32, i8*, ...) @elog(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %8
  %42 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %43 = call i32 @ExecMaterializeSlot(%struct.TYPE_96__* %42)
  %44 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_100__*, %struct.TYPE_100__** %45, align 8
  store %struct.TYPE_100__* %46, %struct.TYPE_100__** %18, align 8
  %47 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_87__*, %struct.TYPE_87__** %48, align 8
  store %struct.TYPE_87__* %49, %struct.TYPE_87__** %19, align 8
  %50 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_91__*, %struct.TYPE_91__** %51, align 8
  %53 = icmp ne %struct.TYPE_91__* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %41
  %55 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %55, i32 0, i32 7
  %57 = load %struct.TYPE_91__*, %struct.TYPE_91__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %68 = call i32 @ExecBRUpdateTriggers(%struct.TYPE_90__* %62, i32* %63, %struct.TYPE_100__* %64, i32 %65, i32 %66, %struct.TYPE_96__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %54, %41
  %73 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %73, i32 0, i32 7
  %75 = load %struct.TYPE_91__*, %struct.TYPE_91__** %74, align 8
  %76 = icmp ne %struct.TYPE_91__* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_91__*, %struct.TYPE_91__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %86 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %89 = call i32 @ExecIRUpdateTriggers(%struct.TYPE_90__* %85, %struct.TYPE_100__* %86, i32 %87, %struct.TYPE_96__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

92:                                               ; preds = %84
  br label %475

93:                                               ; preds = %77, %72
  %94 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_92__*, %struct.TYPE_92__** %95, align 8
  %97 = icmp ne %struct.TYPE_92__* %96, null
  br i1 %97, label %98, label %137

98:                                               ; preds = %93
  %99 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_95__*, %struct.TYPE_95__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_94__*, %struct.TYPE_94__** %102, align 8
  %104 = icmp ne %struct.TYPE_94__* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %98
  %106 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_95__*, %struct.TYPE_95__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_94__*, %struct.TYPE_94__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %116 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %117 = call i32 @ExecComputeStoredGenerated(%struct.TYPE_90__* %115, %struct.TYPE_96__* %116)
  br label %118

118:                                              ; preds = %114, %105, %98
  %119 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_92__*, %struct.TYPE_92__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_96__* (%struct.TYPE_90__*, %struct.TYPE_100__*, %struct.TYPE_96__*, %struct.TYPE_96__*)*, %struct.TYPE_96__* (%struct.TYPE_90__*, %struct.TYPE_100__*, %struct.TYPE_96__*, %struct.TYPE_96__*)** %122, align 8
  %124 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %125 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %126 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %127 = load %struct.TYPE_96__*, %struct.TYPE_96__** %14, align 8
  %128 = call %struct.TYPE_96__* %123(%struct.TYPE_90__* %124, %struct.TYPE_100__* %125, %struct.TYPE_96__* %126, %struct.TYPE_96__* %127)
  store %struct.TYPE_96__* %128, %struct.TYPE_96__** %13, align 8
  %129 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %130 = icmp eq %struct.TYPE_96__* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %118
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

132:                                              ; preds = %118
  %133 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %134 = call i8* @RelationGetRelid(%struct.TYPE_87__* %133)
  %135 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %474

137:                                              ; preds = %93
  %138 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %139 = call i8* @RelationGetRelid(%struct.TYPE_87__* %138)
  %140 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_95__*, %struct.TYPE_95__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_94__*, %struct.TYPE_94__** %145, align 8
  %147 = icmp ne %struct.TYPE_94__* %146, null
  br i1 %147, label %148, label %161

148:                                              ; preds = %137
  %149 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %150 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_95__*, %struct.TYPE_95__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_94__*, %struct.TYPE_94__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %159 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %160 = call i32 @ExecComputeStoredGenerated(%struct.TYPE_90__* %158, %struct.TYPE_96__* %159)
  br label %161

161:                                              ; preds = %157, %148, %137
  br label %162

162:                                              ; preds = %420, %239, %161
  %163 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %164 = call i32 @ExecMaterializeSlot(%struct.TYPE_96__* %163)
  %165 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %171 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %172 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %173 = call i32 @ExecPartitionCheck(%struct.TYPE_100__* %170, %struct.TYPE_96__* %171, %struct.TYPE_90__* %172, i32 0)
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  br label %176

176:                                              ; preds = %169, %162
  %177 = phi i1 [ false, %162 ], [ %175, %169 ]
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %25, align 4
  %179 = load i32, i32* %25, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32*, i32** @NIL, align 8
  %186 = icmp ne i32* %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32, i32* @WCO_RLS_UPDATE_CHECK, align 4
  %189 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %190 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %191 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %192 = call i32 @ExecWithCheckOptions(i32 %188, %struct.TYPE_100__* %189, %struct.TYPE_96__* %190, %struct.TYPE_90__* %191)
  br label %193

193:                                              ; preds = %187, %181, %176
  %194 = load i32, i32* %25, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %332

196:                                              ; preds = %193
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %29, align 8
  %197 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %197, i32 0, i32 8
  %199 = load i32*, i32** %198, align 8
  store i32* %199, i32** %30, align 8
  %200 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %200, i32 0, i32 7
  %202 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to %struct.TYPE_89__*
  %205 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @ONCONFLICT_UPDATE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %196
  %210 = load i32, i32* @ERROR, align 4
  %211 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %212 = call i32 @errcode(i32 %211)
  %213 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %214 = call i32 @errdetail(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  %215 = call i32 @ereport(i32 %210, i32 %214)
  br label %216

216:                                              ; preds = %209, %196
  %217 = load i32*, i32** %30, align 8
  %218 = icmp eq i32* %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %221 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %222 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %223 = call i32 @ExecPartitionCheckEmitError(%struct.TYPE_100__* %220, %struct.TYPE_96__* %221, %struct.TYPE_90__* %222)
  br label %224

224:                                              ; preds = %219, %216
  %225 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %12, align 4
  %228 = load %struct.TYPE_96__*, %struct.TYPE_96__** %14, align 8
  %229 = load i32*, i32** %15, align 8
  %230 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %231 = call i32 @ExecDelete(%struct.TYPE_88__* %225, i32 %226, i32 %227, %struct.TYPE_96__* %228, i32* %229, %struct.TYPE_90__* %230, i32 0, i32 0, i32 1, i32* %27, %struct.TYPE_96__** %29)
  %232 = load i32, i32* %27, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %245, label %234

234:                                              ; preds = %224
  %235 = load %struct.TYPE_96__*, %struct.TYPE_96__** %29, align 8
  %236 = call i64 @TupIsNull(%struct.TYPE_96__* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

239:                                              ; preds = %234
  %240 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_96__*, %struct.TYPE_96__** %29, align 8
  %244 = call %struct.TYPE_96__* @ExecFilterJunk(i32 %242, %struct.TYPE_96__* %243)
  store %struct.TYPE_96__* %244, %struct.TYPE_96__** %13, align 8
  br label %162

245:                                              ; preds = %224
  %246 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_98__*, %struct.TYPE_98__** %247, align 8
  %249 = icmp ne %struct.TYPE_98__* %248, null
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_98__*, %struct.TYPE_98__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_97__*, %struct.TYPE_97__** %254, align 8
  store %struct.TYPE_97__* %255, %struct.TYPE_97__** %23, align 8
  br label %256

256:                                              ; preds = %250, %245
  %257 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %258 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %258, i32 0, i32 6
  %260 = load %struct.TYPE_100__*, %struct.TYPE_100__** %259, align 8
  %261 = ptrtoint %struct.TYPE_100__* %257 to i64
  %262 = ptrtoint %struct.TYPE_100__* %260 to i64
  %263 = sub i64 %261, %262
  %264 = sdiv exact i64 %263, 64
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %31, align 4
  %266 = load i32, i32* %31, align 4
  %267 = icmp sge i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %256
  %269 = load i32, i32* %31, align 4
  %270 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %269, %272
  br label %274

274:                                              ; preds = %268, %256
  %275 = phi i1 [ false, %256 ], [ %273, %268 ]
  %276 = zext i1 %275 to i32
  %277 = call i32 @Assert(i32 %276)
  %278 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %279 = load i32, i32* %31, align 4
  %280 = call %struct.TYPE_97__* @tupconv_map_for_subplan(%struct.TYPE_88__* %278, i32 %279)
  store %struct.TYPE_97__* %280, %struct.TYPE_97__** %32, align 8
  %281 = load %struct.TYPE_97__*, %struct.TYPE_97__** %32, align 8
  %282 = icmp ne %struct.TYPE_97__* %281, null
  br i1 %282, label %283, label %292

283:                                              ; preds = %274
  %284 = load %struct.TYPE_97__*, %struct.TYPE_97__** %32, align 8
  %285 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %288 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = call %struct.TYPE_96__* @execute_attr_map_slot(i32 %286, %struct.TYPE_96__* %287, i32 %290)
  store %struct.TYPE_96__* %291, %struct.TYPE_96__** %13, align 8
  br label %292

292:                                              ; preds = %283, %274
  %293 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %293, i32 0, i32 4
  %295 = load i32*, i32** %294, align 8
  %296 = icmp ne i32* %295, null
  %297 = zext i1 %296 to i32
  %298 = call i32 @Assert(i32 %297)
  %299 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %300 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %301 = load i32*, i32** %30, align 8
  %302 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %302, i32 0, i32 4
  %304 = load i32*, i32** %303, align 8
  %305 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %306 = call %struct.TYPE_96__* @ExecPrepareTupleRouting(%struct.TYPE_88__* %299, %struct.TYPE_90__* %300, i32* %301, i32* %304, %struct.TYPE_96__* %305)
  store %struct.TYPE_96__* %306, %struct.TYPE_96__** %13, align 8
  %307 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %308 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %309 = load %struct.TYPE_96__*, %struct.TYPE_96__** %14, align 8
  %310 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %311 = load i32, i32* %17, align 4
  %312 = call %struct.TYPE_96__* @ExecInsert(%struct.TYPE_88__* %307, %struct.TYPE_96__* %308, %struct.TYPE_96__* %309, %struct.TYPE_90__* %310, i32 %311)
  store %struct.TYPE_96__* %312, %struct.TYPE_96__** %28, align 8
  %313 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %314 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %315 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %314, i32 0, i32 4
  store %struct.TYPE_100__* %313, %struct.TYPE_100__** %315, align 8
  %316 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %316, i32 0, i32 2
  %318 = load %struct.TYPE_98__*, %struct.TYPE_98__** %317, align 8
  %319 = icmp ne %struct.TYPE_98__* %318, null
  br i1 %319, label %320, label %330

320:                                              ; preds = %292
  %321 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_98__*, %struct.TYPE_98__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %323, i32 0, i32 1
  store i32* null, i32** %324, align 8
  %325 = load %struct.TYPE_97__*, %struct.TYPE_97__** %23, align 8
  %326 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_98__*, %struct.TYPE_98__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %328, i32 0, i32 0
  store %struct.TYPE_97__* %325, %struct.TYPE_97__** %329, align 8
  br label %330

330:                                              ; preds = %320, %292
  %331 = load %struct.TYPE_96__*, %struct.TYPE_96__** %28, align 8
  store %struct.TYPE_96__* %331, %struct.TYPE_96__** %9, align 8
  br label %530

332:                                              ; preds = %193
  %333 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %334 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_95__*, %struct.TYPE_95__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_94__*, %struct.TYPE_94__** %336, align 8
  %338 = icmp ne %struct.TYPE_94__* %337, null
  br i1 %338, label %339, label %344

339:                                              ; preds = %332
  %340 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %341 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %342 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %343 = call i32 @ExecConstraints(%struct.TYPE_100__* %340, %struct.TYPE_96__* %341, %struct.TYPE_90__* %342)
  br label %344

344:                                              ; preds = %339, %332
  %345 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %346 = load i32, i32* %11, align 4
  %347 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %348 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %349 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %352 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %355 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @table_tuple_update(%struct.TYPE_87__* %345, i32 %346, %struct.TYPE_96__* %347, i32 %350, i32 %353, i32 %356, i32 1, %struct.TYPE_99__* %21, i32* %24, i32* %26)
  store i32 %357, i32* %20, align 4
  %358 = load i32, i32* %20, align 4
  switch i32 %358, label %456 [
    i32 129, label %359
    i32 130, label %374
    i32 128, label %375
    i32 131, label %446
  ]

359:                                              ; preds = %344
  %360 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %21, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %363 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = icmp ne i32 %361, %364
  br i1 %365, label %366, label %373

366:                                              ; preds = %359
  %367 = load i32, i32* @ERROR, align 4
  %368 = load i32, i32* @ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION, align 4
  %369 = call i32 @errcode(i32 %368)
  %370 = call i32 @errmsg(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  %371 = call i32 @errhint(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.4, i64 0, i64 0))
  %372 = call i32 @ereport(i32 %367, i32 %371)
  br label %373

373:                                              ; preds = %366, %359
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

374:                                              ; preds = %344
  br label %460

375:                                              ; preds = %344
  %376 = call i32 (...) @IsolationUsesXactSnapshot()
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %375
  %379 = load i32, i32* @ERROR, align 4
  %380 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %381 = call i32 @errcode(i32 %380)
  %382 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %383 = call i32 @ereport(i32 %379, i32 %382)
  br label %384

384:                                              ; preds = %378, %375
  %385 = load i32*, i32** %15, align 8
  %386 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %387 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %388 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 4
  %390 = call %struct.TYPE_96__* @EvalPlanQualSlot(i32* %385, %struct.TYPE_87__* %386, i32 %389)
  store %struct.TYPE_96__* %390, %struct.TYPE_96__** %33, align 8
  %391 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %392 = load i32, i32* %11, align 4
  %393 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %394 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.TYPE_96__*, %struct.TYPE_96__** %33, align 8
  %397 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %398 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %24, align 4
  %401 = load i32, i32* @LockWaitBlock, align 4
  %402 = load i32, i32* @TUPLE_LOCK_FLAG_FIND_LAST_VERSION, align 4
  %403 = call i32 @table_tuple_lock(%struct.TYPE_87__* %391, i32 %392, i32 %395, %struct.TYPE_96__* %396, i32 %399, i32 %400, i32 %401, i32 %402, %struct.TYPE_99__* %21)
  store i32 %403, i32* %20, align 4
  %404 = load i32, i32* %20, align 4
  switch i32 %404, label %442 [
    i32 130, label %405
    i32 131, label %426
    i32 129, label %427
  ]

405:                                              ; preds = %384
  %406 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %21, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @Assert(i32 %407)
  %409 = load i32*, i32** %15, align 8
  %410 = load %struct.TYPE_87__*, %struct.TYPE_87__** %19, align 8
  %411 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %412 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_96__*, %struct.TYPE_96__** %33, align 8
  %415 = call %struct.TYPE_96__* @EvalPlanQual(i32* %409, %struct.TYPE_87__* %410, i32 %413, %struct.TYPE_96__* %414)
  store %struct.TYPE_96__* %415, %struct.TYPE_96__** %34, align 8
  %416 = load %struct.TYPE_96__*, %struct.TYPE_96__** %34, align 8
  %417 = call i64 @TupIsNull(%struct.TYPE_96__* %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %405
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

420:                                              ; preds = %405
  %421 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %422 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.TYPE_96__*, %struct.TYPE_96__** %34, align 8
  %425 = call %struct.TYPE_96__* @ExecFilterJunk(i32 %423, %struct.TYPE_96__* %424)
  store %struct.TYPE_96__* %425, %struct.TYPE_96__** %13, align 8
  br label %162

426:                                              ; preds = %384
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

427:                                              ; preds = %384
  %428 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %21, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %431 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %429, %432
  br i1 %433, label %434, label %441

434:                                              ; preds = %427
  %435 = load i32, i32* @ERROR, align 4
  %436 = load i32, i32* @ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION, align 4
  %437 = call i32 @errcode(i32 %436)
  %438 = call i32 @errmsg(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  %439 = call i32 @errhint(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.4, i64 0, i64 0))
  %440 = call i32 @ereport(i32 %435, i32 %439)
  br label %441

441:                                              ; preds = %434, %427
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

442:                                              ; preds = %384
  %443 = load i32, i32* @ERROR, align 4
  %444 = load i32, i32* %20, align 4
  %445 = call i32 (i32, i8*, ...) @elog(i32 %443, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %444)
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

446:                                              ; preds = %344
  %447 = call i32 (...) @IsolationUsesXactSnapshot()
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %455

449:                                              ; preds = %446
  %450 = load i32, i32* @ERROR, align 4
  %451 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %452 = call i32 @errcode(i32 %451)
  %453 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %454 = call i32 @ereport(i32 %450, i32 %453)
  br label %455

455:                                              ; preds = %449, %446
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

456:                                              ; preds = %344
  %457 = load i32, i32* @ERROR, align 4
  %458 = load i32, i32* %20, align 4
  %459 = call i32 (i32, i8*, ...) @elog(i32 %457, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %458)
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

460:                                              ; preds = %374
  %461 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %462 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = icmp sgt i64 %463, 0
  br i1 %464, label %465, label %473

465:                                              ; preds = %460
  %466 = load i32, i32* %26, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %473

468:                                              ; preds = %465
  %469 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %470 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %471 = load i32*, i32** @NIL, align 8
  %472 = call i32* @ExecInsertIndexTuples(%struct.TYPE_96__* %469, %struct.TYPE_90__* %470, i32 0, i32* null, i32* %471)
  store i32* %472, i32** %22, align 8
  br label %473

473:                                              ; preds = %468, %465, %460
  br label %474

474:                                              ; preds = %473, %132
  br label %475

475:                                              ; preds = %474, %92
  %476 = load i32, i32* %17, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %475
  %479 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %480 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %480, align 8
  br label %483

483:                                              ; preds = %478, %475
  %484 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %485 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %486 = load i32, i32* %11, align 4
  %487 = load i32, i32* %12, align 4
  %488 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %489 = load i32*, i32** %22, align 8
  %490 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %491 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %490, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @CMD_INSERT, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %495, label %499

495:                                              ; preds = %483
  %496 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %497 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %496, i32 0, i32 3
  %498 = load %struct.TYPE_98__*, %struct.TYPE_98__** %497, align 8
  br label %503

499:                                              ; preds = %483
  %500 = load %struct.TYPE_88__*, %struct.TYPE_88__** %10, align 8
  %501 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %500, i32 0, i32 2
  %502 = load %struct.TYPE_98__*, %struct.TYPE_98__** %501, align 8
  br label %503

503:                                              ; preds = %499, %495
  %504 = phi %struct.TYPE_98__* [ %498, %495 ], [ %502, %499 ]
  %505 = call i32 @ExecARUpdateTriggers(%struct.TYPE_90__* %484, %struct.TYPE_100__* %485, i32 %486, i32 %487, %struct.TYPE_96__* %488, i32* %489, %struct.TYPE_98__* %504)
  %506 = load i32*, i32** %22, align 8
  %507 = call i32 @list_free(i32* %506)
  %508 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %509 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %508, i32 0, i32 2
  %510 = load i32*, i32** %509, align 8
  %511 = load i32*, i32** @NIL, align 8
  %512 = icmp ne i32* %510, %511
  br i1 %512, label %513, label %519

513:                                              ; preds = %503
  %514 = load i32, i32* @WCO_VIEW_CHECK, align 4
  %515 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %516 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %517 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %518 = call i32 @ExecWithCheckOptions(i32 %514, %struct.TYPE_100__* %515, %struct.TYPE_96__* %516, %struct.TYPE_90__* %517)
  br label %519

519:                                              ; preds = %513, %503
  %520 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %521 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %520, i32 0, i32 1
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %529

524:                                              ; preds = %519
  %525 = load %struct.TYPE_100__*, %struct.TYPE_100__** %18, align 8
  %526 = load %struct.TYPE_96__*, %struct.TYPE_96__** %13, align 8
  %527 = load %struct.TYPE_96__*, %struct.TYPE_96__** %14, align 8
  %528 = call %struct.TYPE_96__* @ExecProcessReturning(%struct.TYPE_100__* %525, %struct.TYPE_96__* %526, %struct.TYPE_96__* %527)
  store %struct.TYPE_96__* %528, %struct.TYPE_96__** %9, align 8
  br label %530

529:                                              ; preds = %519
  store %struct.TYPE_96__* null, %struct.TYPE_96__** %9, align 8
  br label %530

530:                                              ; preds = %529, %524, %456, %455, %442, %441, %426, %419, %373, %330, %238, %131, %91, %70
  %531 = load %struct.TYPE_96__*, %struct.TYPE_96__** %9, align 8
  ret %struct.TYPE_96__* %531
}

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @ExecMaterializeSlot(%struct.TYPE_96__*) #1

declare dso_local i32 @ExecBRUpdateTriggers(%struct.TYPE_90__*, i32*, %struct.TYPE_100__*, i32, i32, %struct.TYPE_96__*) #1

declare dso_local i32 @ExecIRUpdateTriggers(%struct.TYPE_90__*, %struct.TYPE_100__*, i32, %struct.TYPE_96__*) #1

declare dso_local i32 @ExecComputeStoredGenerated(%struct.TYPE_90__*, %struct.TYPE_96__*) #1

declare dso_local i8* @RelationGetRelid(%struct.TYPE_87__*) #1

declare dso_local i32 @ExecPartitionCheck(%struct.TYPE_100__*, %struct.TYPE_96__*, %struct.TYPE_90__*, i32) #1

declare dso_local i32 @ExecWithCheckOptions(i32, %struct.TYPE_100__*, %struct.TYPE_96__*, %struct.TYPE_90__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @ExecPartitionCheckEmitError(%struct.TYPE_100__*, %struct.TYPE_96__*, %struct.TYPE_90__*) #1

declare dso_local i32 @ExecDelete(%struct.TYPE_88__*, i32, i32, %struct.TYPE_96__*, i32*, %struct.TYPE_90__*, i32, i32, i32, i32*, %struct.TYPE_96__**) #1

declare dso_local i64 @TupIsNull(%struct.TYPE_96__*) #1

declare dso_local %struct.TYPE_96__* @ExecFilterJunk(i32, %struct.TYPE_96__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_97__* @tupconv_map_for_subplan(%struct.TYPE_88__*, i32) #1

declare dso_local %struct.TYPE_96__* @execute_attr_map_slot(i32, %struct.TYPE_96__*, i32) #1

declare dso_local %struct.TYPE_96__* @ExecPrepareTupleRouting(%struct.TYPE_88__*, %struct.TYPE_90__*, i32*, i32*, %struct.TYPE_96__*) #1

declare dso_local %struct.TYPE_96__* @ExecInsert(%struct.TYPE_88__*, %struct.TYPE_96__*, %struct.TYPE_96__*, %struct.TYPE_90__*, i32) #1

declare dso_local i32 @ExecConstraints(%struct.TYPE_100__*, %struct.TYPE_96__*, %struct.TYPE_90__*) #1

declare dso_local i32 @table_tuple_update(%struct.TYPE_87__*, i32, %struct.TYPE_96__*, i32, i32, i32, i32, %struct.TYPE_99__*, i32*, i32*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @IsolationUsesXactSnapshot(...) #1

declare dso_local %struct.TYPE_96__* @EvalPlanQualSlot(i32*, %struct.TYPE_87__*, i32) #1

declare dso_local i32 @table_tuple_lock(%struct.TYPE_87__*, i32, i32, %struct.TYPE_96__*, i32, i32, i32, i32, %struct.TYPE_99__*) #1

declare dso_local %struct.TYPE_96__* @EvalPlanQual(i32*, %struct.TYPE_87__*, i32, %struct.TYPE_96__*) #1

declare dso_local i32* @ExecInsertIndexTuples(%struct.TYPE_96__*, %struct.TYPE_90__*, i32, i32*, i32*) #1

declare dso_local i32 @ExecARUpdateTriggers(%struct.TYPE_90__*, %struct.TYPE_100__*, i32, i32, %struct.TYPE_96__*, i32*, %struct.TYPE_98__*) #1

declare dso_local i32 @list_free(i32*) #1

declare dso_local %struct.TYPE_96__* @ExecProcessReturning(%struct.TYPE_100__*, %struct.TYPE_96__*, %struct.TYPE_96__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
