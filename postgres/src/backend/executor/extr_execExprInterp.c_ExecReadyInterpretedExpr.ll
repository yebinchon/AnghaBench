; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execExprInterp.c_ExecReadyInterpretedExpr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execExprInterp.c_ExecReadyInterpretedExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@EEOP_DONE = common dso_local global i64 0, align 8
@EEO_FLAG_INTERPRETER_INITIALIZED = common dso_local global i32 0, align 4
@ExecInterpExprStillValid = common dso_local global i32 0, align 4
@EEO_FLAG_DIRECT_THREADED = common dso_local global i32 0, align 4
@EEOP_INNER_FETCHSOME = common dso_local global i64 0, align 8
@EEOP_INNER_VAR = common dso_local global i64 0, align 8
@ExecJustInnerVar = common dso_local global i64 0, align 8
@EEOP_OUTER_FETCHSOME = common dso_local global i64 0, align 8
@EEOP_OUTER_VAR = common dso_local global i64 0, align 8
@ExecJustOuterVar = common dso_local global i64 0, align 8
@EEOP_SCAN_FETCHSOME = common dso_local global i64 0, align 8
@EEOP_SCAN_VAR = common dso_local global i64 0, align 8
@ExecJustScanVar = common dso_local global i64 0, align 8
@EEOP_ASSIGN_INNER_VAR = common dso_local global i64 0, align 8
@ExecJustAssignInnerVar = common dso_local global i64 0, align 8
@EEOP_ASSIGN_OUTER_VAR = common dso_local global i64 0, align 8
@ExecJustAssignOuterVar = common dso_local global i64 0, align 8
@EEOP_ASSIGN_SCAN_VAR = common dso_local global i64 0, align 8
@ExecJustAssignScanVar = common dso_local global i64 0, align 8
@EEOP_CASE_TESTVAL = common dso_local global i64 0, align 8
@EEOP_FUNCEXPR_STRICT = common dso_local global i64 0, align 8
@ExecJustApplyFuncToCase = common dso_local global i64 0, align 8
@EEOP_CONST = common dso_local global i64 0, align 8
@ExecJustConst = common dso_local global i64 0, align 8
@ExecJustInnerVarVirt = common dso_local global i64 0, align 8
@ExecJustOuterVarVirt = common dso_local global i64 0, align 8
@ExecJustScanVarVirt = common dso_local global i64 0, align 8
@ExecJustAssignInnerVarVirt = common dso_local global i64 0, align 8
@ExecJustAssignOuterVarVirt = common dso_local global i64 0, align 8
@ExecJustAssignScanVarVirt = common dso_local global i64 0, align 8
@ExecInterpExpr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecReadyInterpretedExpr(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = call i32 (...) @ExecInitInterpreter()
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EEOP_DONE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EEO_FLAG_INTERPRETER_INITIALIZED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %263

35:                                               ; preds = %1
  %36 = load i32, i32* @ExecInterpExprStillValid, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EEO_FLAG_DIRECT_THREADED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load i32, i32* @EEO_FLAG_INTERPRETER_INITIALIZED, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %176

56:                                               ; preds = %35
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %3, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @EEOP_INNER_FETCHSOME, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %56
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @EEOP_INNER_VAR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i64, i64* @ExecJustInnerVar, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  br label %263

81:                                               ; preds = %72, %56
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @EEOP_OUTER_FETCHSOME, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @EEOP_OUTER_VAR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i64, i64* @ExecJustOuterVar, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  br label %263

94:                                               ; preds = %85, %81
  %95 = load i64, i64* %3, align 8
  %96 = load i64, i64* @EEOP_SCAN_FETCHSOME, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @EEOP_SCAN_VAR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i64, i64* @ExecJustScanVar, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  br label %263

107:                                              ; preds = %98, %94
  %108 = load i64, i64* %3, align 8
  %109 = load i64, i64* @EEOP_INNER_FETCHSOME, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @EEOP_ASSIGN_INNER_VAR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i64, i64* @ExecJustAssignInnerVar, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  br label %263

120:                                              ; preds = %111, %107
  %121 = load i64, i64* %3, align 8
  %122 = load i64, i64* @EEOP_OUTER_FETCHSOME, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i64, i64* %4, align 8
  %126 = load i64, i64* @EEOP_ASSIGN_OUTER_VAR, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i64, i64* @ExecJustAssignOuterVar, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  br label %263

133:                                              ; preds = %124, %120
  %134 = load i64, i64* %3, align 8
  %135 = load i64, i64* @EEOP_SCAN_FETCHSOME, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i64, i64* %4, align 8
  %139 = load i64, i64* @EEOP_ASSIGN_SCAN_VAR, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i64, i64* @ExecJustAssignScanVar, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  br label %263

146:                                              ; preds = %137, %133
  %147 = load i64, i64* %3, align 8
  %148 = load i64, i64* @EEOP_CASE_TESTVAL, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %146
  %151 = load i64, i64* %4, align 8
  %152 = load i64, i64* @EEOP_FUNCEXPR_STRICT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %150
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load i64, i64* @ExecJustApplyFuncToCase, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  br label %263

169:                                              ; preds = %154, %150, %146
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  br label %258

176:                                              ; preds = %35
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %257

181:                                              ; preds = %176
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %5, align 8
  %188 = load i64, i64* %5, align 8
  %189 = load i64, i64* @EEOP_CONST, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %181
  %192 = load i64, i64* @ExecJustConst, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  br label %263

196:                                              ; preds = %181
  %197 = load i64, i64* %5, align 8
  %198 = load i64, i64* @EEOP_INNER_VAR, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load i64, i64* @ExecJustInnerVarVirt, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  store i8* %202, i8** %204, align 8
  br label %263

205:                                              ; preds = %196
  %206 = load i64, i64* %5, align 8
  %207 = load i64, i64* @EEOP_OUTER_VAR, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load i64, i64* @ExecJustOuterVarVirt, align 8
  %211 = inttoptr i64 %210 to i8*
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  br label %263

214:                                              ; preds = %205
  %215 = load i64, i64* %5, align 8
  %216 = load i64, i64* @EEOP_SCAN_VAR, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %214
  %219 = load i64, i64* @ExecJustScanVarVirt, align 8
  %220 = inttoptr i64 %219 to i8*
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  br label %263

223:                                              ; preds = %214
  %224 = load i64, i64* %5, align 8
  %225 = load i64, i64* @EEOP_ASSIGN_INNER_VAR, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load i64, i64* @ExecJustAssignInnerVarVirt, align 8
  %229 = inttoptr i64 %228 to i8*
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  store i8* %229, i8** %231, align 8
  br label %263

232:                                              ; preds = %223
  %233 = load i64, i64* %5, align 8
  %234 = load i64, i64* @EEOP_ASSIGN_OUTER_VAR, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = load i64, i64* @ExecJustAssignOuterVarVirt, align 8
  %238 = inttoptr i64 %237 to i8*
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  store i8* %238, i8** %240, align 8
  br label %263

241:                                              ; preds = %232
  %242 = load i64, i64* %5, align 8
  %243 = load i64, i64* @EEOP_ASSIGN_SCAN_VAR, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load i64, i64* @ExecJustAssignScanVarVirt, align 8
  %247 = inttoptr i64 %246 to i8*
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  store i8* %247, i8** %249, align 8
  br label %263

250:                                              ; preds = %241
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256, %176
  br label %258

258:                                              ; preds = %257, %175
  %259 = load i64, i64* @ExecInterpExpr, align 8
  %260 = inttoptr i64 %259 to i8*
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %258, %245, %236, %227, %218, %209, %200, %191, %164, %141, %128, %115, %102, %89, %76, %34
  ret void
}

declare dso_local i32 @ExecInitInterpreter(...) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
