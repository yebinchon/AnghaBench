; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_init_headers.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_init_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_36__ = type { %struct.TYPE_28__, i32*, i32*, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_24__ = type { i8*, i32, %struct.TYPE_30__ }
%struct.TYPE_25__ = type { i32, i32, i8*, i32*, i32, i32 (i32, i32)*, %struct.TYPE_28__* }
%struct.TYPE_34__ = type { i32**, i32**, i32*, %struct.TYPE_31__*, %struct.TYPE_26__* }
%struct.TYPE_33__ = type { i32, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@ngx_http_script_copy_len_code = common dso_local global i64 0, align 8
@ngx_http_script_copy_code = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"grpc_headers_hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*, %struct.TYPE_35__*, %struct.TYPE_36__*, %struct.TYPE_32__*)* @ngx_http_grpc_init_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_grpc_init_headers(%struct.TYPE_26__* %0, %struct.TYPE_35__* %1, %struct.TYPE_36__* %2, %struct.TYPE_32__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_27__, align 8
  %15 = alloca %struct.TYPE_27__, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca %struct.TYPE_32__*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_25__, align 8
  %21 = alloca %struct.TYPE_34__, align 8
  %22 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %8, align 8
  store %struct.TYPE_32__* %3, %struct.TYPE_32__** %9, align 8
  %23 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, i64* @NGX_OK, align 8
  store i64 %29, i64* %5, align 8
  br label %383

30:                                               ; preds = %4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ngx_array_init(%struct.TYPE_27__* %14, i32 %33, i32 4, i32 24)
  %35 = load i64, i64* @NGX_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %5, align 8
  br label %383

39:                                               ; preds = %30
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ngx_array_init(%struct.TYPE_27__* %15, i32 %42, i32 4, i32 16)
  %44 = load i64, i64* @NGX_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @NGX_ERROR, align 8
  store i64 %47, i64* %5, align 8
  br label %383

48:                                               ; preds = %39
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @ngx_array_create(i32 %51, i32 64, i32 1)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i64, i64* @NGX_ERROR, align 8
  store i64 %61, i64* %5, align 8
  br label %383

62:                                               ; preds = %48
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @ngx_array_create(i32 %65, i32 512, i32 1)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i64, i64* @NGX_ERROR, align 8
  store i64 %75, i64* %5, align 8
  br label %383

76:                                               ; preds = %62
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %78, align 8
  %80 = icmp ne %struct.TYPE_29__* %79, null
  br i1 %80, label %81, label %133

81:                                               ; preds = %76
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %85, align 8
  store %struct.TYPE_32__* %86, %struct.TYPE_32__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %87

87:                                               ; preds = %129, %81
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %88, %93
  br i1 %94, label %95, label %132

95:                                               ; preds = %87
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ngx_strncasecmp(i32 %109, i32* bitcast ([5 x i8]* @.str to i32*), i32 4)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %103, %95
  %116 = call i8* @ngx_array_push(%struct.TYPE_27__* %15)
  %117 = bitcast i8* %116 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %117, %struct.TYPE_32__** %17, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %119 = icmp eq %struct.TYPE_32__* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* @NGX_ERROR, align 8
  store i64 %121, i64* %5, align 8
  br label %383

122:                                              ; preds = %115
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i64 %125
  %127 = bitcast %struct.TYPE_32__* %123 to i8*
  %128 = bitcast %struct.TYPE_32__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 16, i1 false)
  br label %129

129:                                              ; preds = %122
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %13, align 8
  br label %87

132:                                              ; preds = %87
  br label %133

133:                                              ; preds = %132, %76
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_32__* %134, %struct.TYPE_32__** %18, align 8
  br label %135

135:                                              ; preds = %179, %133
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %182

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %142, align 8
  store %struct.TYPE_32__* %143, %struct.TYPE_32__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %144

144:                                              ; preds = %164, %141
  %145 = load i64, i64* %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ult i64 %145, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %155 = load i64, i64* %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @ngx_strcasecmp(i32 %153, i32 %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  br label %179

163:                                              ; preds = %149
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %13, align 8
  br label %144

167:                                              ; preds = %144
  %168 = call i8* @ngx_array_push(%struct.TYPE_27__* %15)
  %169 = bitcast i8* %168 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %169, %struct.TYPE_32__** %17, align 8
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %171 = icmp eq %struct.TYPE_32__* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i64, i64* @NGX_ERROR, align 8
  store i64 %173, i64* %5, align 8
  br label %383

174:                                              ; preds = %167
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %177 = bitcast %struct.TYPE_32__* %175 to i8*
  %178 = bitcast %struct.TYPE_32__* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 16, i1 false)
  br label %179

179:                                              ; preds = %174, %162
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 1
  store %struct.TYPE_32__* %181, %struct.TYPE_32__** %18, align 8
  br label %135

182:                                              ; preds = %135
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %183, align 8
  store %struct.TYPE_32__* %184, %struct.TYPE_32__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %185

185:                                              ; preds = %351, %182
  %186 = load i64, i64* %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ult i64 %186, %188
  br i1 %189, label %190, label %354

190:                                              ; preds = %185
  %191 = call i8* @ngx_array_push(%struct.TYPE_27__* %14)
  %192 = bitcast i8* %191 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %192, %struct.TYPE_24__** %19, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %194 = icmp eq %struct.TYPE_24__* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i64, i64* @NGX_ERROR, align 8
  store i64 %196, i64* %5, align 8
  br label %383

197:                                              ; preds = %190
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %201 = load i64, i64* %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 0, i32 1
  %204 = bitcast %struct.TYPE_30__* %199 to i8*
  %205 = bitcast %struct.TYPE_30__* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %204, i8* align 8 %205, i64 8, i1 false)
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %207 = load i64, i64* %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %213 = load i64, i64* %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ngx_hash_key_lc(i32 %211, i32 %217)
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 8
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 0
  store i8* inttoptr (i64 1 to i8*), i8** %222, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %224 = load i64, i64* %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %197
  br label %351

