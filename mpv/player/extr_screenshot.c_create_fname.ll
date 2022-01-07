; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_screenshot.c_create_fname.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_screenshot.c_create_fname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i8*, i32 }
%struct.tm = type { i32 }
%struct.bstr = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"NO_FILE\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"${%.*s}\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.MPContext*, i8*, i8*, i32*, i32*)* @create_fname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @create_fname(%struct.MPContext* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.MPContext*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tm*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca [5 x i8], align 1
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.bstr, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8, align 1
  %26 = alloca [3 x i8], align 1
  %27 = alloca i8*, align 8
  %28 = alloca i8, align 1
  %29 = alloca [3 x i8], align 1
  %30 = alloca [80 x i8], align 16
  %31 = alloca i8*, align 8
  %32 = alloca %struct.bstr, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %36 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %12, align 8
  %37 = call i32 @time(i32* null)
  store i32 %37, i32* %13, align 4
  %38 = call %struct.tm* @localtime(i32* %13)
  store %struct.tm* %38, %struct.tm** %14, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %5
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %5
  store i8* null, i8** %6, align 8
  br label %343

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %324, %47
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 37)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %325

54:                                               ; preds = %48
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = call i8* @talloc_strndup_append(i8* %55, i8* %56, i32 %62)
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  %68 = load i8, i8* %66, align 1
  store i8 %68, i8* %16, align 1
  %69 = load i8, i8* %16, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %323 [
    i32 35, label %71
    i32 48, label %71
    i32 110, label %71
    i32 102, label %133
    i32 70, label %133
    i32 120, label %159
    i32 88, label %159
    i32 112, label %224
    i32 80, label %224
    i32 119, label %236
    i32 116, label %261
    i32 123, label %284
    i32 37, label %320
  ]

71:                                               ; preds = %54, %54, %54
  store i32 52, i32* %17, align 4
  %72 = load i8, i8* %16, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 35
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** %11, align 8
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  %84 = load i8, i8* %82, align 1
  store i8 %84, i8* %16, align 1
  br label %85

85:                                               ; preds = %81, %71
  %86 = load i8, i8* %16, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 48
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp slt i32 %94, 48
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %17, align 4
  %98 = icmp sgt i32 %97, 57
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %89
  br label %340

100:                                              ; preds = %96
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  %103 = load i8, i8* %101, align 1
  store i8 %103, i8* %16, align 1
  br label %104

104:                                              ; preds = %100, %85
  %105 = load i8, i8* %16, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 110
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %340

109:                                              ; preds = %104
  %110 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  store i8 37, i8* %110, align 1
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8 48, i8* %111, align 1
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i32, i32* %17, align 4
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %112, align 1
  %115 = getelementptr inbounds i8, i8* %112, i64 1
  store i8 100, i8* %115, align 1
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 0, i8* %116, align 1
  %117 = load i8*, i8** %12, align 8
  %118 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %117, i8* %118, i32 %120)
  store i8* %121, i8** %12, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 99999
  br i1 %124, label %125, label %132

125:                                              ; preds = %109
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %109
  br label %324

133:                                              ; preds = %54, %54
  store i8* null, i8** %19, align 8
  %134 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %135 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %140 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @mp_basename(i8* %141)
  store i8* %142, i8** %19, align 8
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i8*, i8** %19, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  br label %147

147:                                              ; preds = %146, %143
  %148 = load i8*, i8** %19, align 8
  store i8* %148, i8** %20, align 8
  %149 = load i8, i8* %16, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 70
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i8*, i8** %12, align 8
  %154 = load i8*, i8** %19, align 8
  %155 = call i8* @stripext(i8* %153, i8* %154)
  store i8* %155, i8** %20, align 8
  br label %156

156:                                              ; preds = %152, %147
  %157 = load i8*, i8** %20, align 8
  %158 = call i32 @append_filename(i8** %12, i8* %157)
  br label %324

159:                                              ; preds = %54, %54
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %160 = load i8, i8* %16, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 88
  br i1 %162, label %163, label %190

163:                                              ; preds = %159
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 123
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %340

170:                                              ; preds = %163
  %171 = load i8*, i8** %8, align 8
  %172 = call i8* @strchr(i8* %171, i8 signext 125)
  store i8* %172, i8** %22, align 8
  %173 = load i8*, i8** %22, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  br label %340

176:                                              ; preds = %170
  %177 = load i8*, i8** %12, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8*, i8** %22, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = ptrtoint i8* %180 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sub nsw i64 %184, 1
  %186 = trunc i64 %185 to i32
  %187 = call i8* @talloc_strndup(i8* %177, i8* %179, i32 %186)
  store i8* %187, i8** %21, align 8
  %188 = load i8*, i8** %22, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8* %189, i8** %8, align 8
  br label %190

