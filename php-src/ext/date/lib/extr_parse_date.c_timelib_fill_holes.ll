; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_fill_holes.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_fill_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32*, i32, i64 }

@TIMELIB_OVERRIDE_TIME = common dso_local global i32 0, align 4
@TIMELIB_UNSET = common dso_local global i64 0, align 8
@TIMELIB_NO_CLONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timelib_fill_holes(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TIMELIB_OVERRIDE_TIME, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 14
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %21, %16, %11, %3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TIMELIB_UNSET, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %66, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TIMELIB_UNSET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %66, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TIMELIB_UNSET, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %66, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TIMELIB_UNSET, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TIMELIB_UNSET, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TIMELIB_UNSET, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60, %54, %48, %42, %36, %30
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TIMELIB_UNSET, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %66
  br label %98

76:                                               ; preds = %60
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TIMELIB_UNSET, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TIMELIB_UNSET, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i64 [ %91, %88 ], [ 0, %92 ]
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %76
  br label %98

98:                                               ; preds = %97, %75
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TIMELIB_UNSET, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TIMELIB_UNSET, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  br label %115

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i64 [ %113, %110 ], [ 0, %114 ]
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %98
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TIMELIB_UNSET, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TIMELIB_UNSET, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  br label %136

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i64 [ %134, %131 ], [ 0, %135 ]
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 5
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %136, %119
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TIMELIB_UNSET, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %140
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TIMELIB_UNSET, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  br label %157

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %152
  %158 = phi i64 [ %155, %152 ], [ 0, %156 ]
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 6
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %140
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @TIMELIB_UNSET, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %161
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @TIMELIB_UNSET, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  br label %178

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i64 [ %176, %173 ], [ 0, %177 ]
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %178, %161
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @TIMELIB_UNSET, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %182
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @TIMELIB_UNSET, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  br label %199

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %198, %194
  %200 = phi i64 [ %197, %194 ], [ 0, %198 ]
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %199, %182
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @TIMELIB_UNSET, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %203
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @TIMELIB_UNSET, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %209
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  br label %220

219:                                              ; preds = %209
  br label %220

220:                                              ; preds = %219, %215
  %221 = phi i64 [ %218, %215 ], [ 0, %219 ]
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 2
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %220, %203
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 7
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @TIMELIB_UNSET, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %245

230:                                              ; preds = %224
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @TIMELIB_UNSET, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 7
  %239 = load i64, i64* %238, align 8
  br label %241

240:                                              ; preds = %230
  br label %241

241:                                              ; preds = %240, %236
  %242 = phi i64 [ %239, %236 ], [ 0, %240 ]
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 7
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %241, %224
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @TIMELIB_UNSET, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %245
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 8
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @TIMELIB_UNSET, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %251
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 8
  %260 = load i64, i64* %259, align 8
  br label %262

261:                                              ; preds = %251
  br label %262

262:                                              ; preds = %261, %257
  %263 = phi i64 [ %260, %257 ], [ 0, %261 ]
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 8
  store i64 %263, i64* %265, align 8
  br label %266

266:                                              ; preds = %262, %245
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 12
  %269 = load i32*, i32** %268, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %286, label %271

271:                                              ; preds = %266
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 12
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %281

276:                                              ; preds = %271
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 12
  %279 = load i32*, i32** %278, align 8
  %280 = call i32* @timelib_strdup(i32* %279)
  br label %282

281:                                              ; preds = %271
  br label %282

282:                                              ; preds = %281, %276
  %283 = phi i32* [ %280, %276 ], [ null, %281 ]
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 12
  store i32* %283, i32** %285, align 8
  br label %286

286:                                              ; preds = %282, %266
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 11
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %317, label %291

291:                                              ; preds = %286
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 11
  %294 = load i32*, i32** %293, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %296, label %312

296:                                              ; preds = %291
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* @TIMELIB_NO_CLONE, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %296
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 11
  %304 = load i32*, i32** %303, align 8
  %305 = call i32* @timelib_tzinfo_clone(i32* %304)
  br label %310

306:                                              ; preds = %296
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 11
  %309 = load i32*, i32** %308, align 8
  br label %310

310:                                              ; preds = %306, %301
  %311 = phi i32* [ %305, %301 ], [ %309, %306 ]
  br label %313

312:                                              ; preds = %291
  br label %313

313:                                              ; preds = %312, %310
  %314 = phi i32* [ %311, %310 ], [ null, %312 ]
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 11
  store i32* %314, i32** %316, align 8
  br label %317

317:                                              ; preds = %313, %286
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 9
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %335

322:                                              ; preds = %317
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 9
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %322
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 9
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 9
  store i64 %330, i64* %332, align 8
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 10
  store i32 1, i32* %334, align 8
  br label %335

335:                                              ; preds = %327, %322, %317
  ret void
}

declare dso_local i32* @timelib_strdup(i32*) #1

declare dso_local i32* @timelib_tzinfo_clone(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