231:                                              ; preds = %197
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = call i8* @ngx_array_push_n(i32* %234, i32 16)
  %236 = bitcast i8* %235 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %236, %struct.TYPE_33__** %22, align 8
  %237 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %238 = icmp eq %struct.TYPE_33__* %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %231
  %240 = load i64, i64* @NGX_ERROR, align 8
  store i64 %240, i64* %5, align 8
  br label %383

241:                                              ; preds = %231
  %242 = load i64, i64* @ngx_http_script_copy_len_code, align 8
  %243 = inttoptr i64 %242 to i8*
  %244 = ptrtoint i8* %243 to i64
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 1
  store i64 %244, i64* %246, align 8
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %248 = load i64, i64* %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %256 = load i64, i64* %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = add i64 16, %261
  %263 = add i64 %262, 8
  %264 = sub i64 %263, 1
  %265 = and i64 %264, -8
  store i64 %265, i64* %11, align 8
  %266 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* %11, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i8* @ngx_array_push_n(i32* %268, i32 %270)
  %272 = bitcast i8* %271 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %272, %struct.TYPE_33__** %22, align 8
  %273 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %274 = icmp eq %struct.TYPE_33__* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %241
  %276 = load i64, i64* @NGX_ERROR, align 8
  store i64 %276, i64* %5, align 8
  br label %383

277:                                              ; preds = %241
  %278 = load i64, i64* @ngx_http_script_copy_code, align 8
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 1
  store i64 %278, i64* %280, align 8
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %282 = load i64, i64* %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  %289 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %290 = bitcast %struct.TYPE_33__* %289 to i32*
  %291 = getelementptr inbounds i32, i32* %290, i64 16
  store i32* %291, i32** %10, align 8
  %292 = load i32*, i32** %10, align 8
  %293 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %294 = load i64, i64* %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %300 = load i64, i64* %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @ngx_memcpy(i32* %292, i32 %298, i32 %304)
  %306 = call i32 @ngx_memzero(%struct.TYPE_34__* %21, i32 40)
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 4
  store %struct.TYPE_26__* %307, %struct.TYPE_26__** %308, align 8
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %310 = load i64, i64* %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 3
  store %struct.TYPE_31__* %312, %struct.TYPE_31__** %313, align 8
  %314 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 2
  store i32* %315, i32** %316, align 8
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 1
  store i32** %318, i32*** %319, align 8
  %320 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  store i32** %321, i32*** %322, align 8
  %323 = call i64 @ngx_http_script_compile(%struct.TYPE_34__* %21)
  %324 = load i64, i64* @NGX_OK, align 8
  %325 = icmp ne i64 %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %277
  %327 = load i64, i64* @NGX_ERROR, align 8
  store i64 %327, i64* %5, align 8
  br label %383