190:                                              ; preds = %176, %159
  %191 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %192 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %202

195:                                              ; preds = %190
  %196 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %197 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @bstr0(i8* %198)
  %200 = call i32 @mp_is_url(i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195, %190
  %203 = load i8*, i8** %12, align 8
  %204 = load i8*, i8** %21, align 8
  %205 = call i8* @talloc_strdup_append(i8* %203, i8* %204)
  store i8* %205, i8** %12, align 8
  br label %223

206:                                              ; preds = %195
  %207 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %208 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @mp_dirname(i8* %209)
  %211 = getelementptr inbounds %struct.bstr, %struct.bstr* %23, i32 0, i32 0
  store i32 %210, i32* %211, align 4
  %212 = getelementptr inbounds %struct.bstr, %struct.bstr* %23, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @bstr_equals0(i32 %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %206
  %217 = load i8*, i8** %12, align 8
  %218 = getelementptr inbounds %struct.bstr, %struct.bstr* %23, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @BSTR_P(i32 %219)
  %221 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %220)
  store i8* %221, i8** %12, align 8
  br label %222

222:                                              ; preds = %216, %206
  br label %223

223:                                              ; preds = %222, %202
  br label %324

224:                                              ; preds = %54, %54
  %225 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %226 = call i32 @get_playback_time(%struct.MPContext* %225)
  %227 = load i8, i8* %16, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 80
  %230 = zext i1 %229 to i32
  %231 = call i8* @mp_format_time(i32 %226, i32 %230)
  store i8* %231, i8** %24, align 8
  %232 = load i8*, i8** %24, align 8
  %233 = call i32 @append_filename(i8** %12, i8* %232)
  %234 = load i8*, i8** %24, align 8
  %235 = call i32 @talloc_free(i8* %234)
  br label %324

236:                                              ; preds = %54
  %237 = load i8*, i8** %8, align 8
  %238 = load i8, i8* %237, align 1
  store i8 %238, i8* %25, align 1
  %239 = load i8, i8* %25, align 1
  %240 = icmp ne i8 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %236
  br label %340

242:                                              ; preds = %236
  %243 = load i8*, i8** %8, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %8, align 8
  %245 = getelementptr inbounds [3 x i8], [3 x i8]* %26, i64 0, i64 0
  store i8 37, i8* %245, align 1
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %25, align 1
  store i8 %247, i8* %246, align 1
  %248 = getelementptr inbounds i8, i8* %246, i64 1
  store i8 0, i8* %248, align 1
  %249 = getelementptr inbounds [3 x i8], [3 x i8]* %26, i64 0, i64 0
  %250 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %251 = call i32 @get_playback_time(%struct.MPContext* %250)
  %252 = call i8* @mp_format_time_fmt(i8* %249, i32 %251)
  store i8* %252, i8** %27, align 8
  %253 = load i8*, i8** %27, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %242
  br label %340

256:                                              ; preds = %242
  %257 = load i8*, i8** %27, align 8
  %258 = call i32 @append_filename(i8** %12, i8* %257)
  %259 = load i8*, i8** %27, align 8
  %260 = call i32 @talloc_free(i8* %259)
  br label %324

261:                                              ; preds = %54
  %262 = load i8*, i8** %8, align 8
  %263 = load i8, i8* %262, align 1
  store i8 %263, i8* %28, align 1
  %264 = load i8, i8* %28, align 1
  %265 = icmp ne i8 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %261
  br label %340

267:                                              ; preds = %261
  %268 = load i8*, i8** %8, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %8, align 8
  %270 = getelementptr inbounds [3 x i8], [3 x i8]* %29, i64 0, i64 0
  store i8 37, i8* %270, align 1
  %271 = getelementptr inbounds i8, i8* %270, i64 1
  %272 = load i8, i8* %28, align 1
  store i8 %272, i8* %271, align 1
  %273 = getelementptr inbounds i8, i8* %271, i64 1
  store i8 0, i8* %273, align 1
  %274 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %275 = getelementptr inbounds [3 x i8], [3 x i8]* %29, i64 0, i64 0
  %276 = load %struct.tm*, %struct.tm** %14, align 8
  %277 = call i32 @strftime(i8* %274, i32 80, i8* %275, %struct.tm* %276)
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %267
  %280 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  store i8 0, i8* %280, align 16
  br label %281

281:                                              ; preds = %279, %267
  %282 = getelementptr inbounds [80 x i8], [80 x i8]* %30, i64 0, i64 0
  %283 = call i32 @append_filename(i8** %12, i8* %282)
  br label %324

284:                                              ; preds = %54
  %285 = load i8*, i8** %8, align 8
  %286 = call i8* @strchr(i8* %285, i8 signext 125)
  store i8* %286, i8** %31, align 8
  %287 = load i8*, i8** %31, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %290, label %289

289:                                              ; preds = %284
  br label %340

290:                                              ; preds = %284
  %291 = load i8*, i8** %8, align 8
  %292 = call i32 @bstr0(i8* %291)
  %293 = load i8*, i8** %31, align 8
  %294 = load i8*, i8** %8, align 8
  %295 = ptrtoint i8* %293 to i64
  %296 = ptrtoint i8* %294 to i64
  %297 = sub i64 %295, %296
  %298 = trunc i64 %297 to i32
  %299 = call i32 @bstr_splice(i32 %292, i32 0, i32 %298)
  %300 = getelementptr inbounds %struct.bstr, %struct.bstr* %32, i32 0, i32 0
  store i32 %299, i32* %300, align 4
  %301 = getelementptr inbounds %struct.bstr, %struct.bstr* %32, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @BSTR_P(i32 %302)
  %304 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %303)
  store i8* %304, i8** %33, align 8
  %305 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %306 = load i8*, i8** %33, align 8
  %307 = call i8* @mp_property_expand_string(%struct.MPContext* %305, i8* %306)
  store i8* %307, i8** %34, align 8
  %308 = load i8*, i8** %33, align 8
  %309 = call i32 @talloc_free(i8* %308)
  %310 = load i8*, i8** %34, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %290
  %313 = load i8*, i8** %34, align 8
  %314 = call i32 @append_filename(i8** %12, i8* %313)
  br label %315

