; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_scgi_module.c_ngx_http_scgi_init_params.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_scgi_module.c_ngx_http_scgi_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, %struct.TYPE_34__, %struct.TYPE_36__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_36__ = type { i32, i64 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_32__, i32*, i32*, i32 }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_37__ = type { %struct.TYPE_34__, %struct.TYPE_36__ }
%struct.TYPE_31__ = type { i64, %struct.TYPE_38__* }
%struct.TYPE_28__ = type { i8*, %struct.TYPE_35__, i32 }
%struct.TYPE_35__ = type { i32, i64 }
%struct.TYPE_29__ = type { i32, i32, i8*, i32*, i32, i32 (i64, i32)*, %struct.TYPE_32__* }
%struct.TYPE_40__ = type { i32**, i32**, i32*, %struct.TYPE_34__*, %struct.TYPE_30__* }
%struct.TYPE_39__ = type { i32, i8* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"HTTP_\00", align 1
@ngx_http_script_copy_len_code = common dso_local global i64 0, align 8
@ngx_http_script_copy_code = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"scgi_params_hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_30__*, %struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_37__*)* @ngx_http_scgi_init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_scgi_init_params(%struct.TYPE_30__* %0, %struct.TYPE_27__* %1, %struct.TYPE_26__* %2, %struct.TYPE_37__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_31__, align 8
  %16 = alloca %struct.TYPE_31__, align 8
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_29__, align 8
  %20 = alloca %struct.TYPE_38__*, align 8
  %21 = alloca %struct.TYPE_38__*, align 8
  %22 = alloca %struct.TYPE_40__, align 8
  %23 = alloca %struct.TYPE_39__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %9, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @NGX_OK, align 8
  store i64 %30, i64* %5, align 8
  br label %450

31:                                               ; preds = %4
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %33, align 8
  %35 = icmp eq %struct.TYPE_33__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %38 = icmp eq %struct.TYPE_37__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 0
  store i8* inttoptr (i64 1 to i8*), i8** %42, align 8
  %43 = load i64, i64* @NGX_OK, align 8
  store i64 %43, i64* %5, align 8
  br label %450

44:                                               ; preds = %36, %31
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @ngx_array_create(i32 %47, i32 64, i32 1)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i64, i64* @NGX_ERROR, align 8
  store i64 %57, i64* %5, align 8
  br label %450

58:                                               ; preds = %44
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ngx_array_create(i32 %61, i32 512, i32 1)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i64, i64* @NGX_ERROR, align 8
  store i64 %71, i64* %5, align 8
  br label %450

72:                                               ; preds = %58
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ngx_array_init(%struct.TYPE_31__* %15, i32 %75, i32 4, i32 32)
  %77 = load i64, i64* @NGX_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i64, i64* @NGX_ERROR, align 8
  store i64 %80, i64* %5, align 8
  br label %450

81:                                               ; preds = %72
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %83, align 8
  %85 = icmp ne %struct.TYPE_33__* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_38__*, %struct.TYPE_38__** %90, align 8
  store %struct.TYPE_38__* %91, %struct.TYPE_38__** %20, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %14, align 8
  br label %98

97:                                               ; preds = %81
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %20, align 8
  store i64 0, i64* %14, align 8
  br label %98

98:                                               ; preds = %97, %86
  %99 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %100 = icmp ne %struct.TYPE_37__* %99, null
  br i1 %100, label %101, label %197

101:                                              ; preds = %98
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ngx_array_init(%struct.TYPE_31__* %16, i32 %104, i32 4, i32 32)
  %106 = load i64, i64* @NGX_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i64, i64* @NGX_ERROR, align 8
  store i64 %109, i64* %5, align 8
  br label %450

110:                                              ; preds = %101
  store i64 0, i64* %13, align 8
  br label %111

111:                                              ; preds = %129, %110
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = call i8* @ngx_array_push(%struct.TYPE_31__* %16)
  %117 = bitcast i8* %116 to %struct.TYPE_38__*
  store %struct.TYPE_38__* %117, %struct.TYPE_38__** %21, align 8
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %21, align 8
  %119 = icmp eq %struct.TYPE_38__* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* @NGX_ERROR, align 8
  store i64 %121, i64* %5, align 8
  br label %450

122:                                              ; preds = %115
  %123 = load %struct.TYPE_38__*, %struct.TYPE_38__** %21, align 8
  %124 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %124, i64 %125
  %127 = bitcast %struct.TYPE_38__* %123 to i8*
  %128 = bitcast %struct.TYPE_38__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 32, i1 false)
  br label %129

