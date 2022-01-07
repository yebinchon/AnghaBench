; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_uwsgi_module.c_ngx_http_uwsgi_init_params.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_uwsgi_module.c_ngx_http_uwsgi_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, %struct.TYPE_34__, %struct.TYPE_35__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_35__ = type { i32, i64 }
%struct.TYPE_38__ = type { i64, %struct.TYPE_32__, i32*, i32*, i32 }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_37__ = type { %struct.TYPE_34__, %struct.TYPE_35__ }
%struct.TYPE_31__ = type { i64, %struct.TYPE_40__* }
%struct.TYPE_28__ = type { i8*, %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { i32, i64 }
%struct.TYPE_29__ = type { i32, i32, i8*, i32*, i32, i32 (i64, i32)*, %struct.TYPE_32__* }
%struct.TYPE_27__ = type { i32**, i32**, i32*, %struct.TYPE_34__*, %struct.TYPE_30__* }
%struct.TYPE_26__ = type { i32, i8* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"HTTP_\00", align 1
@ngx_http_script_copy_len_code = common dso_local global i64 0, align 8
@ngx_http_script_copy_code = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"uwsgi_params_hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_30__*, %struct.TYPE_39__*, %struct.TYPE_38__*, %struct.TYPE_37__*)* @ngx_http_uwsgi_init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_uwsgi_init_params(%struct.TYPE_30__* %0, %struct.TYPE_39__* %1, %struct.TYPE_38__* %2, %struct.TYPE_37__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
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
  %20 = alloca %struct.TYPE_40__*, align 8
  %21 = alloca %struct.TYPE_40__*, align 8
  %22 = alloca %struct.TYPE_27__, align 8
  %23 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %7, align 8
  store %struct.TYPE_38__* %2, %struct.TYPE_38__** %8, align 8
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %9, align 8
  %24 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @NGX_OK, align 8
  store i64 %30, i64* %5, align 8
  br label %446

31:                                               ; preds = %4
  %32 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %33, align 8
  %35 = icmp eq %struct.TYPE_33__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %38 = icmp eq %struct.TYPE_37__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 0
  store i8* inttoptr (i64 1 to i8*), i8** %42, align 8
  %43 = load i64, i64* @NGX_OK, align 8
  store i64 %43, i64* %5, align 8
  br label %446

44:                                               ; preds = %36, %31
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @ngx_array_create(i32 %47, i32 64, i32 1)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i64, i64* @NGX_ERROR, align 8
  store i64 %57, i64* %5, align 8
  br label %446

58:                                               ; preds = %44
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ngx_array_create(i32 %61, i32 512, i32 1)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i64, i64* @NGX_ERROR, align 8
  store i64 %71, i64* %5, align 8
  br label %446

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
  br label %446

81:                                               ; preds = %72
  %82 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %83, align 8
  %85 = icmp ne %struct.TYPE_33__* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_40__*, %struct.TYPE_40__** %90, align 8
  store %struct.TYPE_40__* %91, %struct.TYPE_40__** %20, align 8
  %92 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %14, align 8
  br label %98

97:                                               ; preds = %81
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %20, align 8
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
  br label %446

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
  %117 = bitcast i8* %116 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %117, %struct.TYPE_40__** %21, align 8
  %118 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %119 = icmp eq %struct.TYPE_40__* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* @NGX_ERROR, align 8
  store i64 %121, i64* %5, align 8
  br label %446

122:                                              ; preds = %115
  %123 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %124, i64 %125
  %127 = bitcast %struct.TYPE_40__* %123 to i8*
  %128 = bitcast %struct.TYPE_40__* %126 to i8*
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
  %137 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %192

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %141, align 8
  store %struct.TYPE_40__* %142, %struct.TYPE_40__** %20, align 8
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
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %155 = load i64, i64* %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 1
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
  %169 = bitcast i8* %168 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %169, %struct.TYPE_40__** %21, align 8
  %170 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %171 = icmp eq %struct.TYPE_40__* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i64, i64* @NGX_ERROR, align 8
  store i64 %173, i64* %5, align 8
  br label %446

174:                                              ; preds = %167
  %175 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %176 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %177, i32 0, i32 1
  %179 = bitcast %struct.TYPE_35__* %176 to i8*
  %180 = bitcast %struct.TYPE_35__* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 16, i1 false)
  %181 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %182 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %183, i32 0, i32 0
  %185 = bitcast %struct.TYPE_34__* %182 to i8*
  %186 = bitcast %struct.TYPE_34__* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 8, i1 false)
  %187 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %188 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %174, %162
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i32 1
  store %struct.TYPE_37__* %191, %struct.TYPE_37__** %17, align 8
  br label %134