315:                                              ; preds = %312, %290
  %316 = load i8*, i8** %34, align 8
  %317 = call i32 @talloc_free(i8* %316)
  %318 = load i8*, i8** %31, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 1
  store i8* %319, i8** %8, align 8
  br label %324

320:                                              ; preds = %54
  %321 = load i8*, i8** %12, align 8
  %322 = call i8* @talloc_strdup_append(i8* %321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %322, i8** %12, align 8
  br label %324

323:                                              ; preds = %54
  br label %340

324:                                              ; preds = %320, %315, %281, %256, %224, %223, %156, %132
  br label %48

325:                                              ; preds = %53
  %326 = load i8*, i8** %12, align 8
  %327 = load i8*, i8** %8, align 8
  %328 = call i8* @talloc_strdup_append(i8* %326, i8* %327)
  store i8* %328, i8** %12, align 8
  %329 = load i8*, i8** %12, align 8
  %330 = load i8*, i8** %9, align 8
  %331 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %329, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %330)
  store i8* %331, i8** %12, align 8
  %332 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %333 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = load i8*, i8** %12, align 8
  %336 = call i8* @mp_get_user_path(i32* null, i32 %334, i8* %335)
  store i8* %336, i8** %35, align 8
  %337 = load i8*, i8** %12, align 8
  %338 = call i32 @talloc_free(i8* %337)
  %339 = load i8*, i8** %35, align 8
  store i8* %339, i8** %6, align 8
  br label %343

340:                                              ; preds = %323, %289, %266, %255, %241, %175, %169, %108, %99
  %341 = load i8*, i8** %12, align 8
  %342 = call i32 @talloc_free(i8* %341)
  store i8* null, i8** %6, align 8
  br label %343

343:                                              ; preds = %340, %325, %46
  %344 = load i8*, i8** %6, align 8
  ret i8* %344
}

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @talloc_strndup_append(i8*, i8*, i32) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, ...) #1

declare dso_local i8* @mp_basename(i8*) #1

declare dso_local i8* @stripext(i8*, i8*) #1

declare dso_local i32 @append_filename(i8**, i8*) #1

declare dso_local i8* @talloc_strndup(i8*, i8*, i32) #1

declare dso_local i32 @mp_is_url(i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i8* @talloc_strdup_append(i8*, i8*) #1

declare dso_local i32 @mp_dirname(i8*) #1

declare dso_local i32 @bstr_equals0(i32, i8*) #1

declare dso_local i8* @BSTR_P(i32) #1

declare dso_local i8* @mp_format_time(i32, i32) #1

declare dso_local i32 @get_playback_time(%struct.MPContext*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @mp_format_time_fmt(i8*, i32) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @bstr_splice(i32, i32, i32) #1

declare dso_local i8* @talloc_asprintf(i32*, i8*, i8*) #1

declare dso_local i8* @mp_property_expand_string(%struct.MPContext*, i8*) #1

declare dso_local i8* @mp_get_user_path(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