129:                                              ; preds = %122
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %13, align 8
  br label %111

132:                                              ; preds = %111
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  store %struct.TYPE_37__* %133, %struct.TYPE_37__** %17, align 8
  br label %134

134:                                              ; preds = %189, %132
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %192

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %141, align 8
  store %struct.TYPE_38__* %142, %struct.TYPE_38__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %145

145:                                              ; preds = %164, %140
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %14, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %145
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %155 = load i64, i64* %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @ngx_strcasecmp(i64 %153, i64 %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  br label %189

163:                                              ; preds = %149
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %13, align 8
  br label %145

167:                                              ; preds = %145
  %168 = call i8* @ngx_array_push(%struct.TYPE_31__* %16)
  %169 = bitcast i8* %168 to %struct.TYPE_38__*
  store %struct.TYPE_38__* %169, %struct.TYPE_38__** %21, align 8
  %170 = load %struct.TYPE_38__*, %struct.TYPE_38__** %21, align 8
  %171 = icmp eq %struct.TYPE_38__* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i64, i64* @NGX_ERROR, align 8
  store i64 %173, i64* %5, align 8
  br label %450

174:                                              ; preds = %167
  %175 = load %struct.TYPE_38__*, %struct.TYPE_38__** %21, align 8
  %176 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %177, i32 0, i32 1
  %179 = bitcast %struct.TYPE_36__* %176 to i8*
  %180 = bitcast %struct.TYPE_36__* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 16, i1 false)
  %181 = load %struct.TYPE_38__*, %struct.TYPE_38__** %21, align 8
  %182 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %183, i32 0, i32 0
  %185 = bitcast %struct.TYPE_34__* %182 to i8*
  %186 = bitcast %struct.TYPE_34__* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 8, i1 false)
  %187 = load %struct.TYPE_38__*, %struct.TYPE_38__** %21, align 8
  %188 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %174, %162
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i32 1
  store %struct.TYPE_37__* %191, %struct.TYPE_37__** %17, align 8
  br label %134

192:                                              ; preds = %134
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %194 = load %struct.TYPE_38__*, %struct.TYPE_38__** %193, align 8
  store %struct.TYPE_38__* %194, %struct.TYPE_38__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %14, align 8
  br label %197

197:                                              ; preds = %192, %98
  store i64 0, i64* %13, align 8
  br label %198

198:                                              ; preds = %414, %197
  %199 = load i64, i64* %13, align 8
  %200 = load i64, i64* %14, align 8
  %201 = icmp ult i64 %199, %200
  br i1 %201, label %202, label %417

202:                                              ; preds = %198
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %204 = load i64, i64* %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = icmp ugt i64 %209, 5
  br i1 %210, label %211, label %270