328:                                              ; preds = %277
  %329 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = call i8* @ngx_array_push_n(i32* %331, i32 8)
  %333 = bitcast i8* %332 to i64*
  store i64* %333, i64** %12, align 8
  %334 = load i64*, i64** %12, align 8
  %335 = icmp eq i64* %334, null
  br i1 %335, label %336, label %338

336:                                              ; preds = %328
  %337 = load i64, i64* @NGX_ERROR, align 8
  store i64 %337, i64* %5, align 8
  br label %383

338:                                              ; preds = %328
  %339 = load i64*, i64** %12, align 8
  store i64 0, i64* %339, align 8
  %340 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %340, i32 0, i32 2
  %342 = load i32*, i32** %341, align 8
  %343 = call i8* @ngx_array_push_n(i32* %342, i32 8)
  %344 = bitcast i8* %343 to i64*
  store i64* %344, i64** %12, align 8
  %345 = load i64*, i64** %12, align 8
  %346 = icmp eq i64* %345, null
  br i1 %346, label %347, label %349

347:                                              ; preds = %338
  %348 = load i64, i64* @NGX_ERROR, align 8
  store i64 %348, i64* %5, align 8
  br label %383

349:                                              ; preds = %338
  %350 = load i64*, i64** %12, align 8
  store i64 0, i64* %350, align 8
  br label %351

351:                                              ; preds = %349, %230
  %352 = load i64, i64* %13, align 8
  %353 = add i64 %352, 1
  store i64 %353, i64* %13, align 8
  br label %185

354:                                              ; preds = %185
  %355 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = call i8* @ngx_array_push_n(i32* %357, i32 8)
  %359 = bitcast i8* %358 to i64*
  store i64* %359, i64** %12, align 8
  %360 = load i64*, i64** %12, align 8
  %361 = icmp eq i64* %360, null
  br i1 %361, label %362, label %364

362:                                              ; preds = %354
  %363 = load i64, i64* @NGX_ERROR, align 8
  store i64 %363, i64* %5, align 8
  br label %383

364:                                              ; preds = %354
  %365 = load i64*, i64** %12, align 8
  store i64 0, i64* %365, align 8
  %366 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 6
  store %struct.TYPE_28__* %367, %struct.TYPE_28__** %368, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 5
  store i32 (i32, i32)* @ngx_hash_key_lc, i32 (i32, i32)** %369, align 8
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  store i32 512, i32* %370, align 8
  %371 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 1
  store i32 64, i32* %371, align 4
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %372, align 8
  %373 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 4
  store i32 %375, i32* %376, align 8
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 3
  store i32* null, i32** %377, align 8
  %378 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 1
  %379 = load %struct.TYPE_32__*, %struct.TYPE_32__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = call i64 @ngx_hash_init(%struct.TYPE_25__* %20, %struct.TYPE_32__* %379, i64 %381)
  store i64 %382, i64* %5, align 8
  br label %383

383:                                              ; preds = %364, %362, %347, %336, %326, %275, %239, %195, %172, %120, %74, %60, %46, %37, %28
  %384 = load i64, i64* %5, align 8
  ret i64 %384
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i8* @ngx_array_create(i32, i32, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local i8* @ngx_array_push(%struct.TYPE_27__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strcasecmp(i32, i32) #1

declare dso_local i32 @ngx_hash_key_lc(i32, i32) #1

declare dso_local i8* @ngx_array_push_n(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_34__*) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_25__*, %struct.TYPE_32__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
