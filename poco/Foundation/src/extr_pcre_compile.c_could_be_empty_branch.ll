; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_could_be_empty_branch.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_could_be_empty_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64*, i64* }
%struct.TYPE_5__ = type { i64*, %struct.TYPE_5__* }

@OP_lengths = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@OP_ASSERT = common dso_local global i64 0, align 8
@OP_RECURSE = common dso_local global i64 0, align 8
@LINK_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@OP_BRAZERO = common dso_local global i64 0, align 8
@OP_BRAMINZERO = common dso_local global i64 0, align 8
@OP_SKIPZERO = common dso_local global i64 0, align 8
@OP_BRAPOSZERO = common dso_local global i64 0, align 8
@OP_SBRA = common dso_local global i64 0, align 8
@OP_SBRAPOS = common dso_local global i64 0, align 8
@OP_SCBRA = common dso_local global i64 0, align 8
@OP_SCBRAPOS = common dso_local global i64 0, align 8
@OP_BRA = common dso_local global i64 0, align 8
@OP_BRAPOS = common dso_local global i64 0, align 8
@OP_CBRA = common dso_local global i64 0, align 8
@OP_CBRAPOS = common dso_local global i64 0, align 8
@OP_ONCE = common dso_local global i64 0, align 8
@OP_ONCE_NC = common dso_local global i64 0, align 8
@OP_COND = common dso_local global i64 0, align 8
@OP_SCOND = common dso_local global i64 0, align 8
@IMM2_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i64*, i8*, %struct.TYPE_6__*, %struct.TYPE_5__*)* @could_be_empty_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @could_be_empty_branch(i64* %0, i64* %1, i8* %2, %struct.TYPE_6__* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i8*, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i32, i32* @OP_lengths, align 4
  %23 = call i32* @PRIV(i32 %22)
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %21, i64 %28
  %30 = load i8*, i8** @TRUE, align 8
  %31 = call i64* @first_significant_code(i64* %29, i8* %30)
  store i64* %31, i64** %7, align 8
  br label %32

32:                                               ; preds = %412, %5
  %33 = load i64*, i64** %7, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = icmp ult i64* %33, %34
  br i1 %35, label %36, label %423

36:                                               ; preds = %32
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @OP_ASSERT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i64*, i64** %7, align 8
  %45 = call i64 @GET(i64* %44, i32 1)
  %46 = load i64*, i64** %7, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 %45
  store i64* %47, i64** %7, align 8
  br label %48

48:                                               ; preds = %43
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 236
  br i1 %51, label %43, label %52

52:                                               ; preds = %48
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %12, align 8
  br label %412

55:                                               ; preds = %36
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @OP_RECURSE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %183

59:                                               ; preds = %55
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64*, i64** %7, align 8
  %64 = call i64 @GET(i64* %63, i32 1)
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64* %65, i64** %15, align 8
  %66 = load i64*, i64** %15, align 8
  store i64* %66, i64** %16, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %111

71:                                               ; preds = %59
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %18, align 8
  br label %75

75:                                               ; preds = %99, %71
  %76 = load i64*, i64** %18, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = icmp ult i64* %76, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load i64*, i64** %18, align 8
  %83 = call i64 @GET(i64* %82, i32 0)
  %84 = trunc i64 %83 to i32
  %85 = load i64*, i64** %7, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = ptrtoint i64* %86 to i64
  %91 = ptrtoint i64* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 8
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %84, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %81
  %97 = load i8*, i8** @TRUE, align 8
  store i8* %97, i8** %6, align 8
  br label %425

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* @LINK_SIZE, align 4
  %101 = load i64*, i64** %18, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64* %103, i64** %18, align 8
  br label %75

104:                                              ; preds = %75
  %105 = load i64*, i64** %15, align 8
  %106 = call i64 @GET(i64* %105, i32 1)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i8*, i8** @TRUE, align 8
  store i8* %109, i8** %6, align 8
  br label %425

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %59
  br label %112

112:                                              ; preds = %117, %111
  %113 = load i64*, i64** %16, align 8
  %114 = call i64 @GET(i64* %113, i32 1)
  %115 = load i64*, i64** %16, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 %114
  store i64* %116, i64** %16, align 8
  br label %117

117:                                              ; preds = %112
  %118 = load i64*, i64** %16, align 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 236
  br i1 %120, label %112, label %121

121:                                              ; preds = %117
  %122 = load i64*, i64** %7, align 8
  %123 = load i64*, i64** %15, align 8
  %124 = icmp uge i64* %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i64*, i64** %7, align 8
  %127 = load i64*, i64** %16, align 8
  %128 = icmp ule i64* %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %412

130:                                              ; preds = %125, %121
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %131, %struct.TYPE_5__** %19, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %132, %struct.TYPE_5__** %19, align 8
  br label %133

133:                                              ; preds = %144, %130
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %135 = icmp ne %struct.TYPE_5__* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64*, i64** %15, align 8
  %141 = icmp eq i64* %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %148

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %19, align 8
  br label %133

148:                                              ; preds = %142, %133
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %150 = icmp ne %struct.TYPE_5__* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %412

152:                                              ; preds = %148
  br label %153

153:                                              ; preds = %152
  %154 = load i8*, i8** @FALSE, align 8
  store i8* %154, i8** %17, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store %struct.TYPE_5__* %155, %struct.TYPE_5__** %156, align 8
  %157 = load i64*, i64** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i64* %157, i64** %158, align 8
  br label %159

159:                                              ; preds = %173, %153
  %160 = load i64*, i64** %15, align 8
  %161 = load i64*, i64** %8, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %164 = call i8* @could_be_empty_branch(i64* %160, i64* %161, i8* %162, %struct.TYPE_6__* %163, %struct.TYPE_5__* %13)
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i8*, i8** @TRUE, align 8
  store i8* %167, i8** %17, align 8
  br label %177

168:                                              ; preds = %159
  %169 = load i64*, i64** %15, align 8
  %170 = call i64 @GET(i64* %169, i32 1)
  %171 = load i64*, i64** %15, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 %170
  store i64* %172, i64** %15, align 8
  br label %173

173:                                              ; preds = %168
  %174 = load i64*, i64** %15, align 8
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 236
  br i1 %176, label %159, label %177

177:                                              ; preds = %173, %166
  %178 = load i8*, i8** %17, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = load i8*, i8** @FALSE, align 8
  store i8* %181, i8** %6, align 8
  br label %425

182:                                              ; preds = %177
  br label %412

183:                                              ; preds = %55
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* @OP_BRAZERO, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %199, label %187

187:                                              ; preds = %183
  %188 = load i64, i64* %12, align 8
  %189 = load i64, i64* @OP_BRAMINZERO, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %199, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* @OP_SKIPZERO, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = load i64, i64* %12, align 8
  %197 = load i64, i64* @OP_BRAPOSZERO, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %220

199:                                              ; preds = %195, %191, %187, %183
  %200 = load i32, i32* @OP_lengths, align 4
  %201 = call i32* @PRIV(i32 %200)
  %202 = load i64, i64* %12, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i64*, i64** %7, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  store i64* %207, i64** %7, align 8
  br label %208

208:                                              ; preds = %213, %199
  %209 = load i64*, i64** %7, align 8
  %210 = call i64 @GET(i64* %209, i32 1)
  %211 = load i64*, i64** %7, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 %210
  store i64* %212, i64** %7, align 8
  br label %213

213:                                              ; preds = %208
  %214 = load i64*, i64** %7, align 8
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %215, 236
  br i1 %216, label %208, label %217

217:                                              ; preds = %213
  %218 = load i64*, i64** %7, align 8
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %12, align 8
  br label %412

220:                                              ; preds = %195
  %221 = load i64, i64* %12, align 8
  %222 = load i64, i64* @OP_SBRA, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %236, label %224

224:                                              ; preds = %220
  %225 = load i64, i64* %12, align 8
  %226 = load i64, i64* @OP_SBRAPOS, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %236, label %228

228:                                              ; preds = %224
  %229 = load i64, i64* %12, align 8
  %230 = load i64, i64* @OP_SCBRA, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = load i64, i64* %12, align 8
  %234 = load i64, i64* @OP_SCBRAPOS, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %249

236:                                              ; preds = %232, %228, %224, %220
  br label %237

237:                                              ; preds = %242, %236
  %238 = load i64*, i64** %7, align 8
  %239 = call i64 @GET(i64* %238, i32 1)
  %240 = load i64*, i64** %7, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 %239
  store i64* %241, i64** %7, align 8
  br label %242

242:                                              ; preds = %237
  %243 = load i64*, i64** %7, align 8
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %244, 236
  br i1 %245, label %237, label %246

246:                                              ; preds = %242
  %247 = load i64*, i64** %7, align 8
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %12, align 8
  br label %412

249:                                              ; preds = %232
  %250 = load i64, i64* %12, align 8
  %251 = load i64, i64* @OP_BRA, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %281, label %253

253:                                              ; preds = %249
  %254 = load i64, i64* %12, align 8
  %255 = load i64, i64* @OP_BRAPOS, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %281, label %257

257:                                              ; preds = %253
  %258 = load i64, i64* %12, align 8
  %259 = load i64, i64* @OP_CBRA, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %281, label %261

261:                                              ; preds = %257
  %262 = load i64, i64* %12, align 8
  %263 = load i64, i64* @OP_CBRAPOS, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %281, label %265

265:                                              ; preds = %261
  %266 = load i64, i64* %12, align 8
  %267 = load i64, i64* @OP_ONCE, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %281, label %269

269:                                              ; preds = %265
  %270 = load i64, i64* %12, align 8
  %271 = load i64, i64* @OP_ONCE_NC, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %281, label %273

273:                                              ; preds = %269
  %274 = load i64, i64* %12, align 8
  %275 = load i64, i64* @OP_COND, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %281, label %277

277:                                              ; preds = %273
  %278 = load i64, i64* %12, align 8
  %279 = load i64, i64* @OP_SCOND, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %336

281:                                              ; preds = %277, %273, %269, %265, %261, %257, %253, %249
  %282 = load i64*, i64** %7, align 8
  %283 = call i64 @GET(i64* %282, i32 1)
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = load i8*, i8** @TRUE, align 8
  store i8* %286, i8** %6, align 8
  br label %425

287:                                              ; preds = %281
  %288 = load i64, i64* %12, align 8
  %289 = load i64, i64* @OP_COND, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %303

291:                                              ; preds = %287
  %292 = load i64*, i64** %7, align 8
  %293 = load i64*, i64** %7, align 8
  %294 = call i64 @GET(i64* %293, i32 1)
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 236
  br i1 %297, label %298, label %303

298:                                              ; preds = %291
  %299 = load i64*, i64** %7, align 8
  %300 = call i64 @GET(i64* %299, i32 1)
  %301 = load i64*, i64** %7, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 %300
  store i64* %302, i64** %7, align 8
  br label %333

303:                                              ; preds = %291, %287
  %304 = load i8*, i8** @FALSE, align 8
  store i8* %304, i8** %20, align 8
  br label %305

305:                                              ; preds = %323, %303
  %306 = load i8*, i8** %20, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %318, label %308

308:                                              ; preds = %305
  %309 = load i64*, i64** %7, align 8
  %310 = load i64*, i64** %8, align 8
  %311 = load i8*, i8** %9, align 8
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %314 = call i8* @could_be_empty_branch(i64* %309, i64* %310, i8* %311, %struct.TYPE_6__* %312, %struct.TYPE_5__* %313)
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %318

316:                                              ; preds = %308
  %317 = load i8*, i8** @TRUE, align 8
  store i8* %317, i8** %20, align 8
  br label %318

318:                                              ; preds = %316, %308, %305
  %319 = load i64*, i64** %7, align 8
  %320 = call i64 @GET(i64* %319, i32 1)
  %321 = load i64*, i64** %7, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 %320
  store i64* %322, i64** %7, align 8
  br label %323

323:                                              ; preds = %318
  %324 = load i64*, i64** %7, align 8
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %325, 236
  br i1 %326, label %305, label %327

327:                                              ; preds = %323
  %328 = load i8*, i8** %20, align 8
  %329 = icmp ne i8* %328, null
  br i1 %329, label %332, label %330

330:                                              ; preds = %327
  %331 = load i8*, i8** @FALSE, align 8
  store i8* %331, i8** %6, align 8
  br label %425

332:                                              ; preds = %327
  br label %333

333:                                              ; preds = %332, %298
  %334 = load i64*, i64** %7, align 8
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %12, align 8
  br label %412

336:                                              ; preds = %277
  %337 = load i64, i64* %12, align 8
  switch i64 %337, label %410 [
    i64 128, label %338
    i64 230, label %343
    i64 199, label %343
    i64 235, label %366
    i64 237, label %366
    i64 234, label %366
    i64 154, label %366
    i64 176, label %366
    i64 233, label %366
    i64 168, label %366
    i64 213, label %366
    i64 167, label %366
    i64 131, label %366
    i64 214, label %366
    i64 169, label %366
    i64 217, label %366
    i64 166, label %366
    i64 130, label %366
    i64 165, label %366
    i64 129, label %366
    i64 232, label %366
    i64 231, label %366
    i64 198, label %366
    i64 195, label %366
    i64 164, label %366
    i64 163, label %366
    i64 207, label %366
    i64 206, label %366
    i64 186, label %366
    i64 185, label %366
    i64 194, label %366
    i64 193, label %366
    i64 162, label %366
    i64 161, label %366
    i64 184, label %366
    i64 183, label %366
    i64 216, label %366
    i64 215, label %366
    i64 197, label %366
    i64 196, label %366
    i64 141, label %366
    i64 145, label %366
    i64 140, label %366
    i64 146, label %366
    i64 135, label %368
    i64 143, label %368
    i64 138, label %368
    i64 136, label %368
    i64 144, label %368
    i64 139, label %368
    i64 134, label %382
    i64 142, label %382
    i64 137, label %382
    i64 212, label %402
    i64 211, label %402
    i64 210, label %402
    i64 209, label %402
    i64 236, label %402
    i64 208, label %404
    i64 153, label %404
    i64 150, label %404
    i64 147, label %404
  ]

338:                                              ; preds = %336
  %339 = load i64*, i64** %7, align 8
  %340 = call i64 @GET(i64* %339, i32 1)
  %341 = load i64*, i64** %7, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 %340
  store i64* %342, i64** %7, align 8
  store i64* %342, i64** %14, align 8
  br label %351

343:                                              ; preds = %336, %336
  %344 = load i64*, i64** %7, align 8
  %345 = load i32, i32* @OP_lengths, align 4
  %346 = call i32* @PRIV(i32 %345)
  %347 = getelementptr inbounds i32, i32* %346, i64 230
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %344, i64 %349
  store i64* %350, i64** %14, align 8
  br label %351

351:                                              ; preds = %343, %338
  %352 = load i64*, i64** %14, align 8
  %353 = load i64, i64* %352, align 8
  switch i64 %353, label %355 [
    i64 218, label %354
    i64 226, label %354
    i64 220, label %354
    i64 228, label %354
    i64 221, label %354
    i64 223, label %354
    i64 225, label %356
    i64 229, label %356
    i64 224, label %356
    i64 219, label %358
    i64 227, label %358
    i64 222, label %358
  ]

354:                                              ; preds = %351, %351, %351, %351, %351, %351
  br label %365

355:                                              ; preds = %351
  br label %356

356:                                              ; preds = %351, %351, %351, %355
  %357 = load i8*, i8** @FALSE, align 8
  store i8* %357, i8** %6, align 8
  br label %425

358:                                              ; preds = %351, %351, %351
  %359 = load i64*, i64** %14, align 8
  %360 = call i32 @GET2(i64* %359, i32 1)
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %358
  %363 = load i8*, i8** @FALSE, align 8
  store i8* %363, i8** %6, align 8
  br label %425

364:                                              ; preds = %358
  br label %365

365:                                              ; preds = %364, %354
  br label %411

366:                                              ; preds = %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336, %336
  %367 = load i8*, i8** @FALSE, align 8
  store i8* %367, i8** %6, align 8
  br label %425

368:                                              ; preds = %336, %336, %336, %336, %336, %336
  %369 = load i64*, i64** %7, align 8
  %370 = getelementptr inbounds i64, i64* %369, i64 1
  %371 = load i64, i64* %370, align 8
  %372 = icmp eq i64 %371, 154
  br i1 %372, label %378, label %373

373:                                              ; preds = %368
  %374 = load i64*, i64** %7, align 8
  %375 = getelementptr inbounds i64, i64* %374, i64 1
  %376 = load i64, i64* %375, align 8
  %377 = icmp eq i64 %376, 176
  br i1 %377, label %378, label %381

378:                                              ; preds = %373, %368
  %379 = load i64*, i64** %7, align 8
  %380 = getelementptr inbounds i64, i64* %379, i64 2
  store i64* %380, i64** %7, align 8
  br label %381

381:                                              ; preds = %378, %373
  br label %411

382:                                              ; preds = %336, %336, %336
  %383 = load i64*, i64** %7, align 8
  %384 = load i32, i32* @IMM2_SIZE, align 4
  %385 = add nsw i32 1, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %383, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = icmp eq i64 %388, 154
  br i1 %389, label %398, label %390

390:                                              ; preds = %382
  %391 = load i64*, i64** %7, align 8
  %392 = load i32, i32* @IMM2_SIZE, align 4
  %393 = add nsw i32 1, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i64, i64* %391, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = icmp eq i64 %396, 176
  br i1 %397, label %398, label %401

398:                                              ; preds = %390, %382
  %399 = load i64*, i64** %7, align 8
  %400 = getelementptr inbounds i64, i64* %399, i64 2
  store i64* %400, i64** %7, align 8
  br label %401

401:                                              ; preds = %398, %390
  br label %411

402:                                              ; preds = %336, %336, %336, %336, %336
  %403 = load i8*, i8** @TRUE, align 8
  store i8* %403, i8** %6, align 8
  br label %425

404:                                              ; preds = %336, %336, %336, %336
  %405 = load i64*, i64** %7, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 1
  %407 = load i64, i64* %406, align 8
  %408 = load i64*, i64** %7, align 8
  %409 = getelementptr inbounds i64, i64* %408, i64 %407
  store i64* %409, i64** %7, align 8
  br label %411

410:                                              ; preds = %336
  br label %411

411:                                              ; preds = %410, %404, %401, %381, %365
  br label %412

412:                                              ; preds = %411, %333, %246, %217, %182, %151, %129, %52
  %413 = load i64*, i64** %7, align 8
  %414 = load i32, i32* @OP_lengths, align 4
  %415 = call i32* @PRIV(i32 %414)
  %416 = load i64, i64* %12, align 8
  %417 = getelementptr inbounds i32, i32* %415, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i64, i64* %413, i64 %419
  %421 = load i8*, i8** @TRUE, align 8
  %422 = call i64* @first_significant_code(i64* %420, i8* %421)
  store i64* %422, i64** %7, align 8
  br label %32

423:                                              ; preds = %32
  %424 = load i8*, i8** @TRUE, align 8
  store i8* %424, i8** %6, align 8
  br label %425

425:                                              ; preds = %423, %402, %366, %362, %356, %330, %285, %180, %108, %96
  %426 = load i8*, i8** %6, align 8
  ret i8* %426
}

declare dso_local i64* @first_significant_code(i64*, i8*) #1

declare dso_local i32* @PRIV(i32) #1

declare dso_local i64 @GET(i64*, i32) #1

declare dso_local i32 @GET2(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
