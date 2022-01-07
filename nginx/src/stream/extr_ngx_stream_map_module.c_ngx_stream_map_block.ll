; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_map_module.c_ngx_stream_map_block.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_map_module.c_ngx_stream_map_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32*, i8*, i32, %struct.TYPE_28__*, i32, %struct.TYPE_37__* }
%struct.TYPE_28__ = type { %struct.TYPE_35__, %struct.TYPE_34__, i64, i32*, i64, %struct.TYPE_32__*, i32* }
%struct.TYPE_35__ = type { i64, i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_36__, %struct.TYPE_33__, %struct.TYPE_40__, i32*, i32* }
%struct.TYPE_36__ = type { i64, i32 }
%struct.TYPE_33__ = type { i64, i32 }
%struct.TYPE_40__ = type { i64, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i8*, i32 }
%struct.TYPE_43__ = type { i64, i64 }
%struct.TYPE_31__ = type { i32, i64, i8*, i32*, i32*, i32*, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_39__, i64, i32*, i32 }
%struct.TYPE_39__ = type { i64, i32, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32*, i32*, i32 }
%struct.TYPE_41__ = type { i64, i32, i32 }
%struct.TYPE_29__ = type { i32*, %struct.TYPE_30__*, %struct.TYPE_32__* }

@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@ngx_cacheline_size = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid variable name \22%V\22\00", align 1
@NGX_STREAM_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@ngx_stream_map_variable = common dso_local global i32 0, align 4
@NGX_DEFAULT_POOL_SIZE = common dso_local global i32 0, align 4
@NGX_HASH_LARGE = common dso_local global i32 0, align 4
@ngx_stream_map = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_STREAM_VAR_NOCACHEABLE = common dso_local global i32 0, align 4
@ngx_stream_variable_null_value = common dso_local global i32 0, align 4
@ngx_hash_key_lc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"map_hash\00", align 1
@ngx_stream_map_cmp_dns_wildcards = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_32__*, i32*, i8*)* @ngx_stream_map_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_map_block(%struct.TYPE_32__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_43__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_30__, align 8
  %12 = alloca %struct.TYPE_32__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_31__, align 8
  %15 = alloca %struct.TYPE_42__*, align 8
  %16 = alloca %struct.TYPE_41__*, align 8
  %17 = alloca %struct.TYPE_28__, align 8
  %18 = alloca %struct.TYPE_29__, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_43__*
  store %struct.TYPE_43__* %20, %struct.TYPE_43__** %8, align 8
  %21 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %27, i32 0, i32 0
  store i64 2048, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @ngx_cacheline_size, align 8
  %37 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %47

39:                                               ; preds = %29
  %40 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ngx_cacheline_size, align 8
  %44 = call i64 @ngx_align(i64 %42, i64 %43)
  %45 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %39, %35
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i8* @ngx_pcalloc(i32* %50, i32 64)
  %52 = bitcast i8* %51 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %52, %struct.TYPE_42__** %15, align 8
  %53 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %54 = icmp eq %struct.TYPE_42__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %56, i8** %4, align 8
  br label %349

57:                                               ; preds = %47
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %61, align 8
  store %struct.TYPE_30__* %62, %struct.TYPE_30__** %10, align 8
  %63 = call i32 @ngx_memzero(%struct.TYPE_29__* %18, i32 24)
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 2
  store %struct.TYPE_32__* %64, %struct.TYPE_32__** %65, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  store %struct.TYPE_30__* %67, %struct.TYPE_30__** %68, align 8
  %69 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  store i32* %70, i32** %71, align 8
  %72 = call i64 @ngx_stream_compile_complex_value(%struct.TYPE_29__* %18)
  %73 = load i64, i64* @NGX_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %76, i8** %4, align 8
  br label %349

77:                                               ; preds = %57
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i64 2
  %80 = bitcast %struct.TYPE_30__* %11 to i8*
  %81 = bitcast %struct.TYPE_30__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 36
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load i32, i32* @NGX_LOG_EMERG, align 4
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %91 = call i32 @ngx_conf_log_error(i32 %89, %struct.TYPE_32__* %90, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %11)
  %92 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %92, i8** %4, align 8
  br label %349

93:                                               ; preds = %77
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %97, align 8
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %101 = load i32, i32* @NGX_STREAM_VAR_CHANGEABLE, align 4
  %102 = call %struct.TYPE_41__* @ngx_stream_add_variable(%struct.TYPE_32__* %100, %struct.TYPE_30__* %11, i32 %101)
  store %struct.TYPE_41__* %102, %struct.TYPE_41__** %16, align 8
  %103 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %104 = icmp eq %struct.TYPE_41__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %106, i8** %4, align 8
  br label %349

107:                                              ; preds = %93
  %108 = load i32, i32* @ngx_stream_map_variable, align 4
  %109 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %112 = ptrtoint %struct.TYPE_42__* %111 to i64
  %113 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* @NGX_DEFAULT_POOL_SIZE, align 4
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32* @ngx_create_pool(i32 %115, i32 %118)
  store i32* %119, i32** %13, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %107
  %123 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %123, i8** %4, align 8
  br label %349

124:                                              ; preds = %107
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 5
  store i32* %127, i32** %129, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 4
  store i32* %130, i32** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %134 = load i32, i32* @NGX_HASH_LARGE, align 4
  %135 = call i64 @ngx_hash_keys_array_init(%struct.TYPE_34__* %133, i32 %134)
  %136 = load i64, i64* @NGX_OK, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %124
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @ngx_destroy_pool(i32* %139)
  %141 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %141, i8** %4, align 8
  br label %349

142:                                              ; preds = %124
  %143 = load i32*, i32** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = mul i64 4, %147
  %149 = trunc i64 %148 to i32
  %150 = call i8* @ngx_pcalloc(i32* %143, i32 %149)
  %151 = bitcast i8* %150 to i32*
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 6
  store i32* %151, i32** %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %142
  %157 = load i32*, i32** %13, align 8
  %158 = call i32 @ngx_destroy_pool(i32* %157)
  %159 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %159, i8** %4, align 8
  br label %349

160:                                              ; preds = %142
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 3
  store i32* null, i32** %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 5
  store %struct.TYPE_32__* %12, %struct.TYPE_32__** %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 4
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %166 = bitcast %struct.TYPE_32__* %12 to i8*
  %167 = bitcast %struct.TYPE_32__* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 48, i1 false)
  %168 = load i32*, i32** %13, align 8
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 0
  store i32* %168, i32** %170, align 8
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 3
  store %struct.TYPE_28__* %17, %struct.TYPE_28__** %172, align 8
  %173 = load i32, i32* @ngx_stream_map, align 4
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %180 = call i8* @ngx_conf_parse(%struct.TYPE_32__* %179, i32* null)
  store i8* %180, i8** %9, align 8
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %182 = bitcast %struct.TYPE_32__* %181 to i8*
  %183 = bitcast %struct.TYPE_32__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 %183, i64 48, i1 false)
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** @NGX_CONF_OK, align 8
  %186 = icmp ne i8* %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %160
  %188 = load i32*, i32** %13, align 8
  %189 = call i32 @ngx_destroy_pool(i32* %188)
  %190 = load i8*, i8** %9, align 8
  store i8* %190, i8** %4, align 8
  br label %349