192:                                              ; preds = %134
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %194 = load %struct.TYPE_40__*, %struct.TYPE_40__** %193, align 8
  store %struct.TYPE_40__* %194, %struct.TYPE_40__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %14, align 8
  br label %197

197:                                              ; preds = %192, %98
  store i64 0, i64* %13, align 8
  br label %198

198:                                              ; preds = %410, %197
  %199 = load i64, i64* %13, align 8
  %200 = load i64, i64* %14, align 8
  %201 = icmp ult i64 %199, %200
  br i1 %201, label %202, label %413

202:                                              ; preds = %198
  %203 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %204 = load i64, i64* %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = icmp ugt i64 %209, 5
  br i1 %210, label %211, label %270

211:                                              ; preds = %202
  %212 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %213 = load i64, i64* %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 1
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
  br label %446

227:                                              ; preds = %220
  %228 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %229 = load i64, i64* %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 5
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 0
  store i32 %234, i32* %237, align 8
  %238 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %239 = load i64, i64* %13, align 8
  %240 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 5
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %246, i32 0, i32 1
  store i64 %244, i64* %247, align 8
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @ngx_hash_key_lc(i64 %251, i32 %255)
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 0
  store i8* inttoptr (i64 1 to i8*), i8** %260, align 8
  %261 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %262 = load i64, i64* %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %227
  br label %410

269:                                              ; preds = %227
  br label %270

270:                                              ; preds = %269, %211, %202
  %271 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = call i8* @ngx_array_push_n(i32* %273, i32 16)
  %275 = bitcast i8* %274 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %275, %struct.TYPE_26__** %23, align 8
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %277 = icmp eq %struct.TYPE_26__* %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %270
  %279 = load i64, i64* @NGX_ERROR, align 8
  store i64 %279, i64* %5, align 8
  br label %446

280:                                              ; preds = %270
  %281 = load i64, i64* @ngx_http_script_copy_len_code, align 8
  %282 = inttoptr i64 %281 to i8*
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 1
  store i8* %282, i8** %284, align 8
  %285 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %286 = load i64, i64* %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  %293 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = call i8* @ngx_array_push_n(i32* %295, i32 16)
  %297 = bitcast i8* %296 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %297, %struct.TYPE_26__** %23, align 8
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %299 = icmp eq %struct.TYPE_26__* %298, null
  br i1 %299, label %300, label %302

300:                                              ; preds = %280
  %301 = load i64, i64* @NGX_ERROR, align 8
  store i64 %301, i64* %5, align 8
  br label %446

302:                                              ; preds = %280
  %303 = load i64, i64* @ngx_http_script_copy_len_code, align 8
  %304 = inttoptr i64 %303 to i8*
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %306 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %305, i32 0, i32 1
  store i8* %304, i8** %306, align 8
  %307 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %308 = load i64, i64* %13, align 8
  %309 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %307, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %315 = load i64, i64* %13, align 8
  %316 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = add i64 16, %320
  %322 = add i64 %321, 8
  %323 = sub i64 %322, 1
  %324 = and i64 %323, -8
  store i64 %324, i64* %11, align 8
  %325 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %325, i32 0, i32 3
  %327 = load i32*, i32** %326, align 8
  %328 = load i64, i64* %11, align 8
  %329 = trunc i64 %328 to i32
  %330 = call i8* @ngx_array_push_n(i32* %327, i32 %329)
  %331 = bitcast i8* %330 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %331, %struct.TYPE_26__** %23, align 8
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %333 = icmp eq %struct.TYPE_26__* %332, null
  br i1 %333, label %334, label %336

334:                                              ; preds = %302
  %335 = load i64, i64* @NGX_ERROR, align 8
  store i64 %335, i64* %5, align 8
  br label %446

