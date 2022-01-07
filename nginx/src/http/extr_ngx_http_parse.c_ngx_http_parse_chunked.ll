; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_parse.c_ngx_http_parse_chunked.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_parse.c_ngx_http_parse_chunked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32, i64, i32 }

@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"http chunked byte: %02Xd s:%d\00", align 1
@NGX_MAX_OFF_T_VALUE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_parse_chunked(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 5, i32* %12, align 4
  br label %24

24:                                               ; preds = %23, %18, %3
  %25 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %224, %24
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ult i8* %30, %33
  br i1 %34, label %35, label %227

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %9, align 1
  %38 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8, i8* %9, align 1
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @ngx_log_debug2(i32 %38, i32 %43, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 signext %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %223 [
    i32 0, label %48
    i32 1, label %84
    i32 2, label %159
    i32 3, label %165
    i32 4, label %171
    i32 5, label %173
    i32 6, label %180
    i32 7, label %186
    i32 8, label %192
    i32 9, label %198
    i32 10, label %205
    i32 11, label %211
    i32 12, label %217
  ]

48:                                               ; preds = %35
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 57
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  %57 = load i8, i8* %9, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 48
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %223

63:                                               ; preds = %52, %48
  %64 = load i8, i8* %9, align 1
  %65 = sext i8 %64 to i32
  %66 = or i32 %65, 32
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %10, align 1
  %68 = load i8, i8* %10, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sge i32 %69, 97
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load i8, i8* %10, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %73, 102
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  %76 = load i8, i8* %10, align 1
  %77 = sext i8 %76 to i32
  %78 = sub nsw i32 %77, 97
  %79 = add nsw i32 %78, 10
  %80 = sext i32 %79 to i64
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %223

83:                                               ; preds = %71, %63
  br label %304

84:                                               ; preds = %35
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %89 = sdiv i32 %88, 16
  %90 = sext i32 %89 to i64
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %304

93:                                               ; preds = %84
  %94 = load i8, i8* %9, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sge i32 %95, 48
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i8, i8* %9, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 57
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = mul nsw i64 %104, 16
  %106 = load i8, i8* %9, align 1
  %107 = sext i8 %106 to i32
  %108 = sub nsw i32 %107, 48
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  br label %223

113:                                              ; preds = %97, %93
  %114 = load i8, i8* %9, align 1
  %115 = sext i8 %114 to i32
  %116 = or i32 %115, 32
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %10, align 1
  %118 = load i8, i8* %10, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sge i32 %119, 97
  br i1 %120, label %121, label %138

121:                                              ; preds = %113
  %122 = load i8, i8* %10, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp sle i32 %123, 102
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = mul nsw i64 %128, 16
  %130 = load i8, i8* %10, align 1
  %131 = sext i8 %130 to i32
  %132 = sub nsw i32 %131, 97
  %133 = add nsw i32 %132, 10
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %129, %134
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  br label %223

138:                                              ; preds = %121, %113
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load i8, i8* %9, align 1
  %145 = sext i8 %144 to i32
  switch i32 %145, label %149 [
    i32 129, label %146
    i32 128, label %147
    i32 59, label %148
    i32 32, label %148
    i32 9, label %148
  ]

146:                                              ; preds = %143
  store i32 8, i32* %12, align 4
  br label %150

147:                                              ; preds = %143
  store i32 9, i32* %12, align 4
  br label %150

148:                                              ; preds = %143, %143, %143
  store i32 7, i32* %12, align 4
  br label %150

149:                                              ; preds = %143
  br label %304

150:                                              ; preds = %148, %147, %146
  br label %223

151:                                              ; preds = %138
  %152 = load i8, i8* %9, align 1
  %153 = sext i8 %152 to i32
  switch i32 %153, label %157 [
    i32 129, label %154
    i32 128, label %155
    i32 59, label %156
    i32 32, label %156
    i32 9, label %156
  ]

154:                                              ; preds = %151
  store i32 3, i32* %12, align 4
  br label %158

155:                                              ; preds = %151
  store i32 4, i32* %12, align 4
  br label %158

156:                                              ; preds = %151, %151, %151
  store i32 2, i32* %12, align 4
  br label %158

157:                                              ; preds = %151
  br label %304

158:                                              ; preds = %156, %155, %154
  br label %223

159:                                              ; preds = %35
  %160 = load i8, i8* %9, align 1
  %161 = sext i8 %160 to i32
  switch i32 %161, label %164 [
    i32 129, label %162
    i32 128, label %163
  ]

162:                                              ; preds = %159
  store i32 3, i32* %12, align 4
  br label %164

163:                                              ; preds = %159
  store i32 4, i32* %12, align 4
  br label %164

164:                                              ; preds = %163, %159, %162
  br label %223

165:                                              ; preds = %35
  %166 = load i8, i8* %9, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 128
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 4, i32* %12, align 4
  br label %223

170:                                              ; preds = %165
  br label %304

171:                                              ; preds = %35
  %172 = load i32, i32* @NGX_OK, align 4
  store i32 %172, i32* %11, align 4
  br label %228

173:                                              ; preds = %35
  %174 = load i8, i8* %9, align 1
  %175 = sext i8 %174 to i32
  switch i32 %175, label %178 [
    i32 129, label %176
    i32 128, label %177
  ]

176:                                              ; preds = %173
  store i32 6, i32* %12, align 4
  br label %179

177:                                              ; preds = %173
  store i32 0, i32* %12, align 4
  br label %179

178:                                              ; preds = %173
  br label %304

179:                                              ; preds = %177, %176
  br label %223

180:                                              ; preds = %35
  %181 = load i8, i8* %9, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 128
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 0, i32* %12, align 4
  br label %223

185:                                              ; preds = %180
  br label %304

186:                                              ; preds = %35
  %187 = load i8, i8* %9, align 1
  %188 = sext i8 %187 to i32
  switch i32 %188, label %191 [
    i32 129, label %189
    i32 128, label %190
  ]

189:                                              ; preds = %186
  store i32 8, i32* %12, align 4
  br label %191

190:                                              ; preds = %186
  store i32 9, i32* %12, align 4
  br label %191

191:                                              ; preds = %190, %186, %189
  br label %223

192:                                              ; preds = %35
  %193 = load i8, i8* %9, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 128
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 9, i32* %12, align 4
  br label %223

197:                                              ; preds = %192
  br label %304

198:                                              ; preds = %35
  %199 = load i8, i8* %9, align 1
  %200 = sext i8 %199 to i32
  switch i32 %200, label %203 [
    i32 129, label %201
    i32 128, label %202
  ]

201:                                              ; preds = %198
  store i32 10, i32* %12, align 4
  br label %204

202:                                              ; preds = %198
  br label %296

203:                                              ; preds = %198
  store i32 11, i32* %12, align 4
  br label %204

204:                                              ; preds = %203, %201
  br label %223

205:                                              ; preds = %35
  %206 = load i8, i8* %9, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 128
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %296

210:                                              ; preds = %205
  br label %304

211:                                              ; preds = %35
  %212 = load i8, i8* %9, align 1
  %213 = sext i8 %212 to i32
  switch i32 %213, label %216 [
    i32 129, label %214
    i32 128, label %215
  ]

214:                                              ; preds = %211
  store i32 12, i32* %12, align 4
  br label %216

215:                                              ; preds = %211
  store i32 9, i32* %12, align 4
  br label %216

216:                                              ; preds = %215, %211, %214
  br label %223

217:                                              ; preds = %35
  %218 = load i8, i8* %9, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 128
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i32 9, i32* %12, align 4
  br label %223

222:                                              ; preds = %217
  br label %304

223:                                              ; preds = %35, %221, %216, %204, %196, %191, %184, %179, %169, %164, %158, %150, %125, %101, %75, %56
  br label %224

224:                                              ; preds = %223
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %8, align 8
  br label %29

227:                                              ; preds = %29
  br label %228

228:                                              ; preds = %227, %171
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load i8*, i8** %8, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %239 = sub nsw i32 %238, 5
  %240 = sext i32 %239 to i64
  %241 = icmp sgt i64 %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %228
  br label %304

243:                                              ; preds = %228
  %244 = load i32, i32* %12, align 4
  switch i32 %244, label %294 [
    i32 0, label %245
    i32 1, label %248
    i32 2, label %265
    i32 3, label %265
    i32 4, label %274
    i32 5, label %282
    i32 6, label %282
    i32 7, label %285
    i32 8, label %285
    i32 9, label %288
    i32 10, label %288
    i32 11, label %291
    i32 12, label %291
  ]

245:                                              ; preds = %243
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 2
  store i32 3, i32* %247, align 8
  br label %294

248:                                              ; preds = %243
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %256, 4
  br label %259

258:                                              ; preds = %248
  br label %259

259:                                              ; preds = %258, %253
  %260 = phi i64 [ %257, %253 ], [ 1, %258 ]
  %261 = add nsw i64 1, %260
  %262 = trunc i64 %261 to i32
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  br label %294

265:                                              ; preds = %243, %243
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 1, %268
  %270 = add nsw i64 %269, 4
  %271 = trunc i64 %270 to i32
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  br label %294

274:                                              ; preds = %243
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %277, 4
  %279 = trunc i64 %278 to i32
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  br label %294

282:                                              ; preds = %243, %243
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 2
  store i32 4, i32* %284, align 8
  br label %294

285:                                              ; preds = %243, %243
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 2
  store i32 2, i32* %287, align 8
  br label %294

288:                                              ; preds = %243, %243
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 2
  store i32 1, i32* %290, align 8
  br label %294

291:                                              ; preds = %243, %243
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  store i32 2, i32* %293, align 8
  br label %294

294:                                              ; preds = %243, %291, %288, %285, %282, %274, %265, %259, %245
  %295 = load i32, i32* %11, align 4
  store i32 %295, i32* %4, align 4
  br label %306

296:                                              ; preds = %209, %202
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  store i32 0, i32* %298, align 8
  %299 = load i8*, i8** %8, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  store i8* %300, i8** %302, align 8
  %303 = load i32, i32* @NGX_DONE, align 4
  store i32 %303, i32* %4, align 4
  br label %306

304:                                              ; preds = %242, %222, %210, %197, %185, %178, %170, %157, %149, %92, %83
  %305 = load i32, i32* @NGX_ERROR, align 4
  store i32 %305, i32* %4, align 4
  br label %306

306:                                              ; preds = %304, %296, %294
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
