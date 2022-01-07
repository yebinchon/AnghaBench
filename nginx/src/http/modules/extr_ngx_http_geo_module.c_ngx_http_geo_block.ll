; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_block.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32*, i8*, i32, %struct.TYPE_32__*, i32, %struct.TYPE_27__* }
%struct.TYPE_32__ = type { i32, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_28__, i32, i32, i64, i32, i32, i32*, i32, i32 }
%struct.TYPE_28__ = type { i32*, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_26__, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_28__ }
%struct.TYPE_25__ = type { i32*, i32* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid variable name \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@NGX_DEFAULT_POOL_SIZE = common dso_local global i32 0, align 4
@ngx_str_rbtree_insert_value = common dso_local global i32 0, align 4
@ngx_http_geo = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_http_variable_null_value = common dso_local global i32 0, align 4
@ngx_http_geo_range_variable = common dso_local global i32 0, align 4
@ngx_http_geo_cidr_variable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_33__*, i32*, i8*)* @ngx_http_geo_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_geo_block(%struct.TYPE_33__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_33__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  %18 = alloca %struct.TYPE_32__, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  store %struct.TYPE_29__* %23, %struct.TYPE_29__** %10, align 8
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i8* @ngx_palloc(i32* %26, i32 48)
  %28 = bitcast i8* %27 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %28, %struct.TYPE_31__** %17, align 8
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %30 = icmp eq %struct.TYPE_31__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %32, i8** %4, align 8
  br label %375

33:                                               ; preds = %3
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i64 1
  %36 = bitcast %struct.TYPE_29__* %11 to i8*
  %37 = bitcast %struct.TYPE_29__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 36
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load i32, i32* @NGX_LOG_EMERG, align 4
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %47 = call i32 @ngx_conf_log_error(i32 %45, %struct.TYPE_33__* %46, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_29__* %11)
  %48 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %48, i8** %4, align 8
  br label %375

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %53, align 8
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %97

62:                                               ; preds = %49
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %64 = call i64 @ngx_http_get_variable_index(%struct.TYPE_33__* %63, %struct.TYPE_29__* %11)
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NGX_ERROR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %73, i8** %4, align 8
  br label %375

74:                                               ; preds = %62
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i64 2
  %77 = bitcast %struct.TYPE_29__* %11 to i8*
  %78 = bitcast %struct.TYPE_29__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 36
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load i32, i32* @NGX_LOG_EMERG, align 4
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %88 = call i32 @ngx_conf_log_error(i32 %86, %struct.TYPE_33__* %87, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_29__* %11)
  %89 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %89, i8** %4, align 8
  br label %375

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %94, align 8
  br label %100

97:                                               ; preds = %49
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  store i64 -1, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %102 = load i32, i32* @NGX_HTTP_VAR_CHANGEABLE, align 4
  %103 = call %struct.TYPE_30__* @ngx_http_add_variable(%struct.TYPE_33__* %101, %struct.TYPE_29__* %11, i32 %102)
  store %struct.TYPE_30__* %103, %struct.TYPE_30__** %16, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %105 = icmp eq %struct.TYPE_30__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %107, i8** %4, align 8
  br label %375

108:                                              ; preds = %100
  %109 = load i32, i32* @NGX_DEFAULT_POOL_SIZE, align 4
  %110 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @ngx_create_pool(i32 %109, i32 %112)
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %14, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %118, i8** %4, align 8
  br label %375

119:                                              ; preds = %108
  %120 = call i32 @ngx_memzero(%struct.TYPE_32__* %18, i32 96)
  %121 = load i32, i32* @NGX_DEFAULT_POOL_SIZE, align 4
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @ngx_create_pool(i32 %121, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 4
  store i32* %126, i32** %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %119
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @ngx_destroy_pool(i32* %132)
  %134 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %134, i8** %4, align 8
  br label %375

135:                                              ; preds = %119
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 15
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 14
  %138 = load i32, i32* @ngx_str_rbtree_insert_value, align 4
  %139 = call i32 @ngx_rbtree_init(i32* %136, i32* %137, i32 %138)
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 13
  store i32* %142, i32** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  store i32 524296, i32* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 1
  store i32 1, i32* %145, align 4
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %147 = bitcast %struct.TYPE_33__* %13 to i8*
  %148 = bitcast %struct.TYPE_33__* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 48, i1 false)
  %149 = load i32*, i32** %14, align 8
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 0
  store i32* %149, i32** %151, align 8
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 3
  store %struct.TYPE_32__* %18, %struct.TYPE_32__** %153, align 8
  %154 = load i32, i32* @ngx_http_geo, align 4
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %161 = call i8* @ngx_conf_parse(%struct.TYPE_33__* %160, i32* null)
  store i8* %161, i8** %8, align 8
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %163 = bitcast %struct.TYPE_33__* %162 to i8*
  %164 = bitcast %struct.TYPE_33__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 48, i1 false)
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** @NGX_CONF_OK, align 8
  %167 = icmp ne i8* %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %135
  br label %368

169:                                              ; preds = %135
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 12
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 11
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 10
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %324

181:                                              ; preds = %169
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %183, align 8
  %185 = icmp ne %struct.TYPE_24__** %184, null
  br i1 %185, label %186, label %302

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %302, label %190

190:                                              ; preds = %186
  store i32 0, i32* %12, align 4
  br label %191

