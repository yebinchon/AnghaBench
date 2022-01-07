; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_module.c_ngx_add_module.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_module.c_ngx_add_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i8**, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64, i8*, i8*, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* (%struct.TYPE_14__*)* }

@ngx_max_module = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"too many modules loaded\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@nginx_version = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"module \22%V\22 version %ui instead of %ui\00", align 1
@NGX_MODULE_SIGNATURE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"module \22%V\22 is not binary compatible\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"module \22%s\22 is already loaded\00", align 1
@NGX_MODULE_UNSET_INDEX = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"module: %s before %s:%i\00", align 1
@NGX_CORE_MODULE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_add_module(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_11__* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ngx_max_module, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* @NGX_LOG_EMERG, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_conf_log_error(i32 %23, %struct.TYPE_13__* %24, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @NGX_ERROR, align 4
  store i32 %26, i32* %5, align 4
  br label %291

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @nginx_version, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i32, i32* @NGX_LOG_EMERG, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @nginx_version, align 8
  %41 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_conf_log_error(i32 %34, %struct.TYPE_13__* %35, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %36, i64 %39, i64 %40)
  %42 = load i32, i32* @NGX_ERROR, align 4
  store i32 %42, i32* %5, align 4
  br label %291

43:                                               ; preds = %27
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @NGX_MODULE_SIGNATURE, align 8
  %48 = call i64 @ngx_strcmp(i8* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @NGX_LOG_EMERG, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_conf_log_error(i32 %51, %struct.TYPE_13__* %52, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32* %53)
  %55 = load i32, i32* @NGX_ERROR, align 4
  store i32 %55, i32* %5, align 4
  br label %291

56:                                               ; preds = %43
  store i64 0, i64* %12, align 8
  br label %57

57:                                               ; preds = %92, %56
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %62, i64 %63
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %67, label %95

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %72, i64 %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @ngx_strcmp(i8* %77, i8* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %67
  %84 = load i32, i32* @NGX_LOG_EMERG, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_conf_log_error(i32 %84, %struct.TYPE_13__* %85, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @NGX_ERROR, align 4
  store i32 %90, i32* %5, align 4
  br label %291

91:                                               ; preds = %67
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %57

95:                                               ; preds = %57
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NGX_MODULE_UNSET_INDEX, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = call i64 @ngx_module_index(%struct.TYPE_14__* %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ngx_max_module, align 8
  %112 = icmp uge i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %101
  %114 = load i32, i32* @NGX_LOG_EMERG, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %116 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_conf_log_error(i32 %114, %struct.TYPE_13__* %115, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @NGX_ERROR, align 4
  store i32 %117, i32* %5, align 4
  br label %291

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %95
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %13, align 8
  %125 = load i8**, i8*** %9, align 8
  %126 = icmp ne i8** %125, null
  br i1 %126, label %127, label %204

127:                                              ; preds = %119
  store i64 0, i64* %11, align 8
  br label %128

128:                                              ; preds = %148, %127
  %129 = load i8**, i8*** %9, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i8*, i8** %129, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %151

134:                                              ; preds = %128
  %135 = load i8**, i8*** %9, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @ngx_strcmp(i8* %138, i8* %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load i64, i64* %11, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %11, align 8
  br label %151

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %11, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %11, align 8
  br label %128

151:                                              ; preds = %144, %128
  br label %152

152:                                              ; preds = %200, %151
  %153 = load i8**, i8*** %9, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %203

158:                                              ; preds = %152
  store i64 0, i64* %12, align 8
  br label %159

159:                                              ; preds = %196, %158
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %13, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %199

163:                                              ; preds = %159
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %167, align 8
  %169 = load i64, i64* %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %168, i64 %169
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = load i8**, i8*** %9, align 8
  %175 = load i64, i64* %11, align 8
  %176 = getelementptr inbounds i8*, i8** %174, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @ngx_strcmp(i8* %173, i8* %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %163
  %181 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load i8**, i8*** %9, align 8
  %189 = load i64, i64* %11, align 8
  %190 = getelementptr inbounds i8*, i8** %188, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @ngx_log_debug3(i32 %181, i32 %184, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %187, i8* %191, i64 %192)
  %194 = load i64, i64* %12, align 8
  store i64 %194, i64* %13, align 8
  br label %199

195:                                              ; preds = %163
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %12, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %12, align 8
  br label %159

199:                                              ; preds = %180, %159
  br label %200

200:                                              ; preds = %199
  %201 = load i64, i64* %11, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %11, align 8
  br label %152

203:                                              ; preds = %152
  br label %204

204:                                              ; preds = %203, %119
  %205 = load i64, i64* %13, align 8
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %205, %210
  br i1 %211, label %212, label %237

212:                                              ; preds = %204
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %216, align 8
  %218 = load i64, i64* %13, align 8
  %219 = add i64 %218, 1
  %220 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %217, i64 %219
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %224, align 8
  %226 = load i64, i64* %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %225, i64 %226
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %13, align 8
  %234 = sub i64 %232, %233
  %235 = mul i64 %234, 8
  %236 = call i32 @ngx_memmove(%struct.TYPE_11__** %220, %struct.TYPE_11__** %227, i64 %235)
  br label %237

237:                                              ; preds = %212, %204
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %242, align 8
  %244 = load i64, i64* %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %243, i64 %244
  store %struct.TYPE_11__* %238, %struct.TYPE_11__** %245, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %249, align 8
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @NGX_CORE_MODULE, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %289

257:                                              ; preds = %237
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 5
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  store %struct.TYPE_12__* %260, %struct.TYPE_12__** %14, align 8
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load i8* (%struct.TYPE_14__*)*, i8* (%struct.TYPE_14__*)** %262, align 8
  %264 = icmp ne i8* (%struct.TYPE_14__*)* %263, null
  br i1 %264, label %265, label %288

265:                                              ; preds = %257
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = load i8* (%struct.TYPE_14__*)*, i8* (%struct.TYPE_14__*)** %267, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %270, align 8
  %272 = call i8* %268(%struct.TYPE_14__* %271)
  store i8* %272, i8** %10, align 8
  %273 = load i8*, i8** %10, align 8
  %274 = icmp eq i8* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %265
  %276 = load i32, i32* @NGX_ERROR, align 4
  store i32 %276, i32* %5, align 4
  br label %291

277:                                              ; preds = %265
  %278 = load i8*, i8** %10, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  %283 = load i8**, i8*** %282, align 8
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i8*, i8** %283, i64 %286
  store i8* %278, i8** %287, align 8
  br label %288

288:                                              ; preds = %277, %257
  br label %289

289:                                              ; preds = %288, %237
  %290 = load i32, i32* @NGX_OK, align 4
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %289, %275, %113, %83, %50, %33, %22
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i64 @ngx_module_index(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i8*, i8*, i64) #1

declare dso_local i32 @ngx_memmove(%struct.TYPE_11__**, %struct.TYPE_11__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
