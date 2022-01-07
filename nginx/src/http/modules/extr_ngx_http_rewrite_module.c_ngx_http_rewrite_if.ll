; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_if.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_28__*, %struct.TYPE_24__*, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_26__**, i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_22__*, i32, i32, %struct.TYPE_26__** }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i8* (%struct.TYPE_29__*)* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_26__**, i32 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_max_module = common dso_local global i32 0, align 4
@NGX_HTTP_MODULE = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_http_script_if_code = common dso_local global i32 0, align 4
@ngx_http_rewrite_module = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@NGX_HTTP_SRV_CONF = common dso_local global i64 0, align 8
@NGX_HTTP_SIF_CONF = common dso_local global i64 0, align 8
@NGX_HTTP_LIF_CONF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_29__*, i32*, i8*)* @ngx_http_rewrite_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_rewrite_if(%struct.TYPE_29__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_29__, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %8, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @ngx_pcalloc(i32 %25, i32 16)
  %27 = bitcast i8* %26 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %27, %struct.TYPE_28__** %15, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %29 = icmp eq %struct.TYPE_28__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %31, i8** %4, align 8
  br label %290

32:                                               ; preds = %3
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %34, align 8
  store %struct.TYPE_28__* %35, %struct.TYPE_28__** %16, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ngx_http_max_module, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 8, %50
  %52 = trunc i64 %51 to i32
  %53 = call i8* @ngx_pcalloc(i32 %48, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_26__**
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  store %struct.TYPE_26__** %54, %struct.TYPE_26__*** %56, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %58, align 8
  %60 = icmp eq %struct.TYPE_26__** %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %32
  %62 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %62, i8** %4, align 8
  br label %290

63:                                               ; preds = %32
  store i64 0, i64* %12, align 8
  br label %64

64:                                               ; preds = %131, %63
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %69, i64 %70
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  %73 = icmp ne %struct.TYPE_23__* %72, null
  br i1 %73, label %74, label %134

74:                                               ; preds = %64
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %79, i64 %80
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %131

88:                                               ; preds = %74
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %93, i64 %94
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %97, align 8
  store %struct.TYPE_27__* %98, %struct.TYPE_27__** %14, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load i8* (%struct.TYPE_29__*)*, i8* (%struct.TYPE_29__*)** %100, align 8
  %102 = icmp ne i8* (%struct.TYPE_29__*)* %101, null
  br i1 %102, label %103, label %130

103:                                              ; preds = %88
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = load i8* (%struct.TYPE_29__*)*, i8* (%struct.TYPE_29__*)** %105, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %108 = call i8* %106(%struct.TYPE_29__* %107)
  store i8* %108, i8** %9, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %112, i8** %4, align 8
  br label %290

113:                                              ; preds = %103
  %114 = load i8*, i8** %9, align 8
  %115 = bitcast i8* %114 to %struct.TYPE_26__*
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %117, align 8
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %122, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %123, i64 %124
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %118, i64 %128
  store %struct.TYPE_26__* %115, %struct.TYPE_26__** %129, align 8
  br label %130

130:                                              ; preds = %113, %88
  br label %131

131:                                              ; preds = %130, %87
  %132 = load i64, i64* %12, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %12, align 8
  br label %64

134:                                              ; preds = %64
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %136, align 8
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ngx_http_core_module, i32 0, i32 0), align 8
  %139 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %137, i64 %138
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  store %struct.TYPE_26__* %140, %struct.TYPE_26__** %18, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %142, align 8
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ngx_http_core_module, i32 0, i32 0), align 8
  %145 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %143, i64 %144
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %145, align 8
  store %struct.TYPE_26__* %146, %struct.TYPE_26__** %17, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %148, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 4
  store %struct.TYPE_26__** %149, %struct.TYPE_26__*** %151, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %163 = call i64 @ngx_http_add_location(%struct.TYPE_29__* %159, i32* %161, %struct.TYPE_26__* %162)
  %164 = load i64, i64* @NGX_OK, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %134
  %167 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %167, i8** %4, align 8
  br label %290