191:                                              ; preds = %160
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load i32, i32* @NGX_STREAM_VAR_NOCACHEABLE, align 4
  %197 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %195, %191
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  br label %209

208:                                              ; preds = %201
  br label %209

209:                                              ; preds = %208, %205
  %210 = phi i32* [ %207, %205 ], [ @ngx_stream_variable_null_value, %208 ]
  %211 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %211, i32 0, i32 2
  store i32* %210, i32** %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  %217 = load i32, i32* @ngx_hash_key_lc, align 4
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 6
  store i32 %217, i32* %218, align 8
  %219 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 0
  store i32 %222, i32* %223, align 8
  %224 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 1
  store i64 %226, i64* %227, align 8
  %228 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %228, align 8
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 5
  store i32* %231, i32** %232, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %261

238:                                              ; preds = %209
  %239 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 3
  store i32* %242, i32** %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 4
  store i32* null, i32** %244, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = call i64 @ngx_hash_init(%struct.TYPE_31__* %14, i32 %248, i64 %252)
  %254 = load i64, i64* @NGX_OK, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %238
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @ngx_destroy_pool(i32* %257)
  %259 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %259, i8** %4, align 8
  br label %349

260:                                              ; preds = %238
  br label %261

261:                                              ; preds = %260, %209
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %303

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* @ngx_stream_map_cmp_dns_wildcards, align 4
  %277 = call i32 @ngx_qsort(i32 %271, i64 %275, i32 4, i32 %276)
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 3
  store i32* null, i32** %278, align 8
  %279 = load i32*, i32** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 4
  store i32* %279, i32** %280, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i64 @ngx_hash_wildcard_init(%struct.TYPE_31__* %14, i32 %284, i64 %288)
  %290 = load i64, i64* @NGX_OK, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %267
  %293 = load i32*, i32** %13, align 8
  %294 = call i32 @ngx_destroy_pool(i32* %293)
  %295 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %295, i8** %4, align 8
  br label %349

296:                                              ; preds = %267
  %297 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %301, i32 0, i32 1
  store i32* %298, i32** %302, align 8
  br label %303

303:                                              ; preds = %296, %261
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %345

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i32, i32* @ngx_stream_map_cmp_dns_wildcards, align 4
  %319 = call i32 @ngx_qsort(i32 %313, i64 %317, i32 4, i32 %318)
  %320 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 3
  store i32* null, i32** %320, align 8
  %321 = load i32*, i32** %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 4
  store i32* %321, i32** %322, align 8
  %323 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = call i64 @ngx_hash_wildcard_init(%struct.TYPE_31__* %14, i32 %326, i64 %330)
  %332 = load i64, i64* @NGX_OK, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %309
  %335 = load i32*, i32** %13, align 8
  %336 = call i32 @ngx_destroy_pool(i32* %335)
  %337 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %337, i8** %4, align 8
  br label %349

338:                                              ; preds = %309
  %339 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 3
  %340 = load i32*, i32** %339, align 8
  %341 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %342 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %343, i32 0, i32 0
  store i32* %340, i32** %344, align 8
  br label %345

345:                                              ; preds = %338, %303
  %346 = load i32*, i32** %13, align 8
  %347 = call i32 @ngx_destroy_pool(i32* %346)
  %348 = load i8*, i8** %9, align 8
  store i8* %348, i8** %4, align 8
  br label %349

349:                                              ; preds = %345, %334, %292, %256, %187, %156, %138, %122, %105, %88, %75, %55
  %350 = load i8*, i8** %4, align 8
  ret i8* %350
}

declare dso_local i64 @ngx_align(i64, i64) #1

declare dso_local i8* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @ngx_stream_compile_complex_value(%struct.TYPE_29__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_32__*, i32, i8*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_41__* @ngx_stream_add_variable(%struct.TYPE_32__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local i64 @ngx_hash_keys_array_init(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_32__*, i32*) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_31__*, i32, i64) #1

declare dso_local i32 @ngx_qsort(i32, i64, i32, i32) #1

declare dso_local i64 @ngx_hash_wildcard_init(%struct.TYPE_31__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