191:                                              ; preds = %280, %190
  %192 = load i32, i32* %12, align 4
  %193 = icmp slt i32 %192, 65536
  br i1 %193, label %194, label %283

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %197, i64 %199
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  %202 = bitcast %struct.TYPE_24__* %201 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %202, %struct.TYPE_23__** %15, align 8
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %204 = icmp eq %struct.TYPE_23__* %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %194
  br label %280

206:                                              ; preds = %194
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %214, i64 %216
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %217, align 8
  br label %280

218:                                              ; preds = %206
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 4
  store i64 %223, i64* %9, align 8
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* %9, align 8
  %228 = add i64 %227, 8
  %229 = trunc i64 %228 to i32
  %230 = call i8* @ngx_palloc(i32* %226, i32 %229)
  %231 = bitcast i8* %230 to %struct.TYPE_24__*
  %232 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %234, i64 %236
  store %struct.TYPE_24__* %231, %struct.TYPE_24__** %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %239, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %240, i64 %242
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %243, align 8
  %245 = icmp eq %struct.TYPE_24__* %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %218
  br label %368

247:                                              ; preds = %218
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %250, i64 %252
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %253, align 8
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i64, i64* %9, align 8
  %259 = call i32 @ngx_memcpy(%struct.TYPE_24__* %254, i32 %257, i64 %258)
  %260 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %261, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %262, i64 %264
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %265, align 8
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 0
  store i32* null, i32** %272, align 8
  %273 = load i64, i64* %9, align 8
  %274 = add i64 %273, 8
  %275 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = add i64 %277, %274
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %275, align 8
  br label %280

280:                                              ; preds = %247, %211, %205
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %12, align 4
  br label %191

283:                                              ; preds = %191
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %301

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 8
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %301, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp sgt i32 %293, 100000
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = call i32 @ngx_http_geo_create_binary_base(%struct.TYPE_32__* %18)
  br label %301

301:                                              ; preds = %299, %295, %291, %287, %283
  br label %302

302:                                              ; preds = %301, %186, %181
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = icmp eq i32* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 0
  store i32* @ngx_http_variable_null_value, i32** %309, align 8
  br label %310

310:                                              ; preds = %307, %302
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %315 = bitcast %struct.TYPE_28__* %313 to i8*
  %316 = bitcast %struct.TYPE_28__* %314 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %315, i8* align 8 %316, i64 16, i1 false)
  %317 = load i32, i32* @ngx_http_geo_range_variable, align 4
  %318 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %319 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 8
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %321 = ptrtoint %struct.TYPE_31__* %320 to i64
  %322 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %323 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  br label %361

324:                                              ; preds = %169
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 6
  %326 = load i32*, i32** %325, align 8
  %327 = icmp eq i32* %326, null
  br i1 %327, label %328, label %340

328:                                              ; preds = %324
  %329 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = call i8* @ngx_radix_tree_create(i32* %331, i32 -1)
  %333 = bitcast i8* %332 to i32*
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 6
  store i32* %333, i32** %334, align 8
  %335 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 6
  %336 = load i32*, i32** %335, align 8
  %337 = icmp eq i32* %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %328
  br label %368

339:                                              ; preds = %328
  br label %340

340:                                              ; preds = %339, %324
  %341 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 6
  %342 = load i32*, i32** %341, align 8
  %343 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %344 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %345, i32 0, i32 1
  store i32* %342, i32** %346, align 8
  %347 = load i32, i32* @ngx_http_geo_cidr_variable, align 4
  %348 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %349 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 8
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %351 = ptrtoint %struct.TYPE_31__* %350 to i64
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %353 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %352, i32 0, i32 0
  store i64 %351, i64* %353, align 8
  %354 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 6
  %355 = load i32*, i32** %354, align 8
  %356 = call i64 @ngx_radix32tree_insert(i32* %355, i32 0, i32 0, i64 ptrtoint (i32* @ngx_http_variable_null_value to i64))
  %357 = load i64, i64* @NGX_ERROR, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %360

359:                                              ; preds = %340
  br label %368

360:                                              ; preds = %340
  br label %361

361:                                              ; preds = %360, %310
  %362 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 4
  %363 = load i32*, i32** %362, align 8
  %364 = call i32 @ngx_destroy_pool(i32* %363)
  %365 = load i32*, i32** %14, align 8
  %366 = call i32 @ngx_destroy_pool(i32* %365)
  %367 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %367, i8** %4, align 8
  br label %375

368:                                              ; preds = %359, %338, %246, %168
  %369 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 4
  %370 = load i32*, i32** %369, align 8
  %371 = call i32 @ngx_destroy_pool(i32* %370)
  %372 = load i32*, i32** %14, align 8
  %373 = call i32 @ngx_destroy_pool(i32* %372)
  %374 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %374, i8** %4, align 8
  br label %375

375:                                              ; preds = %368, %361, %131, %117, %106, %85, %72, %44, %31
  %376 = load i8*, i8** %4, align 8
  ret i8* %376
}

declare dso_local i8* @ngx_palloc(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_33__*, i32, i8*, %struct.TYPE_29__*) #1

declare dso_local i64 @ngx_http_get_variable_index(%struct.TYPE_33__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_add_variable(%struct.TYPE_33__*, %struct.TYPE_29__*, i32) #1

declare dso_local i8* @ngx_create_pool(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i32 @ngx_rbtree_init(i32*, i32*, i32) #1

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_33__*, i32*) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_24__*, i32, i64) #1

declare dso_local i32 @ngx_http_geo_create_binary_base(%struct.TYPE_32__*) #1

declare dso_local i8* @ngx_radix_tree_create(i32*, i32) #1

declare dso_local i64 @ngx_radix32tree_insert(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
