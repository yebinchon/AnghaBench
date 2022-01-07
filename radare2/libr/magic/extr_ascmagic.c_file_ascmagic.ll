; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_ascmagic.c_file_ascmagic.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_ascmagic.c_file_ascmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.names = type { i64, i64 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@MAXLINELEN = common dso_local global i64 0, align 8
@HOWMANY = common dso_local global i64 0, align 8
@R_MAGIC_MIME_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@R_MAGIC_MIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" charset=\00", align 1
@R_MAGIC_MIME_ENCODING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c", with very long lines\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c", with\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" no\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" CRLF\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" CR\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" LF\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" NEL\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c" line terminators\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c", with escape sequences\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c", with overstriking\00", align 1
@NNAMES = common dso_local global i32 0, align 4
@R_MAGIC_NO_CHECK_TOKENS = common dso_local global i32 0, align 4
@TEXTTEST = common dso_local global i32 0, align 4
@names = common dso_local global %struct.names* null, align 8
@types = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_ascmagic(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.names*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %377

32:                                               ; No predecessors!
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %109, %32
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %112

37:                                               ; preds = %33
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load i32, i32* %25, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %26, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %26, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %27, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %27, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %30, align 8
  br label %62

55:                                               ; preds = %37
  %56 = load i32, i32* %25, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %28, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %28, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 13
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %25, align 4
  %70 = load i32, i32* %25, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %30, align 8
  br label %74

74:                                               ; preds = %72, %62
  %75 = load i8*, i8** %12, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 133
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %29, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %29, align 4
  %84 = load i64, i64* %8, align 8
  store i64 %84, i64* %30, align 8
  br label %85

85:                                               ; preds = %81, %74
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %30, align 8
  %88 = load i64, i64* @MAXLINELEN, align 8
  %89 = add i64 %87, %88
  %90 = icmp ugt i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %31, align 4
  br label %92

92:                                               ; preds = %91, %85
  %93 = load i8*, i8** %12, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 27
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 1, i32* %23, align 4
  br label %100

100:                                              ; preds = %99, %92
  %101 = load i8*, i8** %12, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 1, i32* %24, align 4
  br label %108

108:                                              ; preds = %107, %100
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %8, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %8, align 8
  br label %33

112:                                              ; preds = %33
  %113 = load i32, i32* %25, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @HOWMANY, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* %28, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %28, align 4
  br label %122

122:                                              ; preds = %119, %115, %112
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %185

125:                                              ; preds = %122
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @R_MAGIC_MIME_TYPE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %125
  %131 = load i8*, i8** %22, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = load i8*, i8** %22, align 8
  %136 = call i32 @file_printf(%struct.TYPE_7__* %134, i8* %135)
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %369

139:                                              ; preds = %133
  br label %146

140:                                              ; preds = %130
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = call i32 @file_printf(%struct.TYPE_7__* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %369

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %139
  br label %147

147:                                              ; preds = %146, %125
  %148 = load i32, i32* %17, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @R_MAGIC_MIME, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %150, %147
  %155 = load i8*, i8** %19, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %174

157:                                              ; preds = %154
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* @R_MAGIC_MIME_TYPE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = call i32 @file_printf(%struct.TYPE_7__* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %369

167:                                              ; preds = %162, %157
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = load i8*, i8** %19, align 8
  %170 = call i32 @file_printf(%struct.TYPE_7__* %168, i8* %169)
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %369

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %154, %150
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @R_MAGIC_MIME_ENCODING, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = call i32 @file_printf(%struct.TYPE_7__* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 1, i32* %16, align 4
  br label %369

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %174
  br label %368

185:                                              ; preds = %122
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %187 = load i8*, i8** %18, align 8
  %188 = call i32 @file_printf(%struct.TYPE_7__* %186, i8* %187)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %369

191:                                              ; preds = %185
  %192 = load i8*, i8** %21, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %196 = call i32 @file_printf(%struct.TYPE_7__* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %369

199:                                              ; preds = %194
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %201 = load i8*, i8** %21, align 8
  %202 = call i32 @file_printf(%struct.TYPE_7__* %200, i8* %201)
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %369

205:                                              ; preds = %199
  br label %206

206:                                              ; preds = %205, %191
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = call i32 @file_printf(%struct.TYPE_7__* %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %369

211:                                              ; preds = %206
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %213 = load i8*, i8** %20, align 8
  %214 = call i32 @file_printf(%struct.TYPE_7__* %212, i8* %213)
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  br label %369

217:                                              ; preds = %211
  %218 = load i32, i32* %31, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %222 = call i32 @file_printf(%struct.TYPE_7__* %221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  br label %369

225:                                              ; preds = %220
  br label %226

226:                                              ; preds = %225, %217
  %227 = load i32, i32* %26, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load i32, i32* %28, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load i32, i32* %29, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i32, i32* %27, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %247, label %238

238:                                              ; preds = %235, %232, %229, %226
  %239 = load i32, i32* %26, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* %28, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = load i32, i32* %29, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %349

247:                                              ; preds = %244, %241, %238, %235
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %249 = call i32 @file_printf(%struct.TYPE_7__* %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  br label %369

252:                                              ; preds = %247
  %253 = load i32, i32* %26, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %270

255:                                              ; preds = %252
  %256 = load i32, i32* %28, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %255
  %259 = load i32, i32* %29, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = load i32, i32* %27, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %266 = call i32 @file_printf(%struct.TYPE_7__* %265, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  br label %369

269:                                              ; preds = %264
  br label %343

270:                                              ; preds = %261, %258, %255, %252
  %271 = load i32, i32* %26, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %294

273:                                              ; preds = %270
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %275 = call i32 @file_printf(%struct.TYPE_7__* %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %276 = icmp eq i32 %275, -1
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  br label %369

278:                                              ; preds = %273
  %279 = load i32, i32* %28, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %27, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %281
  %285 = load i32, i32* %29, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %284, %281, %278
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %289 = call i32 @file_printf(%struct.TYPE_7__* %288, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %290 = icmp eq i32 %289, -1
  br i1 %290, label %291, label %292

291:                                              ; preds = %287
  br label %369

292:                                              ; preds = %287
  br label %293

293:                                              ; preds = %292, %284
  br label %294

294:                                              ; preds = %293, %270
  %295 = load i32, i32* %28, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %315

297:                                              ; preds = %294
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %299 = call i32 @file_printf(%struct.TYPE_7__* %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  br label %369

302:                                              ; preds = %297
  %303 = load i32, i32* %27, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %302
  %306 = load i32, i32* %29, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %305, %302
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %310 = call i32 @file_printf(%struct.TYPE_7__* %309, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %311 = icmp eq i32 %310, -1
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  br label %369

313:                                              ; preds = %308
  br label %314

314:                                              ; preds = %313, %305
  br label %315

315:                                              ; preds = %314, %294
  %316 = load i32, i32* %27, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %333

318:                                              ; preds = %315
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %320 = call i32 @file_printf(%struct.TYPE_7__* %319, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %321 = icmp eq i32 %320, -1
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  br label %369

323:                                              ; preds = %318
  %324 = load i32, i32* %29, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %323
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %328 = call i32 @file_printf(%struct.TYPE_7__* %327, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %329 = icmp eq i32 %328, -1
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  br label %369

331:                                              ; preds = %326
  br label %332

332:                                              ; preds = %331, %323
  br label %333

333:                                              ; preds = %332, %315
  %334 = load i32, i32* %29, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %333
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %338 = call i32 @file_printf(%struct.TYPE_7__* %337, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %339 = icmp eq i32 %338, -1
  br i1 %339, label %340, label %341

340:                                              ; preds = %336
  br label %369

341:                                              ; preds = %336
  br label %342

342:                                              ; preds = %341, %333
  br label %343

343:                                              ; preds = %342, %269
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %345 = call i32 @file_printf(%struct.TYPE_7__* %344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %346 = icmp eq i32 %345, -1
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  br label %369

348:                                              ; preds = %343
  br label %349

349:                                              ; preds = %348, %244
  %350 = load i32, i32* %23, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %349
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %354 = call i32 @file_printf(%struct.TYPE_7__* %353, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %355 = icmp eq i32 %354, -1
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  br label %369

357:                                              ; preds = %352
  br label %358

358:                                              ; preds = %357, %349
  %359 = load i32, i32* %24, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %363 = call i32 @file_printf(%struct.TYPE_7__* %362, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %364 = icmp eq i32 %363, -1
  br i1 %364, label %365, label %366

365:                                              ; preds = %361
  br label %369

366:                                              ; preds = %361
  br label %367

367:                                              ; preds = %366, %358
  br label %368

368:                                              ; preds = %367, %184
  store i32 1, i32* %16, align 4
  br label %369

369:                                              ; preds = %368, %365, %356, %347, %340, %330, %322, %312, %301, %291, %277, %268, %251, %224, %216, %210, %204, %198, %190, %182, %172, %166, %144, %138
  %370 = load i8*, i8** %9, align 8
  %371 = call i32 @free(i8* %370)
  %372 = load i8*, i8** %12, align 8
  %373 = call i32 @free(i8* %372)
  %374 = load i8*, i8** %10, align 8
  %375 = call i32 @free(i8* %374)
  %376 = load i32, i32* %16, align 4
  store i32 %376, i32* %4, align 4
  br label %377

377:                                              ; preds = %369, %3
  %378 = load i32, i32* %4, align 4
  ret i32 %378
}

declare dso_local i32 @file_printf(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
