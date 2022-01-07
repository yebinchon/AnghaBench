; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_push_resources.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_push_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__*, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_25__ = type { i32, i8* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32* }

@NGX_HTTP_V2_PUSH_HEADERS = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"http2 push resources\00", align 1
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_ABORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"http2 parse link: \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"nopush\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rel=preload\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rel=\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_27__*)* @ngx_http_v2_push_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_v2_push_resources(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__**, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %17 = load i32, i32* @NGX_HTTP_V2_PUSH_HEADERS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca %struct.TYPE_25__, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ngx_log_debug0(i32 %21, i32 %26, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @NGX_HTTP_V2_PUSH_HEADERS, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 16
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ngx_memzero(%struct.TYPE_25__* %20, i32 %31)
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %34 = load i32, i32* @ngx_http_v2_module, align 4
  %35 = call %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__* %33, i32 %34)
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %12, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = icmp ne %struct.TYPE_20__* %38, null
  br i1 %39, label %40, label %98

40:                                               ; preds = %1
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %13, align 8
  store i64 0, i64* %9, align 8
  br label %46

46:                                               ; preds = %94, %40
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %47, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %46
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = call i64 @ngx_http_complex_value(%struct.TYPE_27__* %55, i32* %58, %struct.TYPE_25__* %8)
  %60 = load i64, i64* @NGX_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i64, i64* @NGX_ERROR, align 8
  store i64 %63, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %559

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %94

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @ngx_strncmp(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %94

79:                                               ; preds = %73, %69
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %81 = call i64 @ngx_http_v2_push_resource(%struct.TYPE_27__* %80, %struct.TYPE_25__* %8, %struct.TYPE_25__* %20)
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @NGX_ERROR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i64, i64* @NGX_ERROR, align 8
  store i64 %86, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %559

87:                                               ; preds = %79
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @NGX_ABORT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i64, i64* @NGX_OK, align 8
  store i64 %92, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %559

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %78, %68
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %46

97:                                               ; preds = %46
  br label %98

98:                                               ; preds = %97, %1
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = load i64, i64* @NGX_OK, align 8
  store i64 %104, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %559

105:                                              ; preds = %98
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %109, align 8
  store %struct.TYPE_24__** %110, %struct.TYPE_24__*** %11, align 8
  store i64 0, i64* %9, align 8
  br label %111

111:                                              ; preds = %554, %105
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %112, %117
  br i1 %118, label %119, label %557

119:                                              ; preds = %111
  %120 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %126, i64 %127
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = call i32 @ngx_log_debug1(i32 %120, i32 %125, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_19__* %130)
  %132 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %132, i64 %133
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %4, align 8
  %139 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %139, i64 %140
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %147 = load i64, i64* %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %146, i64 %147
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %145, i64 %153
  store i8* %154, i8** %5, align 8
  br label %155

155:                                              ; preds = %550, %258, %119
  br label %156

156:                                              ; preds = %167, %155
  %157 = load i8*, i8** %4, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = icmp ult i8* %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i8*, i8** %4, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 32
  br label %165

165:                                              ; preds = %160, %156
  %166 = phi i1 [ false, %156 ], [ %164, %160 ]
  br i1 %166, label %167, label %170

167:                                              ; preds = %165
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %4, align 8
  br label %156

170:                                              ; preds = %165
  %171 = load i8*, i8** %4, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %170
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %4, align 8
  %177 = load i8, i8* %175, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 60
  br i1 %179, label %180, label %181

180:                                              ; preds = %174, %170
  br label %554

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %193, %181
  %183 = load i8*, i8** %4, align 8
  %184 = load i8*, i8** %5, align 8
  %185 = icmp ult i8* %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load i8*, i8** %4, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 32
  br label %191

191:                                              ; preds = %186, %182
  %192 = phi i1 [ false, %182 ], [ %190, %186 ]
  br i1 %192, label %193, label %196

193:                                              ; preds = %191
  %194 = load i8*, i8** %4, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %4, align 8
  br label %182

196:                                              ; preds = %191
  %197 = load i8*, i8** %4, align 8
  store i8* %197, i8** %6, align 8
  br label %198

198:                                              ; preds = %210, %196
  %199 = load i8*, i8** %6, align 8
  %200 = load i8*, i8** %5, align 8
  %201 = icmp ult i8* %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = load i8*, i8** %6, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 %205, 62
  br label %207

207:                                              ; preds = %202, %198
  %208 = phi i1 [ false, %198 ], [ %206, %202 ]
  br i1 %208, label %209, label %213

209:                                              ; preds = %207
  br label %210

210:                                              ; preds = %209
  %211 = load i8*, i8** %6, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %6, align 8
  br label %198

213:                                              ; preds = %207
  %214 = load i8*, i8** %6, align 8
  %215 = load i8*, i8** %4, align 8
  %216 = icmp eq i8* %214, %215
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load i8*, i8** %6, align 8
  %219 = load i8*, i8** %5, align 8
  %220 = icmp eq i8* %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %217, %213
  br label %554

222:                                              ; preds = %217
  %223 = load i8*, i8** %6, align 8
  %224 = load i8*, i8** %4, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = trunc i64 %227 to i32
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  store i32 %228, i32* %229, align 8
  %230 = load i8*, i8** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  store i8* %230, i8** %231, align 8
  %232 = load i8*, i8** %6, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  store i8* %233, i8** %4, align 8
  br label %234

234:                                              ; preds = %245, %222
  %235 = load i8*, i8** %4, align 8
  %236 = load i8*, i8** %5, align 8
  %237 = icmp ult i8* %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = load i8*, i8** %4, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 32
  br label %243

243:                                              ; preds = %238, %234
  %244 = phi i1 [ false, %234 ], [ %242, %238 ]
  br i1 %244, label %245, label %248

245:                                              ; preds = %243
  %246 = load i8*, i8** %4, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %4, align 8
  br label %234

248:                                              ; preds = %243
  %249 = load i8*, i8** %4, align 8
  %250 = load i8*, i8** %5, align 8
  %251 = icmp eq i8* %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %554

253:                                              ; preds = %248
  %254 = load i8*, i8** %4, align 8
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 44
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i8*, i8** %4, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %4, align 8
  br label %155

261:                                              ; preds = %253
  %262 = load i8*, i8** %4, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %4, align 8
  %264 = load i8, i8* %262, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp ne i32 %265, 59
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  br label %554

268:                                              ; preds = %261
  %269 = load i8*, i8** %4, align 8
  %270 = load i8*, i8** %5, align 8
  %271 = call i8* @ngx_strlchr(i8* %269, i8* %270, i8 signext 44)
  store i8* %271, i8** %6, align 8
  %272 = load i8*, i8** %6, align 8
  %273 = icmp eq i8* %272, null
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = load i8*, i8** %5, align 8
  store i8* %275, i8** %6, align 8
  br label %276

276:                                              ; preds = %274, %268
  store i64 0, i64* %10, align 8
  br label %277

277:                                              ; preds = %477, %276
  br label %278

278:                                              ; preds = %289, %277
  %279 = load i8*, i8** %4, align 8
  %280 = load i8*, i8** %6, align 8
  %281 = icmp ult i8* %279, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %278
  %283 = load i8*, i8** %4, align 8
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 32
  br label %287

287:                                              ; preds = %282, %278
  %288 = phi i1 [ false, %278 ], [ %286, %282 ]
  br i1 %288, label %289, label %292

289:                                              ; preds = %287
  %290 = load i8*, i8** %4, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %4, align 8
  br label %278

292:                                              ; preds = %287
  %293 = load i8*, i8** %6, align 8
  %294 = load i8*, i8** %4, align 8
  %295 = ptrtoint i8* %293 to i64
  %296 = ptrtoint i8* %294 to i64
  %297 = sub i64 %295, %296
  %298 = icmp sge i64 %297, 6
  br i1 %298, label %299, label %321

299:                                              ; preds = %292
  %300 = load i8*, i8** %4, align 8
  %301 = call i64 @ngx_strncasecmp(i8* %300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %321

303:                                              ; preds = %299
  %304 = load i8*, i8** %4, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 6
  store i8* %305, i8** %4, align 8
  %306 = load i8*, i8** %4, align 8
  %307 = load i8*, i8** %6, align 8
  %308 = icmp eq i8* %306, %307
  br i1 %308, label %319, label %309

309:                                              ; preds = %303
  %310 = load i8*, i8** %4, align 8
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 32
  br i1 %313, label %319, label %314

314:                                              ; preds = %309
  %315 = load i8*, i8** %4, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 59
  br i1 %318, label %319, label %320

319:                                              ; preds = %314, %309, %303
  store i64 0, i64* %10, align 8
  br label %480

320:                                              ; preds = %314
  br label %470

321:                                              ; preds = %299, %292
  %322 = load i8*, i8** %6, align 8
  %323 = load i8*, i8** %4, align 8
  %324 = ptrtoint i8* %322 to i64
  %325 = ptrtoint i8* %323 to i64
  %326 = sub i64 %324, %325
  %327 = icmp sge i64 %326, 11
  br i1 %327, label %328, label %350

328:                                              ; preds = %321
  %329 = load i8*, i8** %4, align 8
  %330 = call i64 @ngx_strncasecmp(i8* %329, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %350

332:                                              ; preds = %328
  %333 = load i8*, i8** %4, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 11
  store i8* %334, i8** %4, align 8
  %335 = load i8*, i8** %4, align 8
  %336 = load i8*, i8** %6, align 8
  %337 = icmp eq i8* %335, %336
  br i1 %337, label %348, label %338

338:                                              ; preds = %332
  %339 = load i8*, i8** %4, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 32
  br i1 %342, label %348, label %343

343:                                              ; preds = %338
  %344 = load i8*, i8** %4, align 8
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp eq i32 %346, 59
  br i1 %347, label %348, label %349

348:                                              ; preds = %343, %338, %332
  store i64 1, i64* %10, align 8
  br label %349

349:                                              ; preds = %348, %343
  br label %470

350:                                              ; preds = %328, %321
  %351 = load i8*, i8** %6, align 8
  %352 = load i8*, i8** %4, align 8
  %353 = ptrtoint i8* %351 to i64
  %354 = ptrtoint i8* %352 to i64
  %355 = sub i64 %353, %354
  %356 = icmp sge i64 %355, 4
  br i1 %356, label %357, label %469

357:                                              ; preds = %350
  %358 = load i8*, i8** %4, align 8
  %359 = call i64 @ngx_strncasecmp(i8* %358, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %469

361:                                              ; preds = %357
  %362 = load i8*, i8** %4, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 4
  store i8* %363, i8** %4, align 8
  br label %364

364:                                              ; preds = %375, %361
  %365 = load i8*, i8** %4, align 8
  %366 = load i8*, i8** %6, align 8
  %367 = icmp ult i8* %365, %366
  br i1 %367, label %368, label %373

368:                                              ; preds = %364
  %369 = load i8*, i8** %4, align 8
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp eq i32 %371, 32
  br label %373

373:                                              ; preds = %368, %364
  %374 = phi i1 [ false, %364 ], [ %372, %368 ]
  br i1 %374, label %375, label %378

375:                                              ; preds = %373
  %376 = load i8*, i8** %4, align 8
  %377 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %377, i8** %4, align 8
  br label %364

378:                                              ; preds = %373
  %379 = load i8*, i8** %4, align 8
  %380 = load i8*, i8** %6, align 8
  %381 = icmp eq i8* %379, %380
  br i1 %381, label %388, label %382

382:                                              ; preds = %378
  %383 = load i8*, i8** %4, align 8
  %384 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %384, i8** %4, align 8
  %385 = load i8, i8* %383, align 1
  %386 = sext i8 %385 to i32
  %387 = icmp ne i32 %386, 34
  br i1 %387, label %388, label %389

388:                                              ; preds = %382, %378
  br label %470

389:                                              ; preds = %382
  br label %390

390:                                              ; preds = %465, %389
  br label %391

391:                                              ; preds = %402, %390
  %392 = load i8*, i8** %4, align 8
  %393 = load i8*, i8** %6, align 8
  %394 = icmp ult i8* %392, %393
  br i1 %394, label %395, label %400

395:                                              ; preds = %391
  %396 = load i8*, i8** %4, align 8
  %397 = load i8, i8* %396, align 1
  %398 = sext i8 %397 to i32
  %399 = icmp eq i32 %398, 32
  br label %400

400:                                              ; preds = %395, %391
  %401 = phi i1 [ false, %391 ], [ %399, %395 ]
  br i1 %401, label %402, label %405

402:                                              ; preds = %400
  %403 = load i8*, i8** %4, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %4, align 8
  br label %391

405:                                              ; preds = %400
  %406 = load i8*, i8** %6, align 8
  %407 = load i8*, i8** %4, align 8
  %408 = ptrtoint i8* %406 to i64
  %409 = ptrtoint i8* %407 to i64
  %410 = sub i64 %408, %409
  %411 = icmp sge i64 %410, 7
  br i1 %411, label %412, label %434

412:                                              ; preds = %405
  %413 = load i8*, i8** %4, align 8
  %414 = call i64 @ngx_strncasecmp(i8* %413, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %434

416:                                              ; preds = %412
  %417 = load i8*, i8** %4, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 7
  store i8* %418, i8** %4, align 8
  %419 = load i8*, i8** %4, align 8
  %420 = load i8*, i8** %6, align 8
  %421 = icmp ult i8* %419, %420
  br i1 %421, label %422, label %433

422:                                              ; preds = %416
  %423 = load i8*, i8** %4, align 8
  %424 = load i8, i8* %423, align 1
  %425 = sext i8 %424 to i32
  %426 = icmp eq i32 %425, 32
  br i1 %426, label %432, label %427

427:                                              ; preds = %422
  %428 = load i8*, i8** %4, align 8
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp eq i32 %430, 34
  br i1 %431, label %432, label %433

432:                                              ; preds = %427, %422
  store i64 1, i64* %10, align 8
  br label %468

433:                                              ; preds = %427, %416
  br label %434

434:                                              ; preds = %433, %412, %405
  br label %435

435:                                              ; preds = %451, %434
  %436 = load i8*, i8** %4, align 8
  %437 = load i8*, i8** %6, align 8
  %438 = icmp ult i8* %436, %437
  br i1 %438, label %439, label %449

439:                                              ; preds = %435
  %440 = load i8*, i8** %4, align 8
  %441 = load i8, i8* %440, align 1
  %442 = sext i8 %441 to i32
  %443 = icmp ne i32 %442, 32
  br i1 %443, label %444, label %449

444:                                              ; preds = %439
  %445 = load i8*, i8** %4, align 8
  %446 = load i8, i8* %445, align 1
  %447 = sext i8 %446 to i32
  %448 = icmp ne i32 %447, 34
  br label %449

449:                                              ; preds = %444, %439, %435
  %450 = phi i1 [ false, %439 ], [ false, %435 ], [ %448, %444 ]
  br i1 %450, label %451, label %454

451:                                              ; preds = %449
  %452 = load i8*, i8** %4, align 8
  %453 = getelementptr inbounds i8, i8* %452, i32 1
  store i8* %453, i8** %4, align 8
  br label %435

454:                                              ; preds = %449
  %455 = load i8*, i8** %4, align 8
  %456 = load i8*, i8** %6, align 8
  %457 = icmp eq i8* %455, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %454
  br label %468

459:                                              ; preds = %454
  %460 = load i8*, i8** %4, align 8
  %461 = load i8, i8* %460, align 1
  %462 = sext i8 %461 to i32
  %463 = icmp eq i32 %462, 34
  br i1 %463, label %464, label %465

464:                                              ; preds = %459
  br label %468

465:                                              ; preds = %459
  %466 = load i8*, i8** %4, align 8
  %467 = getelementptr inbounds i8, i8* %466, i32 1
  store i8* %467, i8** %4, align 8
  br label %390

468:                                              ; preds = %464, %458, %432
  br label %469

469:                                              ; preds = %468, %357, %350
  br label %470

470:                                              ; preds = %469, %388, %349, %320
  %471 = load i8*, i8** %4, align 8
  %472 = load i8*, i8** %6, align 8
  %473 = call i8* @ngx_strlchr(i8* %471, i8* %472, i8 signext 59)
  store i8* %473, i8** %4, align 8
  %474 = load i8*, i8** %4, align 8
  %475 = icmp eq i8* %474, null
  br i1 %475, label %476, label %477

476:                                              ; preds = %470
  br label %480

477:                                              ; preds = %470
  %478 = load i8*, i8** %4, align 8
  %479 = getelementptr inbounds i8, i8* %478, i32 1
  store i8* %479, i8** %4, align 8
  br label %277

480:                                              ; preds = %476, %319
  %481 = load i64, i64* %10, align 8
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %506

483:                                              ; preds = %480
  br label %484

484:                                              ; preds = %501, %483
  %485 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %499

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %490 = load i8*, i8** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = sub nsw i32 %492, 1
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i8, i8* %490, i64 %494
  %496 = load i8, i8* %495, align 1
  %497 = sext i8 %496 to i32
  %498 = icmp eq i32 %497, 32
  br label %499

499:                                              ; preds = %488, %484
  %500 = phi i1 [ false, %484 ], [ %498, %488 ]
  br i1 %500, label %501, label %505

501:                                              ; preds = %499
  %502 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = add nsw i32 %503, -1
  store i32 %504, i32* %502, align 8
  br label %484

505:                                              ; preds = %499
  br label %506

506:                                              ; preds = %505, %480
  %507 = load i64, i64* %10, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %546

509:                                              ; preds = %506
  %510 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %546

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = icmp sgt i32 %515, 1
  br i1 %516, label %517, label %531

517:                                              ; preds = %513
  %518 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %519 = load i8*, i8** %518, align 8
  %520 = getelementptr inbounds i8, i8* %519, i64 0
  %521 = load i8, i8* %520, align 1
  %522 = sext i8 %521 to i32
  %523 = icmp eq i32 %522, 47
  br i1 %523, label %524, label %531

524:                                              ; preds = %517
  %525 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %526 = load i8*, i8** %525, align 8
  %527 = getelementptr inbounds i8, i8* %526, i64 1
  %528 = load i8, i8* %527, align 1
  %529 = sext i8 %528 to i32
  %530 = icmp eq i32 %529, 47
  br i1 %530, label %546, label %531

531:                                              ; preds = %524, %517, %513
  %532 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %533 = call i64 @ngx_http_v2_push_resource(%struct.TYPE_27__* %532, %struct.TYPE_25__* %8, %struct.TYPE_25__* %20)
  store i64 %533, i64* %7, align 8
  %534 = load i64, i64* %7, align 8
  %535 = load i64, i64* @NGX_ERROR, align 8
  %536 = icmp eq i64 %534, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %531
  %538 = load i64, i64* @NGX_ERROR, align 8
  store i64 %538, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %559

539:                                              ; preds = %531
  %540 = load i64, i64* %7, align 8
  %541 = load i64, i64* @NGX_ABORT, align 8
  %542 = icmp eq i64 %540, %541
  br i1 %542, label %543, label %545

543:                                              ; preds = %539
  %544 = load i64, i64* @NGX_OK, align 8
  store i64 %544, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %559

545:                                              ; preds = %539
  br label %546

546:                                              ; preds = %545, %524, %509, %506
  %547 = load i8*, i8** %6, align 8
  %548 = load i8*, i8** %5, align 8
  %549 = icmp ult i8* %547, %548
  br i1 %549, label %550, label %553

550:                                              ; preds = %546
  %551 = load i8*, i8** %6, align 8
  %552 = getelementptr inbounds i8, i8* %551, i64 1
  store i8* %552, i8** %4, align 8
  br label %155

553:                                              ; preds = %546
  br label %554

554:                                              ; preds = %553, %267, %252, %221, %180
  %555 = load i64, i64* %9, align 8
  %556 = add i64 %555, 1
  store i64 %556, i64* %9, align 8
  br label %111

557:                                              ; preds = %111
  %558 = load i64, i64* @NGX_OK, align 8
  store i64 %558, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %559

559:                                              ; preds = %557, %543, %537, %103, %91, %85, %62
  %560 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %560)
  %561 = load i64, i64* %2, align 8
  ret i64 %561
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #2

declare dso_local i32 @ngx_memzero(%struct.TYPE_25__*, i32) #2

declare dso_local %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__*, i32) #2

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_27__*, i32*, %struct.TYPE_25__*) #2

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #2

declare dso_local i64 @ngx_http_v2_push_resource(%struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_19__*) #2

declare dso_local i8* @ngx_strlchr(i8*, i8*, i8 signext) #2

declare dso_local i64 @ngx_strncasecmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
