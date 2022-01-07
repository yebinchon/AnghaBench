; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_uri_parse_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_uri_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"invalid URI propagated to internal parser routine: \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.4 = private unnamed_addr constant [87 x i8] c"end of string reached when looking for matching \22]\22 in IPv6 host address in URI: \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"IPv6 host address may not be empty in URI: \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"unexpected character \22%c\22 at position %d in URI (expected \22:\22 or \22/\22): \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @conninfo_uri_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conninfo_uri_parse_options(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %9, align 8
  store i8 0, i8* %11, align 1
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = call i32 @initPQExpBuffer(%struct.TYPE_7__* %15)
  %21 = call i32 @initPQExpBuffer(%struct.TYPE_7__* %16)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @PQExpBufferDataBroken(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @PQExpBufferDataBroken(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %3
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %32, i32 %33)
  br label %421

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @strdup(i8* %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %41, i32 %42)
  br label %421

44:                                               ; preds = %35
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @uri_prefix_length(i8* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @libpq_gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %51, i32 %52, i8* %53)
  br label %421

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  store i8* %60, i8** %8, align 8
  br label %61

61:                                               ; preds = %78, %55
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 64
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 47
  br label %76

76:                                               ; preds = %71, %66, %61
  %77 = phi i1 [ false, %66 ], [ false, %61 ], [ %75, %71 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  br label %61

81:                                               ; preds = %76
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 64
  br i1 %85, label %86, label %151

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8
  store i8* %87, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  store i8* %88, i8** %8, align 8
  br label %89

89:                                               ; preds = %101, %86
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 58
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 64
  br label %99

99:                                               ; preds = %94, %89
  %100 = phi i1 [ false, %89 ], [ %98, %94 ]
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  br label %89

104:                                              ; preds = %99
  %105 = load i8*, i8** %8, align 8
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %11, align 1
  %107 = load i8*, i8** %8, align 8
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i32*, i32** %4, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @conninfo_storeval(i32* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %114, i32 %115, i32 0, i32 1)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %421

119:                                              ; preds = %112, %104
  %120 = load i8, i8* %11, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 58
  br i1 %122, label %123, label %148

123:                                              ; preds = %119
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8* %125, i8** %17, align 8
  br label %126

126:                                              ; preds = %131, %123
  %127 = load i8*, i8** %8, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 64
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %8, align 8
  br label %126

134:                                              ; preds = %126
  %135 = load i8*, i8** %8, align 8
  store i8 0, i8* %135, align 1
  %136 = load i8*, i8** %17, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load i32*, i32** %4, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @conninfo_storeval(i32* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %142, i32 %143, i32 0, i32 1)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  br label %421

147:                                              ; preds = %140, %134
  br label %148

148:                                              ; preds = %147, %119
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %8, align 8
  br label %153

151:                                              ; preds = %81
  %152 = load i8*, i8** %10, align 8
  store i8* %152, i8** %8, align 8
  br label %153

153:                                              ; preds = %151, %148
  br label %154

154:                                              ; preds = %319, %153
  %155 = load i8*, i8** %8, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 91
  br i1 %158, label %159, label %238

159:                                              ; preds = %154
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %8, align 8
  store i8* %161, i8** %13, align 8
  br label %162

162:                                              ; preds = %174, %159
  %163 = load i8*, i8** %8, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i8*, i8** %8, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 93
  br label %172

172:                                              ; preds = %167, %162
  %173 = phi i1 [ false, %162 ], [ %171, %167 ]
  br i1 %173, label %174, label %177

174:                                              ; preds = %172
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %8, align 8
  br label %162

177:                                              ; preds = %172
  %178 = load i8*, i8** %8, align 8
  %179 = load i8, i8* %178, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @libpq_gettext(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0))
  %184 = load i8*, i8** %5, align 8
  %185 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %182, i32 %183, i8* %184)
  br label %421

186:                                              ; preds = %177
  %187 = load i8*, i8** %8, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = icmp eq i8* %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @libpq_gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %193 = load i8*, i8** %5, align 8
  %194 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %191, i32 %192, i8* %193)
  br label %421

195:                                              ; preds = %186
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %8, align 8
  store i8 0, i8* %196, align 1
  %198 = load i8*, i8** %8, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %237