336:                                              ; preds = %302
  %337 = load i8*, i8** @ngx_http_script_copy_code, align 8
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 1
  store i8* %337, i8** %339, align 8
  %340 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %341 = load i64, i64* %13, align 8
  %342 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %340, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 0
  store i32 %345, i32* %347, align 8
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %349 = bitcast %struct.TYPE_26__* %348 to i32*
  %350 = getelementptr inbounds i32, i32* %349, i64 16
  store i32* %350, i32** %10, align 8
  %351 = load i32*, i32** %10, align 8
  %352 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %353 = load i64, i64* %13, align 8
  %354 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %352, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %359 = load i64, i64* %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %358, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @ngx_memcpy(i32* %351, i64 %357, i32 %363)
  %365 = call i32 @ngx_memzero(%struct.TYPE_27__* %22, i32 40)
  %366 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 4
  store %struct.TYPE_30__* %366, %struct.TYPE_30__** %367, align 8
  %368 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %369 = load i64, i64* %13, align 8
  %370 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %368, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 3
  store %struct.TYPE_34__* %371, %struct.TYPE_34__** %372, align 8
  %373 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %373, i32 0, i32 4
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 2
  store i32* %374, i32** %375, align 8
  %376 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  store i32** %377, i32*** %378, align 8
  %379 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %380 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  store i32** %380, i32*** %381, align 8
  %382 = call i64 @ngx_http_script_compile(%struct.TYPE_27__* %22)
  %383 = load i64, i64* @NGX_OK, align 8
  %384 = icmp ne i64 %382, %383
  br i1 %384, label %385, label %387

385:                                              ; preds = %336
  %386 = load i64, i64* @NGX_ERROR, align 8
  store i64 %386, i64* %5, align 8
  br label %446

387:                                              ; preds = %336
  %388 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %388, i32 0, i32 2
  %390 = load i32*, i32** %389, align 8
  %391 = call i8* @ngx_array_push_n(i32* %390, i32 8)
  %392 = bitcast i8* %391 to i64*
  store i64* %392, i64** %12, align 8
  %393 = load i64*, i64** %12, align 8
  %394 = icmp eq i64* %393, null
  br i1 %394, label %395, label %397

395:                                              ; preds = %387
  %396 = load i64, i64* @NGX_ERROR, align 8
  store i64 %396, i64* %5, align 8
  br label %446

397:                                              ; preds = %387
  %398 = load i64*, i64** %12, align 8
  store i64 0, i64* %398, align 8
  %399 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %399, i32 0, i32 3
  %401 = load i32*, i32** %400, align 8
  %402 = call i8* @ngx_array_push_n(i32* %401, i32 8)
  %403 = bitcast i8* %402 to i64*
  store i64* %403, i64** %12, align 8
  %404 = load i64*, i64** %12, align 8
  %405 = icmp eq i64* %404, null
  br i1 %405, label %406, label %408

406:                                              ; preds = %397
  %407 = load i64, i64* @NGX_ERROR, align 8
  store i64 %407, i64* %5, align 8
  br label %446

408:                                              ; preds = %397
  %409 = load i64*, i64** %12, align 8
  store i64 0, i64* %409, align 8
  br label %410

410:                                              ; preds = %408, %268
  %411 = load i64, i64* %13, align 8
  %412 = add i64 %411, 1
  store i64 %412, i64* %13, align 8
  br label %198

413:                                              ; preds = %198
  %414 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %414, i32 0, i32 2
  %416 = load i32*, i32** %415, align 8
  %417 = call i8* @ngx_array_push_n(i32* %416, i32 8)
  %418 = bitcast i8* %417 to i64*
  store i64* %418, i64** %12, align 8
  %419 = load i64*, i64** %12, align 8
  %420 = icmp eq i64* %419, null
  br i1 %420, label %421, label %423

421:                                              ; preds = %413
  %422 = load i64, i64* @NGX_ERROR, align 8
  store i64 %422, i64* %5, align 8
  br label %446

423:                                              ; preds = %413
  %424 = load i64*, i64** %12, align 8
  store i64 0, i64* %424, align 8
  %425 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %427, i32 0, i32 0
  store i64 %426, i64* %428, align 8
  %429 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 6
  store %struct.TYPE_32__* %430, %struct.TYPE_32__** %431, align 8
  %432 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 5
  store i32 (i64, i32)* @ngx_hash_key_lc, i32 (i64, i32)** %432, align 8
  %433 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  store i32 512, i32* %433, align 8
  %434 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  store i32 64, i32* %434, align 4
  %435 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %435, align 8
  %436 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 4
  store i32 %438, i32* %439, align 8
  %440 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 3
  store i32* null, i32** %440, align 8
  %441 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %442 = load %struct.TYPE_40__*, %struct.TYPE_40__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = call i64 @ngx_hash_init(%struct.TYPE_29__* %19, %struct.TYPE_40__* %442, i64 %444)
  store i64 %445, i64* %5, align 8
  br label %446

446:                                              ; preds = %423, %421, %406, %395, %385, %334, %300, %278, %225, %172, %120, %108, %79, %70, %56, %39, %29
  %447 = load i64, i64* %5, align 8
  ret i64 %447
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

declare dso_local i32 @ngx_memcpy(i32*, i64, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_29__*, %struct.TYPE_40__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
