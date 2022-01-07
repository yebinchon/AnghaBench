; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_85__ = type { i64, %struct.TYPE_82__*, %struct.TYPE_77__ }
%struct.TYPE_82__ = type { i64 }
%struct.TYPE_77__ = type { i64 }
%struct.TYPE_81__ = type { i32, i8* }
%struct.TYPE_75__ = type { i32, i32, %struct.TYPE_83__* }
%struct.TYPE_83__ = type { i64, i64, i32*, i32*, %struct.TYPE_80__*, i32*, i64, %struct.TYPE_84__*, %struct.TYPE_76__* }
%struct.TYPE_80__ = type { i64, i64 }
%struct.TYPE_84__ = type { %struct.TYPE_79__* }
%struct.TYPE_79__ = type { %struct.TYPE_78__* }
%struct.TYPE_78__ = type { i64 }
%struct.TYPE_76__ = type { %struct.TYPE_81__* (%struct.TYPE_75__*, %struct.TYPE_83__*, %struct.TYPE_81__*, %struct.TYPE_81__*)* }
%struct.TYPE_74__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@CMD_UPDATE = common dso_local global i64 0, align 8
@WCO_RLS_UPDATE_CHECK = common dso_local global i32 0, align 4
@WCO_RLS_INSERT_CHECK = common dso_local global i32 0, align 4
@ONCONFLICT_NONE = common dso_local global i64 0, align 8
@ONCONFLICT_UPDATE = common dso_local global i64 0, align 8
@ONCONFLICT_NOTHING = common dso_local global i64 0, align 8
@WCO_VIEW_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_81__* (%struct.TYPE_85__*, %struct.TYPE_81__*, %struct.TYPE_81__*, %struct.TYPE_75__*, i32)* @ExecInsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_81__* @ExecInsert(%struct.TYPE_85__* %0, %struct.TYPE_81__* %1, %struct.TYPE_81__* %2, %struct.TYPE_75__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_81__*, align 8
  %7 = alloca %struct.TYPE_85__*, align 8
  %8 = alloca %struct.TYPE_81__*, align 8
  %9 = alloca %struct.TYPE_81__*, align 8
  %10 = alloca %struct.TYPE_75__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_83__*, align 8
  %13 = alloca %struct.TYPE_84__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_81__*, align 8
  %16 = alloca %struct.TYPE_82__*, align 8
  %17 = alloca %struct.TYPE_74__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_81__*, align 8
  store %struct.TYPE_85__* %0, %struct.TYPE_85__** %7, align 8
  store %struct.TYPE_81__* %1, %struct.TYPE_81__** %8, align 8
  store %struct.TYPE_81__* %2, %struct.TYPE_81__** %9, align 8
  store %struct.TYPE_75__* %3, %struct.TYPE_75__** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load i32*, i32** @NIL, align 8
  store i32* %25, i32** %14, align 8
  store %struct.TYPE_81__* null, %struct.TYPE_81__** %15, align 8
  %26 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_74__*
  store %struct.TYPE_74__* %30, %struct.TYPE_74__** %17, align 8
  %31 = load %struct.TYPE_74__*, %struct.TYPE_74__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %18, align 8
  %34 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %35 = call i32 @ExecMaterializeSlot(%struct.TYPE_81__* %34)
  %36 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_83__*, %struct.TYPE_83__** %37, align 8
  store %struct.TYPE_83__* %38, %struct.TYPE_83__** %12, align 8
  %39 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %39, i32 0, i32 7
  %41 = load %struct.TYPE_84__*, %struct.TYPE_84__** %40, align 8
  store %struct.TYPE_84__* %41, %struct.TYPE_84__** %13, align 8
  %42 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_80__*, %struct.TYPE_80__** %43, align 8
  %45 = icmp ne %struct.TYPE_80__* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %5
  %47 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_80__*, %struct.TYPE_80__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %55 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %56 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %57 = call i32 @ExecBRInsertTriggers(%struct.TYPE_75__* %54, %struct.TYPE_83__* %55, %struct.TYPE_81__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  store %struct.TYPE_81__* null, %struct.TYPE_81__** %6, align 8
  br label %387

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %46, %5
  %62 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_80__*, %struct.TYPE_80__** %63, align 8
  %65 = icmp ne %struct.TYPE_80__* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_80__*, %struct.TYPE_80__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %75 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %76 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %77 = call i32 @ExecIRInsertTriggers(%struct.TYPE_75__* %74, %struct.TYPE_83__* %75, %struct.TYPE_81__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store %struct.TYPE_81__* null, %struct.TYPE_81__** %6, align 8
  br label %387

80:                                               ; preds = %73
  br label %315

81:                                               ; preds = %66, %61
  %82 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %82, i32 0, i32 8
  %84 = load %struct.TYPE_76__*, %struct.TYPE_76__** %83, align 8
  %85 = icmp ne %struct.TYPE_76__* %84, null
  br i1 %85, label %86, label %127

86:                                               ; preds = %81
  %87 = load %struct.TYPE_84__*, %struct.TYPE_84__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_79__*, %struct.TYPE_79__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_78__*, %struct.TYPE_78__** %90, align 8
  %92 = icmp ne %struct.TYPE_78__* %91, null
  br i1 %92, label %93, label %106

93:                                               ; preds = %86
  %94 = load %struct.TYPE_84__*, %struct.TYPE_84__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_79__*, %struct.TYPE_79__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_78__*, %struct.TYPE_78__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %104 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %105 = call i32 @ExecComputeStoredGenerated(%struct.TYPE_75__* %103, %struct.TYPE_81__* %104)
  br label %106

106:                                              ; preds = %102, %93, %86
  %107 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %107, i32 0, i32 8
  %109 = load %struct.TYPE_76__*, %struct.TYPE_76__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_81__* (%struct.TYPE_75__*, %struct.TYPE_83__*, %struct.TYPE_81__*, %struct.TYPE_81__*)*, %struct.TYPE_81__* (%struct.TYPE_75__*, %struct.TYPE_83__*, %struct.TYPE_81__*, %struct.TYPE_81__*)** %110, align 8
  %112 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %113 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %114 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %115 = load %struct.TYPE_81__*, %struct.TYPE_81__** %9, align 8
  %116 = call %struct.TYPE_81__* %111(%struct.TYPE_75__* %112, %struct.TYPE_83__* %113, %struct.TYPE_81__* %114, %struct.TYPE_81__* %115)
  store %struct.TYPE_81__* %116, %struct.TYPE_81__** %8, align 8
  %117 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %118 = icmp eq %struct.TYPE_81__* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  store %struct.TYPE_81__* null, %struct.TYPE_81__** %6, align 8
  br label %387

120:                                              ; preds = %106
  %121 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_84__*, %struct.TYPE_84__** %122, align 8
  %124 = call i8* @RelationGetRelid(%struct.TYPE_84__* %123)
  %125 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  br label %314

127:                                              ; preds = %81
  %128 = load %struct.TYPE_84__*, %struct.TYPE_84__** %13, align 8
  %129 = call i8* @RelationGetRelid(%struct.TYPE_84__* %128)
  %130 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_84__*, %struct.TYPE_84__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_79__*, %struct.TYPE_79__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_78__*, %struct.TYPE_78__** %135, align 8
  %137 = icmp ne %struct.TYPE_78__* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %127
  %139 = load %struct.TYPE_84__*, %struct.TYPE_84__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_79__*, %struct.TYPE_79__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_78__*, %struct.TYPE_78__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %138
  %148 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %149 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %150 = call i32 @ExecComputeStoredGenerated(%struct.TYPE_75__* %148, %struct.TYPE_81__* %149)
  br label %151

151:                                              ; preds = %147, %138, %127
  %152 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @CMD_UPDATE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @WCO_RLS_UPDATE_CHECK, align 4
  br label %161

159:                                              ; preds = %151
  %160 = load i32, i32* @WCO_RLS_INSERT_CHECK, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  store i32 %162, i32* %19, align 4
  %163 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32*, i32** @NIL, align 8
  %167 = icmp ne i32* %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = load i32, i32* %19, align 4
  %170 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %171 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %172 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %173 = call i32 @ExecWithCheckOptions(i32 %169, %struct.TYPE_83__* %170, %struct.TYPE_81__* %171, %struct.TYPE_75__* %172)
  br label %174

174:                                              ; preds = %168, %161
  %175 = load %struct.TYPE_84__*, %struct.TYPE_84__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_79__*, %struct.TYPE_79__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_78__*, %struct.TYPE_78__** %178, align 8
  %180 = icmp ne %struct.TYPE_78__* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  %182 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %183 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %184 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %185 = call i32 @ExecConstraints(%struct.TYPE_83__* %182, %struct.TYPE_81__* %183, %struct.TYPE_75__* %184)
  br label %186

186:                                              ; preds = %181, %174
  %187 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %213

191:                                              ; preds = %186
  %192 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %208, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_80__*, %struct.TYPE_80__** %198, align 8
  %200 = icmp ne %struct.TYPE_80__* %199, null
  br i1 %200, label %201, label %213

201:                                              ; preds = %196
  %202 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_80__*, %struct.TYPE_80__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %201, %191
  %209 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %210 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %211 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %212 = call i32 @ExecPartitionCheck(%struct.TYPE_83__* %209, %struct.TYPE_81__* %210, %struct.TYPE_75__* %211, i32 1)
  br label %213

213:                                              ; preds = %208, %201, %196, %186
  %214 = load i64, i64* %18, align 8
  %215 = load i64, i64* @ONCONFLICT_NONE, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %296

217:                                              ; preds = %213
  %218 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %296

222:                                              ; preds = %217
  %223 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  store i32* %225, i32** %23, align 8
  br label %226

226:                                              ; preds = %292, %250, %222
  store i32 0, i32* %22, align 4
  %227 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %228 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %229 = load i32*, i32** %23, align 8
  %230 = call i32 @ExecCheckIndexConstraints(%struct.TYPE_81__* %227, %struct.TYPE_75__* %228, i32* %21, i32* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %266, label %232

232:                                              ; preds = %226
  %233 = load i64, i64* %18, align 8
  %234 = load i64, i64* @ONCONFLICT_UPDATE, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %251

236:                                              ; preds = %232
  store %struct.TYPE_81__* null, %struct.TYPE_81__** %24, align 8
  %237 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %238 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %239 = load %struct.TYPE_81__*, %struct.TYPE_81__** %9, align 8
  %240 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %241 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %242 = load i32, i32* %11, align 4
  %243 = call i64 @ExecOnConflictUpdate(%struct.TYPE_85__* %237, %struct.TYPE_83__* %238, i32* %21, %struct.TYPE_81__* %239, %struct.TYPE_81__* %240, %struct.TYPE_75__* %241, i32 %242, %struct.TYPE_81__** %24)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %236
  %246 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %246, i32 0, i32 2
  %248 = call i32 @InstrCountTuples2(%struct.TYPE_77__* %247, i32 1)
  %249 = load %struct.TYPE_81__*, %struct.TYPE_81__** %24, align 8
  store %struct.TYPE_81__* %249, %struct.TYPE_81__** %6, align 8
  br label %387

250:                                              ; preds = %236
  br label %226

251:                                              ; preds = %232
  %252 = load i64, i64* %18, align 8
  %253 = load i64, i64* @ONCONFLICT_NOTHING, align 8
  %254 = icmp eq i64 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @Assert(i32 %255)
  %257 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %258 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %259 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %260 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %261 = call i32 @ExecGetReturningSlot(%struct.TYPE_75__* %259, %struct.TYPE_83__* %260)
  %262 = call i32 @ExecCheckTIDVisible(%struct.TYPE_75__* %257, %struct.TYPE_83__* %258, i32* %21, i32 %261)
  %263 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %263, i32 0, i32 2
  %265 = call i32 @InstrCountTuples2(%struct.TYPE_77__* %264, i32 1)
  store %struct.TYPE_81__* null, %struct.TYPE_81__** %6, align 8
  br label %387

266:                                              ; preds = %226
  %267 = call i32 (...) @GetCurrentTransactionId()
  %268 = call i32 @SpeculativeInsertionLockAcquire(i32 %267)
  store i32 %268, i32* %20, align 4
  %269 = load %struct.TYPE_84__*, %struct.TYPE_84__** %13, align 8
  %270 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %271 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %20, align 4
  %275 = call i32 @table_tuple_insert_speculative(%struct.TYPE_84__* %269, %struct.TYPE_81__* %270, i32 %273, i32 0, i32* null, i32 %274)
  %276 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %277 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %278 = load i32*, i32** %23, align 8
  %279 = call i32* @ExecInsertIndexTuples(%struct.TYPE_81__* %276, %struct.TYPE_75__* %277, i32 1, i32* %22, i32* %278)
  store i32* %279, i32** %14, align 8
  %280 = load %struct.TYPE_84__*, %struct.TYPE_84__** %13, align 8
  %281 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %282 = load i32, i32* %20, align 4
  %283 = load i32, i32* %22, align 4
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  %286 = zext i1 %285 to i32
  %287 = call i32 @table_tuple_complete_speculative(%struct.TYPE_84__* %280, %struct.TYPE_81__* %281, i32 %282, i32 %286)
  %288 = call i32 (...) @GetCurrentTransactionId()
  %289 = call i32 @SpeculativeInsertionLockRelease(i32 %288)
  %290 = load i32, i32* %22, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %266
  %293 = load i32*, i32** %14, align 8
  %294 = call i32 @list_free(i32* %293)
  br label %226

295:                                              ; preds = %266
  br label %313

296:                                              ; preds = %217, %213
  %297 = load %struct.TYPE_84__*, %struct.TYPE_84__** %13, align 8
  %298 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %299 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @table_tuple_insert(%struct.TYPE_84__* %297, %struct.TYPE_81__* %298, i32 %301, i32 0, i32* null)
  %303 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp sgt i64 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %296
  %308 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %309 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %310 = load i32*, i32** @NIL, align 8
  %311 = call i32* @ExecInsertIndexTuples(%struct.TYPE_81__* %308, %struct.TYPE_75__* %309, i32 0, i32* null, i32* %310)
  store i32* %311, i32** %14, align 8
  br label %312

312:                                              ; preds = %307, %296
  br label %313

313:                                              ; preds = %312, %295
  br label %314

314:                                              ; preds = %313, %120
  br label %315

315:                                              ; preds = %314, %80
  %316 = load i32, i32* %11, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %326

318:                                              ; preds = %315
  %319 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 8
  %323 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %323, i32 0, i32 0
  %325 = call i32 @setLastTid(i32* %324)
  br label %326

326:                                              ; preds = %318, %315
  %327 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_82__*, %struct.TYPE_82__** %328, align 8
  store %struct.TYPE_82__* %329, %struct.TYPE_82__** %16, align 8
  %330 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @CMD_UPDATE, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %355

335:                                              ; preds = %326
  %336 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_82__*, %struct.TYPE_82__** %337, align 8
  %339 = icmp ne %struct.TYPE_82__* %338, null
  br i1 %339, label %340, label %355

340:                                              ; preds = %335
  %341 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_82__*, %struct.TYPE_82__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %340
  %348 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %349 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %350 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %351 = load %struct.TYPE_85__*, %struct.TYPE_85__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_82__*, %struct.TYPE_82__** %352, align 8
  %354 = call i32 @ExecARUpdateTriggers(%struct.TYPE_75__* %348, %struct.TYPE_83__* %349, i32* null, i32* null, %struct.TYPE_81__* %350, i32* null, %struct.TYPE_82__* %353)
  store %struct.TYPE_82__* null, %struct.TYPE_82__** %16, align 8
  br label %355

355:                                              ; preds = %347, %340, %335, %326
  %356 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %357 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %358 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %359 = load i32*, i32** %14, align 8
  %360 = load %struct.TYPE_82__*, %struct.TYPE_82__** %16, align 8
  %361 = call i32 @ExecARInsertTriggers(%struct.TYPE_75__* %356, %struct.TYPE_83__* %357, %struct.TYPE_81__* %358, i32* %359, %struct.TYPE_82__* %360)
  %362 = load i32*, i32** %14, align 8
  %363 = call i32 @list_free(i32* %362)
  %364 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %365 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %364, i32 0, i32 2
  %366 = load i32*, i32** %365, align 8
  %367 = load i32*, i32** @NIL, align 8
  %368 = icmp ne i32* %366, %367
  br i1 %368, label %369, label %375

369:                                              ; preds = %355
  %370 = load i32, i32* @WCO_VIEW_CHECK, align 4
  %371 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %372 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %373 = load %struct.TYPE_75__*, %struct.TYPE_75__** %10, align 8
  %374 = call i32 @ExecWithCheckOptions(i32 %370, %struct.TYPE_83__* %371, %struct.TYPE_81__* %372, %struct.TYPE_75__* %373)
  br label %375

375:                                              ; preds = %369, %355
  %376 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %377 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %375
  %381 = load %struct.TYPE_83__*, %struct.TYPE_83__** %12, align 8
  %382 = load %struct.TYPE_81__*, %struct.TYPE_81__** %8, align 8
  %383 = load %struct.TYPE_81__*, %struct.TYPE_81__** %9, align 8
  %384 = call %struct.TYPE_81__* @ExecProcessReturning(%struct.TYPE_83__* %381, %struct.TYPE_81__* %382, %struct.TYPE_81__* %383)
  store %struct.TYPE_81__* %384, %struct.TYPE_81__** %15, align 8
  br label %385

385:                                              ; preds = %380, %375
  %386 = load %struct.TYPE_81__*, %struct.TYPE_81__** %15, align 8
  store %struct.TYPE_81__* %386, %struct.TYPE_81__** %6, align 8
  br label %387

387:                                              ; preds = %385, %251, %245, %119, %79, %59
  %388 = load %struct.TYPE_81__*, %struct.TYPE_81__** %6, align 8
  ret %struct.TYPE_81__* %388
}

declare dso_local i32 @ExecMaterializeSlot(%struct.TYPE_81__*) #1

declare dso_local i32 @ExecBRInsertTriggers(%struct.TYPE_75__*, %struct.TYPE_83__*, %struct.TYPE_81__*) #1

declare dso_local i32 @ExecIRInsertTriggers(%struct.TYPE_75__*, %struct.TYPE_83__*, %struct.TYPE_81__*) #1

declare dso_local i32 @ExecComputeStoredGenerated(%struct.TYPE_75__*, %struct.TYPE_81__*) #1

declare dso_local i8* @RelationGetRelid(%struct.TYPE_84__*) #1

declare dso_local i32 @ExecWithCheckOptions(i32, %struct.TYPE_83__*, %struct.TYPE_81__*, %struct.TYPE_75__*) #1

declare dso_local i32 @ExecConstraints(%struct.TYPE_83__*, %struct.TYPE_81__*, %struct.TYPE_75__*) #1

declare dso_local i32 @ExecPartitionCheck(%struct.TYPE_83__*, %struct.TYPE_81__*, %struct.TYPE_75__*, i32) #1

declare dso_local i32 @ExecCheckIndexConstraints(%struct.TYPE_81__*, %struct.TYPE_75__*, i32*, i32*) #1

declare dso_local i64 @ExecOnConflictUpdate(%struct.TYPE_85__*, %struct.TYPE_83__*, i32*, %struct.TYPE_81__*, %struct.TYPE_81__*, %struct.TYPE_75__*, i32, %struct.TYPE_81__**) #1

declare dso_local i32 @InstrCountTuples2(%struct.TYPE_77__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExecCheckTIDVisible(%struct.TYPE_75__*, %struct.TYPE_83__*, i32*, i32) #1

declare dso_local i32 @ExecGetReturningSlot(%struct.TYPE_75__*, %struct.TYPE_83__*) #1

declare dso_local i32 @SpeculativeInsertionLockAcquire(i32) #1

declare dso_local i32 @GetCurrentTransactionId(...) #1

declare dso_local i32 @table_tuple_insert_speculative(%struct.TYPE_84__*, %struct.TYPE_81__*, i32, i32, i32*, i32) #1

declare dso_local i32* @ExecInsertIndexTuples(%struct.TYPE_81__*, %struct.TYPE_75__*, i32, i32*, i32*) #1

declare dso_local i32 @table_tuple_complete_speculative(%struct.TYPE_84__*, %struct.TYPE_81__*, i32, i32) #1

declare dso_local i32 @SpeculativeInsertionLockRelease(i32) #1

declare dso_local i32 @list_free(i32*) #1

declare dso_local i32 @table_tuple_insert(%struct.TYPE_84__*, %struct.TYPE_81__*, i32, i32, i32*) #1

declare dso_local i32 @setLastTid(i32*) #1

declare dso_local i32 @ExecARUpdateTriggers(%struct.TYPE_75__*, %struct.TYPE_83__*, i32*, i32*, %struct.TYPE_81__*, i32*, %struct.TYPE_82__*) #1

declare dso_local i32 @ExecARInsertTriggers(%struct.TYPE_75__*, %struct.TYPE_83__*, %struct.TYPE_81__*, i32*, %struct.TYPE_82__*) #1

declare dso_local %struct.TYPE_81__* @ExecProcessReturning(%struct.TYPE_83__*, %struct.TYPE_81__*, %struct.TYPE_81__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