202:                                              ; preds = %195
  %203 = load i8*, i8** %8, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 %205, 58
  br i1 %206, label %207, label %237

207:                                              ; preds = %202
  %208 = load i8*, i8** %8, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 47
  br i1 %211, label %212, label %237

212:                                              ; preds = %207
  %213 = load i8*, i8** %8, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp ne i32 %215, 63
  br i1 %216, label %217, label %237

217:                                              ; preds = %212
  %218 = load i8*, i8** %8, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 44
  br i1 %221, label %222, label %237

222:                                              ; preds = %217
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @libpq_gettext(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0))
  %225 = load i8*, i8** %8, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = load i8*, i8** %8, align 8
  %229 = load i8*, i8** %9, align 8
  %230 = ptrtoint i8* %228 to i64
  %231 = ptrtoint i8* %229 to i64
  %232 = sub i64 %230, %231
  %233 = add nsw i64 %232, 1
  %234 = trunc i64 %233 to i32
  %235 = load i8*, i8** %5, align 8
  %236 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %223, i32 %224, i32 %227, i32 %234, i8* %235)
  br label %421

237:                                              ; preds = %217, %212, %207, %202, %195
  br label %271

238:                                              ; preds = %154
  %239 = load i8*, i8** %8, align 8
  store i8* %239, i8** %13, align 8
  br label %240

240:                                              ; preds = %267, %238
  %241 = load i8*, i8** %8, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %265

245:                                              ; preds = %240
  %246 = load i8*, i8** %8, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp ne i32 %248, 58
  br i1 %249, label %250, label %265

250:                                              ; preds = %245
  %251 = load i8*, i8** %8, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 47
  br i1 %254, label %255, label %265

255:                                              ; preds = %250
  %256 = load i8*, i8** %8, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 63
  br i1 %259, label %260, label %265

260:                                              ; preds = %255
  %261 = load i8*, i8** %8, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 44
  br label %265

265:                                              ; preds = %260, %255, %250, %245, %240
  %266 = phi i1 [ false, %255 ], [ false, %250 ], [ false, %245 ], [ false, %240 ], [ %264, %260 ]
  br i1 %266, label %267, label %270

267:                                              ; preds = %265
  %268 = load i8*, i8** %8, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %8, align 8
  br label %240

270:                                              ; preds = %265
  br label %271

271:                                              ; preds = %270, %237
  %272 = load i8*, i8** %8, align 8
  %273 = load i8, i8* %272, align 1
  store i8 %273, i8* %11, align 1
  %274 = load i8*, i8** %8, align 8
  store i8 0, i8* %274, align 1
  %275 = load i8*, i8** %13, align 8
  %276 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* %275)
  %277 = load i8, i8* %11, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 58
  br i1 %279, label %280, label %314

280:                                              ; preds = %271
  %281 = load i8*, i8** %8, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %8, align 8
  store i8* %282, i8** %18, align 8
  br label %283

283:                                              ; preds = %305, %280
  %284 = load i8*, i8** %8, align 8
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %303

288:                                              ; preds = %283
  %289 = load i8*, i8** %8, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp ne i32 %291, 47
  br i1 %292, label %293, label %303

293:                                              ; preds = %288
  %294 = load i8*, i8** %8, align 8
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp ne i32 %296, 63
  br i1 %297, label %298, label %303

298:                                              ; preds = %293
  %299 = load i8*, i8** %8, align 8
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp ne i32 %301, 44
  br label %303

303:                                              ; preds = %298, %293, %288, %283
  %304 = phi i1 [ false, %293 ], [ false, %288 ], [ false, %283 ], [ %302, %298 ]
  br i1 %304, label %305, label %308

305:                                              ; preds = %303
  %306 = load i8*, i8** %8, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %8, align 8
  br label %283

308:                                              ; preds = %303
  %309 = load i8*, i8** %8, align 8
  %310 = load i8, i8* %309, align 1
  store i8 %310, i8* %11, align 1
  %311 = load i8*, i8** %8, align 8
  store i8 0, i8* %311, align 1
  %312 = load i8*, i8** %18, align 8
  %313 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %16, i8* %312)
  br label %314

314:                                              ; preds = %308, %271
  %315 = load i8, i8* %11, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp ne i32 %316, 44
  br i1 %317, label %318, label %319

