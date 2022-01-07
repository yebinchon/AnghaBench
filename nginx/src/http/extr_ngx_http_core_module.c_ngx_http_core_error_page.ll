; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_error_page.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_error_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_18__*, %struct.TYPE_23__* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid value \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"value \22%V\22 must be between 300 and 599\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_23__*, i32*, i8*)* @ngx_http_core_error_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_error_page(%struct.TYPE_23__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %8, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @ngx_array_create(i32 %28, i32 4, i32 48)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %37, i8** %4, align 8
  br label %286

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %11, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %14, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 61
  br i1 %60, label %61, label %108

61:                                               ; preds = %39
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* @NGX_LOG_EMERG, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i64 %68
  %70 = call i32 @ngx_conf_log_error(i32 %65, %struct.TYPE_23__* %66, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %69)
  %71 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %71, i8** %4, align 8
  br label %286

72:                                               ; preds = %61
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %106

79:                                               ; preds = %72
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %81 = load i64, i64* %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = call i8* @ngx_atoi(i8* %85, i32 %91)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @NGX_ERROR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %79
  %98 = load i32, i32* @NGX_LOG_EMERG, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %101 = load i64, i64* %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i64 %101
  %103 = call i32 @ngx_conf_log_error(i32 %98, %struct.TYPE_23__* %99, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %102)
  %104 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %104, i8** %4, align 8
  br label %286

105:                                              ; preds = %79
  br label %107

106:                                              ; preds = %72
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %105
  store i64 2, i64* %15, align 8
  br label %109

108:                                              ; preds = %39
  store i32 -1, i32* %10, align 4
  store i64 1, i64* %15, align 8
  br label %109

109:                                              ; preds = %108, %107
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i64 %117
  %119 = bitcast %struct.TYPE_18__* %12 to i8*
  %120 = bitcast %struct.TYPE_18__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  %121 = call i32 @ngx_memzero(%struct.TYPE_22__* %18, i32 24)
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 2
  store %struct.TYPE_23__* %122, %struct.TYPE_23__** %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %125, align 8
  %126 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_22__* %18)
  %127 = load i64, i64* @NGX_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %109
  %130 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %130, i8** %4, align 8
  br label %286

131:                                              ; preds = %109
  %132 = call i32 @ngx_str_null(%struct.TYPE_18__* %13)
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %185

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %185

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 47
  br i1 %146, label %147, label %185

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @ngx_strchr(i8* %149, i8 signext 63)
  %151 = inttoptr i64 %150 to i8*
  store i8* %151, i8** %9, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %184

154:                                              ; preds = %147
  %155 = load i8*, i8** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %155 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = trunc i64 %160 to i32
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = load i8*, i8** %9, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store i32 %180, i32* %181, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i8* %182, i8** %183, align 8
  br label %184

184:                                              ; preds = %154, %147
  br label %185

185:                                              ; preds = %184, %140, %136, %131
  store i64 1, i64* %14, align 8
  br label %186

186:                                              ; preds = %281, %185
  %187 = load i64, i64* %14, align 8
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %15, align 8
  %195 = sub i64 %193, %194
  %196 = icmp ult i64 %187, %195
  br i1 %196, label %197, label %284

197:                                              ; preds = %186
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = call %struct.TYPE_19__* @ngx_array_push(i32* %200)
  store %struct.TYPE_19__* %201, %struct.TYPE_19__** %16, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %203 = icmp eq %struct.TYPE_19__* %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %205, i8** %4, align 8
  br label %286

206:                                              ; preds = %197
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %208 = load i64, i64* %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %213 = load i64, i64* %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i8* @ngx_atoi(i8* %211, i32 %216)
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @NGX_ERROR, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %231, label %226

226:                                              ; preds = %206
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %229, 499
  br i1 %230, label %231, label %239

231:                                              ; preds = %226, %206
  %232 = load i32, i32* @NGX_LOG_EMERG, align 4
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %235 = load i64, i64* %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i64 %235
  %237 = call i32 @ngx_conf_log_error(i32 %232, %struct.TYPE_23__* %233, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %236)
  %238 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %238, i8** %4, align 8
  br label %286

239:                                              ; preds = %226
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %242, 300
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp sgt i32 %247, 599
  br i1 %248, label %249, label %257

249:                                              ; preds = %244, %239
  %250 = load i32, i32* @NGX_LOG_EMERG, align 4
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %253 = load i64, i64* %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i64 %253
  %255 = call i32 @ngx_conf_log_error(i32 %250, %struct.TYPE_23__* %251, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %254)
  %256 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %256, i8** %4, align 8
  br label %286

257:                                              ; preds = %244
  %258 = load i32, i32* %10, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %272

263:                                              ; preds = %257
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  switch i32 %266, label %271 [
    i32 128, label %267
    i32 130, label %267
    i32 129, label %267
  ]

267:                                              ; preds = %263, %263, %263
  %268 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  br label %271

271:                                              ; preds = %267, %263
  br label %272

272:                                              ; preds = %271, %257
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 3
  %275 = bitcast %struct.TYPE_21__* %274 to i8*
  %276 = bitcast %struct.TYPE_21__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %275, i8* align 8 %276, i64 24, i1 false)
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 2
  %279 = bitcast %struct.TYPE_18__* %278 to i8*
  %280 = bitcast %struct.TYPE_18__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %279, i8* align 8 %280, i64 16, i1 false)
  br label %281

281:                                              ; preds = %272
  %282 = load i64, i64* %14, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %14, align 8
  br label %186

284:                                              ; preds = %186
  %285 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %285, i8** %4, align 8
  br label %286

286:                                              ; preds = %284, %249, %231, %204, %129, %97, %64, %36
  %287 = load i8*, i8** %4, align 8
  ret i8* %287
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_23__*, i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i8* @ngx_atoi(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_18__*) #1

declare dso_local i64 @ngx_strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_19__* @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