211:                                              ; preds = %202
  %212 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %213 = load i64, i64* %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @ngx_strncmp(i64 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %270

220:                                              ; preds = %211
  %221 = call i8* @ngx_array_push(%struct.TYPE_31__* %15)
  %222 = bitcast i8* %221 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %222, %struct.TYPE_28__** %18, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %224 = icmp eq %struct.TYPE_28__* %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i64, i64* @NGX_ERROR, align 8
  store i64 %226, i64* %5, align 8
  br label %450

227:                                              ; preds = %220
  %228 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %229 = load i64, i64* %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 5
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 0
  store i32 %234, i32* %237, align 8
  %238 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %239 = load i64, i64* %13, align 8
  %240 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 5
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 1
  store i64 %244, i64* %247, align 8
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @ngx_hash_key_lc(i64 %251, i32 %255)
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 0
  store i8* inttoptr (i64 1 to i8*), i8** %260, align 8
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %262 = load i64, i64* %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %227
  br label %414

269:                                              ; preds = %227
  br label %270

270:                                              ; preds = %269, %211, %202
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = call i8* @ngx_array_push_n(i32* %273, i32 16)
  %275 = bitcast i8* %274 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %275, %struct.TYPE_39__** %23, align 8
  %276 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %277 = icmp eq %struct.TYPE_39__* %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %270
  %279 = load i64, i64* @NGX_ERROR, align 8
  store i64 %279, i64* %5, align 8
  br label %450

280:                                              ; preds = %270
  %281 = load i64, i64* @ngx_http_script_copy_len_code, align 8
  %282 = inttoptr i64 %281 to i8*
  %283 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %284 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %283, i32 0, i32 1
  store i8* %282, i8** %284, align 8
  %285 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %286 = load i64, i64* %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  %292 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %293 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 8
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = call i8* @ngx_array_push_n(i32* %296, i32 16)
  %298 = bitcast i8* %297 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %298, %struct.TYPE_39__** %23, align 8
  %299 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %300 = icmp eq %struct.TYPE_39__* %299, null
  br i1 %300, label %301, label %303

301:                                              ; preds = %280
  %302 = load i64, i64* @NGX_ERROR, align 8
  store i64 %302, i64* %5, align 8
  br label %450

303:                                              ; preds = %280
  %304 = load i64, i64* @ngx_http_script_copy_len_code, align 8
  %305 = inttoptr i64 %304 to i8*
  %306 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %307 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %306, i32 0, i32 1
  store i8* %305, i8** %307, align 8
  %308 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %309 = load i64, i64* %13, align 8
  %310 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %308, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %314 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 8
  %315 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %316 = load i64, i64* %13, align 8
  %317 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = sext i32 %320 to i64
  %322 = add i64 16, %321
  %323 = add i64 %322, 1
  %324 = add i64 %323, 8
  %325 = sub i64 %324, 1
  %326 = and i64 %325, -8
  store i64 %326, i64* %11, align 8
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 3
  %329 = load i32*, i32** %328, align 8
  %330 = load i64, i64* %11, align 8
  %331 = trunc i64 %330 to i32
  %332 = call i8* @ngx_array_push_n(i32* %329, i32 %331)
  %333 = bitcast i8* %332 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %333, %struct.TYPE_39__** %23, align 8
  %334 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %335 = icmp eq %struct.TYPE_39__* %334, null
  br i1 %335, label %336, label %338

336:                                              ; preds = %303
  %337 = load i64, i64* @NGX_ERROR, align 8
  store i64 %337, i64* %5, align 8
  br label %450

338:                                              ; preds = %303
  %339 = load i8*, i8** @ngx_http_script_copy_code, align 8
  %340 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %341 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %340, i32 0, i32 1
  store i8* %339, i8** %341, align 8
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %343 = load i64, i64* %13, align 8
  %344 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %342, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = add nsw i32 %347, 1
  %349 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %350 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %349, i32 0, i32 0
  store i32 %348, i32* %350, align 8
  %351 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %352 = bitcast %struct.TYPE_39__* %351 to i32*
  %353 = getelementptr inbounds i32, i32* %352, i64 16
  store i32* %353, i32** %10, align 8
  %354 = load i32*, i32** %10, align 8
  %355 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %356 = load i64, i64* %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %355, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %362 = load i64, i64* %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %361, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = add nsw i32 %366, 1
  %368 = call i32 @ngx_cpystrn(i32* %354, i64 %360, i32 %367)
  %369 = call i32 @ngx_memzero(%struct.TYPE_40__* %22, i32 40)
  %370 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 4
  store %struct.TYPE_30__* %370, %struct.TYPE_30__** %371, align 8
  %372 = load %struct.TYPE_38__*, %struct.TYPE_38__** %20, align 8
  %373 = load i64, i64* %13, align 8
  %374 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %372, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 3
  store %struct.TYPE_34__* %375, %struct.TYPE_34__** %376, align 8
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 4
  %379 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 2
  store i32* %378, i32** %379, align 8
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 1
  store i32** %381, i32*** %382, align 8
  %383 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 0
  store i32** %384, i32*** %385, align 8
  %386 = call i64 @ngx_http_script_compile(%struct.TYPE_40__* %22)
  %387 = load i64, i64* @NGX_OK, align 8
  %388 = icmp ne i64 %386, %387
  br i1 %388, label %389, label %391

389:                                              ; preds = %338
  %390 = load i64, i64* @NGX_ERROR, align 8
  store i64 %390, i64* %5, align 8
  br label %450

391:                                              ; preds = %338
  %392 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %392, i32 0, i32 2
  %394 = load i32*, i32** %393, align 8
  %395 = call i8* @ngx_array_push_n(i32* %394, i32 8)
  %396 = bitcast i8* %395 to i64*
  store i64* %396, i64** %12, align 8
  %397 = load i64*, i64** %12, align 8
  %398 = icmp eq i64* %397, null
  br i1 %398, label %399, label %401

399:                                              ; preds = %391
  %400 = load i64, i64* @NGX_ERROR, align 8
  store i64 %400, i64* %5, align 8
  br label %450

401:                                              ; preds = %391
  %402 = load i64*, i64** %12, align 8
  store i64 0, i64* %402, align 8
  %403 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %403, i32 0, i32 3
  %405 = load i32*, i32** %404, align 8
  %406 = call i8* @ngx_array_push_n(i32* %405, i32 8)
  %407 = bitcast i8* %406 to i64*
  store i64* %407, i64** %12, align 8
  %408 = load i64*, i64** %12, align 8
  %409 = icmp eq i64* %408, null
  br i1 %409, label %410, label %412

410:                                              ; preds = %401
  %411 = load i64, i64* @NGX_ERROR, align 8
  store i64 %411, i64* %5, align 8
  br label %450

412:                                              ; preds = %401
  %413 = load i64*, i64** %12, align 8
  store i64 0, i64* %413, align 8
  br label %414

414:                                              ; preds = %412, %268
  %415 = load i64, i64* %13, align 8
  %416 = add i64 %415, 1
  store i64 %416, i64* %13, align 8
  br label %198

417:                                              ; preds = %198
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %418, i32 0, i32 2
  %420 = load i32*, i32** %419, align 8
  %421 = call i8* @ngx_array_push_n(i32* %420, i32 8)
  %422 = bitcast i8* %421 to i64*
  store i64* %422, i64** %12, align 8
  %423 = load i64*, i64** %12, align 8
  %424 = icmp eq i64* %423, null
  br i1 %424, label %425, label %427

425:                                              ; preds = %417
  %426 = load i64, i64* @NGX_ERROR, align 8
  store i64 %426, i64* %5, align 8
  br label %450

427:                                              ; preds = %417
  %428 = load i64*, i64** %12, align 8
  store i64 0, i64* %428, align 8
  %429 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %432 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %431, i32 0, i32 0
  store i64 %430, i64* %432, align 8
  %433 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 6
  store %struct.TYPE_32__* %434, %struct.TYPE_32__** %435, align 8
  %436 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 5
  store i32 (i64, i32)* @ngx_hash_key_lc, i32 (i64, i32)** %436, align 8
  %437 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  store i32 512, i32* %437, align 8
  %438 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  store i32 64, i32* %438, align 4
  %439 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %439, align 8
  %440 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 4
  store i32 %442, i32* %443, align 8
  %444 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 3
  store i32* null, i32** %444, align 8
  %445 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %446 = load %struct.TYPE_38__*, %struct.TYPE_38__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = call i64 @ngx_hash_init(%struct.TYPE_29__* %19, %struct.TYPE_38__* %446, i64 %448)
  store i64 %449, i64* %5, align 8
  br label %450

450:                                              ; preds = %427, %425, %410, %399, %389, %336, %301, %278, %225, %172, %120, %108, %79, %70, %56, %39, %29
  %451 = load i64, i64* %5, align 8
  ret i64 %451
}

declare dso_local i8* @ngx_array_create(i32, i32, i32) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_31__*, i32, i32, i32) #1

declare dso_local i8* @ngx_array_push(%struct.TYPE_31__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strcasecmp(i64, i64) #1

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i32 @ngx_hash_key_lc(i64, i32) #1

declare dso_local i8* @ngx_array_push_n(i32*, i32) #1

declare dso_local i32 @ngx_cpystrn(i32*, i64, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_40__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_40__*) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_29__*, %struct.TYPE_38__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