318:                                              ; preds = %314
  br label %324

319:                                              ; preds = %314
  %320 = load i8*, i8** %8, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %8, align 8
  %322 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %15, i8 signext 44)
  %323 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %16, i8 signext 44)
  br label %154

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = call i64 @PQExpBufferDataBroken(i8* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = call i64 @PQExpBufferDataBroken(i8* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %329, %324
  br label %421

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 0
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %335
  %343 = load i32*, i32** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = load i32, i32* %6, align 4
  %347 = call i32 @conninfo_storeval(i32* %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %345, i32 %346, i32 0, i32 1)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %342
  br label %421

350:                                              ; preds = %342, %335
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %352 = load i8*, i8** %351, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 0
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %350
  %358 = load i32*, i32** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = load i32, i32* %6, align 4
  %362 = call i32 @conninfo_storeval(i32* %358, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %360, i32 %361, i32 0, i32 1)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %357
  br label %421

365:                                              ; preds = %357, %350
  %366 = load i8, i8* %11, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %407

369:                                              ; preds = %365
  %370 = load i8, i8* %11, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp ne i32 %371, 63
  br i1 %372, label %373, label %407

373:                                              ; preds = %369
  %374 = load i8*, i8** %8, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %8, align 8
  store i8* %375, i8** %19, align 8
  br label %376

376:                                              ; preds = %388, %373
  %377 = load i8*, i8** %8, align 8
  %378 = load i8, i8* %377, align 1
  %379 = sext i8 %378 to i32
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %376
  %382 = load i8*, i8** %8, align 8
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  %385 = icmp ne i32 %384, 63
  br label %386

386:                                              ; preds = %381, %376
  %387 = phi i1 [ false, %376 ], [ %385, %381 ]
  br i1 %387, label %388, label %391

388:                                              ; preds = %386
  %389 = load i8*, i8** %8, align 8
  %390 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %390, i8** %8, align 8
  br label %376

391:                                              ; preds = %386
  %392 = load i8*, i8** %8, align 8
  %393 = load i8, i8* %392, align 1
  store i8 %393, i8* %11, align 1
  %394 = load i8*, i8** %8, align 8
  store i8 0, i8* %394, align 1
  %395 = load i8*, i8** %19, align 8
  %396 = load i8, i8* %395, align 1
  %397 = sext i8 %396 to i32
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %391
  %400 = load i32*, i32** %4, align 8
  %401 = load i8*, i8** %19, align 8
  %402 = load i32, i32* %6, align 4
  %403 = call i32 @conninfo_storeval(i32* %400, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %401, i32 %402, i32 0, i32 1)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %406, label %405

405:                                              ; preds = %399
  br label %421

406:                                              ; preds = %399, %391
  br label %407

407:                                              ; preds = %406, %369, %365
  %408 = load i8, i8* %11, align 1
  %409 = icmp ne i8 %408, 0
  br i1 %409, label %410, label %420

410:                                              ; preds = %407
  %411 = load i8*, i8** %8, align 8
  %412 = getelementptr inbounds i8, i8* %411, i32 1
  store i8* %412, i8** %8, align 8
  %413 = load i8*, i8** %8, align 8
  %414 = load i32*, i32** %4, align 8
  %415 = load i32, i32* %6, align 4
  %416 = call i32 @conninfo_uri_parse_params(i8* %413, i32* %414, i32 %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %410
  br label %421

419:                                              ; preds = %410
  br label %420

420:                                              ; preds = %419, %407
  store i32 1, i32* %14, align 4
  br label %421

421:                                              ; preds = %420, %418, %405, %364, %349, %334, %222, %190, %181, %146, %118, %50, %40, %31
  %422 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %15)
  %423 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %16)
  %424 = load i8*, i8** %9, align 8
  %425 = icmp ne i8* %424, null
  br i1 %425, label %426, label %429

426:                                              ; preds = %421
  %427 = load i8*, i8** %9, align 8
  %428 = call i32 @free(i8* %427)
  br label %429

429:                                              ; preds = %426, %421
  %430 = load i32, i32* %14, align 4
  ret i32 %430
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i64 @PQExpBufferDataBroken(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @uri_prefix_length(i8*) #1

declare dso_local i32 @conninfo_storeval(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @conninfo_uri_parse_params(i8*, i32*, i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
