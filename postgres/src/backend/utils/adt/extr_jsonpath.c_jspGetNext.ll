; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath.c_jspGetNext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath.c_jspGetNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }

@jpiString = common dso_local global i64 0, align 8
@jpiNumeric = common dso_local global i64 0, align 8
@jpiBool = common dso_local global i64 0, align 8
@jpiNull = common dso_local global i64 0, align 8
@jpiKey = common dso_local global i64 0, align 8
@jpiAny = common dso_local global i64 0, align 8
@jpiAnyArray = common dso_local global i64 0, align 8
@jpiAnyKey = common dso_local global i64 0, align 8
@jpiIndexArray = common dso_local global i64 0, align 8
@jpiFilter = common dso_local global i64 0, align 8
@jpiCurrent = common dso_local global i64 0, align 8
@jpiExists = common dso_local global i64 0, align 8
@jpiRoot = common dso_local global i64 0, align 8
@jpiVariable = common dso_local global i64 0, align 8
@jpiLast = common dso_local global i64 0, align 8
@jpiAdd = common dso_local global i64 0, align 8
@jpiSub = common dso_local global i64 0, align 8
@jpiMul = common dso_local global i64 0, align 8
@jpiDiv = common dso_local global i64 0, align 8
@jpiMod = common dso_local global i64 0, align 8
@jpiPlus = common dso_local global i64 0, align 8
@jpiMinus = common dso_local global i64 0, align 8
@jpiEqual = common dso_local global i64 0, align 8
@jpiNotEqual = common dso_local global i64 0, align 8
@jpiGreater = common dso_local global i64 0, align 8
@jpiGreaterOrEqual = common dso_local global i64 0, align 8
@jpiLess = common dso_local global i64 0, align 8
@jpiLessOrEqual = common dso_local global i64 0, align 8
@jpiAnd = common dso_local global i64 0, align 8
@jpiOr = common dso_local global i64 0, align 8
@jpiNot = common dso_local global i64 0, align 8
@jpiIsUnknown = common dso_local global i64 0, align 8
@jpiType = common dso_local global i64 0, align 8
@jpiSize = common dso_local global i64 0, align 8
@jpiAbs = common dso_local global i64 0, align 8
@jpiFloor = common dso_local global i64 0, align 8
@jpiCeiling = common dso_local global i64 0, align 8
@jpiDouble = common dso_local global i64 0, align 8
@jpiDatetime = common dso_local global i64 0, align 8
@jpiKeyValue = common dso_local global i64 0, align 8
@jpiStartsWith = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jspGetNext(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = call i64 @jspHasNext(%struct.TYPE_6__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %271

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @jpiString, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %255, label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @jpiNumeric, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %255, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @jpiBool, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %255, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @jpiNull, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %255, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @jpiKey, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %255, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @jpiAny, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %255, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @jpiAnyArray, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %255, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @jpiAnyKey, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %255, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @jpiIndexArray, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %255, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @jpiFilter, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %255, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @jpiCurrent, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %255, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @jpiExists, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %255, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @jpiRoot, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %255, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @jpiVariable, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %255, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @jpiLast, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %255, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @jpiAdd, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %255, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @jpiSub, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %255, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @jpiMul, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %255, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @jpiDiv, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %255, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @jpiMod, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %255, label %129

129:                                              ; preds = %123
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @jpiPlus, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %255, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @jpiMinus, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %255, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @jpiEqual, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %255, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @jpiNotEqual, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %255, label %153

153:                                              ; preds = %147
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @jpiGreater, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %255, label %159

159:                                              ; preds = %153
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @jpiGreaterOrEqual, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %255, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @jpiLess, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %255, label %171

171:                                              ; preds = %165
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @jpiLessOrEqual, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %255, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @jpiAnd, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %255, label %183

183:                                              ; preds = %177
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @jpiOr, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %255, label %189

189:                                              ; preds = %183
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @jpiNot, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %255, label %195

195:                                              ; preds = %189
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @jpiIsUnknown, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %255, label %201

201:                                              ; preds = %195
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @jpiType, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %255, label %207

207:                                              ; preds = %201
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @jpiSize, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %255, label %213

213:                                              ; preds = %207
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @jpiAbs, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %255, label %219

219:                                              ; preds = %213
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @jpiFloor, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %255, label %225

225:                                              ; preds = %219
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @jpiCeiling, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %255, label %231

231:                                              ; preds = %225
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @jpiDouble, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %255, label %237

237:                                              ; preds = %231
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @jpiDatetime, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %255, label %243

243:                                              ; preds = %237
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @jpiKeyValue, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %255, label %249

249:                                              ; preds = %243
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @jpiStartsWith, align 8
  %254 = icmp eq i64 %252, %253
  br label %255

255:                                              ; preds = %249, %243, %237, %231, %225, %219, %213, %207, %201, %195, %189, %183, %177, %171, %165, %159, %153, %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27, %21, %15, %9
  %256 = phi i1 [ true, %243 ], [ true, %237 ], [ true, %231 ], [ true, %225 ], [ true, %219 ], [ true, %213 ], [ true, %207 ], [ true, %201 ], [ true, %195 ], [ true, %189 ], [ true, %183 ], [ true, %177 ], [ true, %171 ], [ true, %165 ], [ true, %159 ], [ true, %153 ], [ true, %147 ], [ true, %141 ], [ true, %135 ], [ true, %129 ], [ true, %123 ], [ true, %117 ], [ true, %111 ], [ true, %105 ], [ true, %99 ], [ true, %93 ], [ true, %87 ], [ true, %81 ], [ true, %75 ], [ true, %69 ], [ true, %63 ], [ true, %57 ], [ true, %51 ], [ true, %45 ], [ true, %39 ], [ true, %33 ], [ true, %27 ], [ true, %21 ], [ true, %15 ], [ true, %9 ], [ %254, %249 ]
  %257 = zext i1 %256 to i32
  %258 = call i32 @Assert(i32 %257)
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %260 = icmp ne %struct.TYPE_6__* %259, null
  br i1 %260, label %261, label %270

261:                                              ; preds = %255
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @jspInitByBuffer(%struct.TYPE_6__* %262, i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %261, %255
  store i32 1, i32* %3, align 4
  br label %272

271:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %272

272:                                              ; preds = %271, %270
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i64 @jspHasNext(%struct.TYPE_6__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @jspInitByBuffer(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