168:                                              ; preds = %134
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %171 = call i8* @ngx_http_rewrite_if_condition(%struct.TYPE_29__* %169, %struct.TYPE_26__* %170)
  %172 = load i8*, i8** @NGX_CONF_OK, align 8
  %173 = icmp ne i8* %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %175, i8** %4, align 8
  br label %290

176:                                              ; preds = %168
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %178, align 8
  %180 = call %struct.TYPE_25__* @ngx_array_push_n(%struct.TYPE_22__* %179, i32 24)
  store %struct.TYPE_25__* %180, %struct.TYPE_25__** %19, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %182 = icmp eq %struct.TYPE_25__* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %184, i8** %4, align 8
  br label %290

185:                                              ; preds = %176
  %186 = load i32, i32* @ngx_http_script_if_code, align 4
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %11, align 8
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %195, align 8
  %197 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_http_rewrite_module, i32 0, i32 0), align 8
  %198 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %196, i64 %197
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %198, align 8
  store %struct.TYPE_26__* %199, %struct.TYPE_26__** %20, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %201, align 8
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  store %struct.TYPE_22__* %202, %struct.TYPE_22__** %204, align 8
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %206 = bitcast %struct.TYPE_29__* %13 to i8*
  %207 = bitcast %struct.TYPE_29__* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* align 8 %207, i64 32, i1 false)
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 1
  store %struct.TYPE_28__* %208, %struct.TYPE_28__** %210, align 8
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @NGX_HTTP_SRV_CONF, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %185
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 1
  store %struct.TYPE_26__** null, %struct.TYPE_26__*** %218, align 8
  %219 = load i64, i64* @NGX_HTTP_SIF_CONF, align 8
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  br label %231

222:                                              ; preds = %185
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %224, align 8
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 1
  store %struct.TYPE_26__** %225, %struct.TYPE_26__*** %227, align 8
  %228 = load i64, i64* @NGX_HTTP_LIF_CONF, align 8
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  br label %231

231:                                              ; preds = %222, %216
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %233 = call i8* @ngx_conf_parse(%struct.TYPE_29__* %232, i32* null)
  store i8* %233, i8** %10, align 8
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %235 = bitcast %struct.TYPE_29__* %234 to i8*
  %236 = bitcast %struct.TYPE_29__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %235, i8* align 8 %236, i64 32, i1 false)
  %237 = load i8*, i8** %10, align 8
  %238 = load i8*, i8** @NGX_CONF_OK, align 8
  %239 = icmp ne i8* %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %231
  %241 = load i8*, i8** %10, align 8
  store i8* %241, i8** %4, align 8
  br label %290

242:                                              ; preds = %231
  %243 = load i32*, i32** %11, align 8
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %243, %248
  br i1 %249, label %250, label %265

250:                                              ; preds = %242
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %252 = bitcast %struct.TYPE_25__* %251 to i32*
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32*, i32** %11, align 8
  %259 = ptrtoint i32* %257 to i64
  %260 = ptrtoint i32* %258 to i64
  %261 = sub i64 %259, %260
  %262 = sdiv exact i64 %261, 4
  %263 = getelementptr inbounds i32, i32* %252, i64 %262
  %264 = bitcast i32* %263 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %264, %struct.TYPE_25__** %19, align 8
  br label %265

265:                                              ; preds = %250, %242
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %270, i64 %276
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %279 = bitcast %struct.TYPE_25__* %278 to i32*
  %280 = ptrtoint i32* %277 to i64
  %281 = ptrtoint i32* %279 to i64
  %282 = sub i64 %280, %281
  %283 = sdiv exact i64 %282, 4
  %284 = trunc i64 %283 to i32
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 8
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %288, align 8
  %289 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %289, i8** %4, align 8
  br label %290

290:                                              ; preds = %265, %240, %183, %174, %166, %111, %61, %30
  %291 = load i8*, i8** %4, align 8
  ret i8* %291
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_http_add_location(%struct.TYPE_29__*, i32*, %struct.TYPE_26__*) #1

declare dso_local i8* @ngx_http_rewrite_if_condition(%struct.TYPE_29__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @ngx_array_push_n(%struct.TYPE_22__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_29__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
