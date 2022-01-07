; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream.c_ngx_stream_block.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream.c_ngx_stream_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_36__*, i32, i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_31__** }
%struct.TYPE_31__ = type { i64, i64, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64 (%struct.TYPE_37__*)*, i8* (%struct.TYPE_37__*, %struct.TYPE_35__*)*, i8* (%struct.TYPE_37__*, i32*, i32*)*, i64 (%struct.TYPE_37__*)*, i32* (%struct.TYPE_37__*)*, %struct.TYPE_35__* (%struct.TYPE_37__*)* }
%struct.TYPE_35__ = type { %struct.TYPE_28__, %struct.TYPE_32__ }
%struct.TYPE_28__ = type { i64, i32* }
%struct.TYPE_32__ = type { i64, %struct.TYPE_34__** }
%struct.TYPE_34__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32**, %struct.TYPE_35__** }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_STREAM_MODULE = common dso_local global i64 0, align 8
@ngx_stream_max_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_STREAM_MAIN_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_stream_core_module = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_37__*, i32*, i8*)* @ngx_stream_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_block(%struct.TYPE_37__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_37__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_33__*, align 8
  %17 = alloca %struct.TYPE_36__*, align 8
  %18 = alloca %struct.TYPE_34__**, align 8
  %19 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_36__**
  %22 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %23 = icmp ne %struct.TYPE_36__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %522

25:                                               ; preds = %3
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @ngx_pcalloc(i32 %28, i32 16)
  %30 = bitcast i8* %29 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %30, %struct.TYPE_36__** %17, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %32 = icmp eq %struct.TYPE_36__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %34, i8** %4, align 8
  br label %522

35:                                               ; preds = %25
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_36__**
  store %struct.TYPE_36__* %36, %struct.TYPE_36__** %38, align 8
  %39 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %40, align 8
  %42 = load i64, i64* @NGX_STREAM_MODULE, align 8
  %43 = call i32 @ngx_count_modules(%struct.TYPE_30__* %41, i64 %42)
  store i32 %43, i32* @ngx_stream_max_module, align 4
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ngx_stream_max_module, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 8, %48
  %50 = trunc i64 %49 to i32
  %51 = call i8* @ngx_pcalloc(i32 %46, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_35__**
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 1
  store %struct.TYPE_35__** %52, %struct.TYPE_35__*** %54, align 8
  %55 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %56, align 8
  %58 = icmp eq %struct.TYPE_35__** %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %35
  %60 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %60, i8** %4, align 8
  br label %522

61:                                               ; preds = %35
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ngx_stream_max_module, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = call i8* @ngx_pcalloc(i32 %64, i32 %68)
  %70 = bitcast i8* %69 to i32**
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 0
  store i32** %70, i32*** %72, align 8
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = icmp eq i32** %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %78, i8** %4, align 8
  br label %522

79:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  br label %80

80:                                               ; preds = %177, %79
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %85, i64 %86
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %87, align 8
  %89 = icmp ne %struct.TYPE_31__* %88, null
  br i1 %89, label %90, label %180

90:                                               ; preds = %80
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %95, i64 %96
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NGX_STREAM_MODULE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %177

104:                                              ; preds = %90
  %105 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %109, i64 %110
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %113, align 8
  store %struct.TYPE_33__* %114, %struct.TYPE_33__** %16, align 8
  %115 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %119, i64 %120
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %11, align 8
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_35__* (%struct.TYPE_37__*)*, %struct.TYPE_35__* (%struct.TYPE_37__*)** %126, align 8
  %128 = icmp ne %struct.TYPE_35__* (%struct.TYPE_37__*)* %127, null
  br i1 %128, label %129, label %150

129:                                              ; preds = %104
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 5
  %132 = load %struct.TYPE_35__* (%struct.TYPE_37__*)*, %struct.TYPE_35__* (%struct.TYPE_37__*)** %131, align 8
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %134 = call %struct.TYPE_35__* %132(%struct.TYPE_37__* %133)
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %137, i64 %138
  store %struct.TYPE_35__* %134, %struct.TYPE_35__** %139, align 8
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %142, i64 %143
  %145 = load %struct.TYPE_35__*, %struct.TYPE_35__** %144, align 8
  %146 = icmp eq %struct.TYPE_35__* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %129
  %148 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %148, i8** %4, align 8
  br label %522

149:                                              ; preds = %129
  br label %150

150:                                              ; preds = %149, %104
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 4
  %153 = load i32* (%struct.TYPE_37__*)*, i32* (%struct.TYPE_37__*)** %152, align 8
  %154 = icmp ne i32* (%struct.TYPE_37__*)* %153, null
  br i1 %154, label %155, label %176

155:                                              ; preds = %150
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 4
  %158 = load i32* (%struct.TYPE_37__*)*, i32* (%struct.TYPE_37__*)** %157, align 8
  %159 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %160 = call i32* %158(%struct.TYPE_37__* %159)
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 0
  %163 = load i32**, i32*** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds i32*, i32** %163, i64 %164
  store i32* %160, i32** %165, align 8
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %166, i32 0, i32 0
  %168 = load i32**, i32*** %167, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds i32*, i32** %168, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %155
  %174 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %174, i8** %4, align 8
  br label %522

175:                                              ; preds = %155
  br label %176

176:                                              ; preds = %175, %150
  br label %177

177:                                              ; preds = %176, %103
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %10, align 8
  br label %80

180:                                              ; preds = %80
  %181 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %182 = bitcast %struct.TYPE_37__* %13 to i8*
  %183 = bitcast %struct.TYPE_37__* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 %183, i64 48, i1 false)
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i32 0, i32 2
  store %struct.TYPE_36__* %184, %struct.TYPE_36__** %186, align 8
  store i64 0, i64* %10, align 8
  br label %187

187:                                              ; preds = %238, %180
  %188 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %191, align 8
  %193 = load i64, i64* %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %192, i64 %193
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %194, align 8
  %196 = icmp ne %struct.TYPE_31__* %195, null
  br i1 %196, label %197, label %241

197:                                              ; preds = %187
  %198 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %201, align 8
  %203 = load i64, i64* %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %202, i64 %203
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @NGX_STREAM_MODULE, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %197
  br label %238

211:                                              ; preds = %197
  %212 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %215, align 8
  %217 = load i64, i64* %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %216, i64 %217
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %220, align 8
  store %struct.TYPE_33__* %221, %struct.TYPE_33__** %16, align 8
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %222, i32 0, i32 0
  %224 = load i64 (%struct.TYPE_37__*)*, i64 (%struct.TYPE_37__*)** %223, align 8
  %225 = icmp ne i64 (%struct.TYPE_37__*)* %224, null
  br i1 %225, label %226, label %237

226:                                              ; preds = %211
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 0
  %229 = load i64 (%struct.TYPE_37__*)*, i64 (%struct.TYPE_37__*)** %228, align 8
  %230 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %231 = call i64 %229(%struct.TYPE_37__* %230)
  %232 = load i64, i64* @NGX_OK, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %235, i8** %4, align 8
  br label %522

236:                                              ; preds = %226
  br label %237

237:                                              ; preds = %236, %211
  br label %238

238:                                              ; preds = %237, %210
  %239 = load i64, i64* %10, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %10, align 8
  br label %187

241:                                              ; preds = %187
  %242 = load i64, i64* @NGX_STREAM_MODULE, align 8
  %243 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %243, i32 0, i32 4
  store i64 %242, i64* %244, align 8
  %245 = load i32, i32* @NGX_STREAM_MAIN_CONF, align 4
  %246 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 8
  %248 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %249 = call i8* @ngx_conf_parse(%struct.TYPE_37__* %248, i32* null)
  store i8* %249, i8** %8, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = load i8*, i8** @NGX_CONF_OK, align 8
  %252 = icmp ne i8* %250, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %241
  %254 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %255 = bitcast %struct.TYPE_37__* %254 to i8*
  %256 = bitcast %struct.TYPE_37__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 %256, i64 48, i1 false)
  %257 = load i8*, i8** %8, align 8
  store i8* %257, i8** %4, align 8
  br label %522

258:                                              ; preds = %241
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %260, align 8
  %262 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @ngx_stream_core_module, i32 0, i32 0), align 8
  %263 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %261, i64 %262
  %264 = load %struct.TYPE_35__*, %struct.TYPE_35__** %263, align 8
  store %struct.TYPE_35__* %264, %struct.TYPE_35__** %19, align 8
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %266 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %267, align 8
  store %struct.TYPE_34__** %268, %struct.TYPE_34__*** %18, align 8
  store i64 0, i64* %10, align 8
  br label %269

269:                                              ; preds = %400, %258
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_30__*, %struct.TYPE_30__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %273, align 8
  %275 = load i64, i64* %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %274, i64 %275
  %277 = load %struct.TYPE_31__*, %struct.TYPE_31__** %276, align 8
  %278 = icmp ne %struct.TYPE_31__* %277, null
  br i1 %278, label %279, label %403

279:                                              ; preds = %269
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %283, align 8
  %285 = load i64, i64* %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %284, i64 %285
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @NGX_STREAM_MODULE, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %279
  br label %400

293:                                              ; preds = %279
  %294 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %297, align 8
  %299 = load i64, i64* %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %298, i64 %299
  %301 = load %struct.TYPE_31__*, %struct.TYPE_31__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_33__*, %struct.TYPE_33__** %302, align 8
  store %struct.TYPE_33__* %303, %struct.TYPE_33__** %16, align 8
  %304 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %307, align 8
  %309 = load i64, i64* %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %308, i64 %309
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %11, align 8
  %314 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %315 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %315, i32 0, i32 2
  store %struct.TYPE_36__* %314, %struct.TYPE_36__** %316, align 8
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %317, i32 0, i32 1
  %319 = load i8* (%struct.TYPE_37__*, %struct.TYPE_35__*)*, i8* (%struct.TYPE_37__*, %struct.TYPE_35__*)** %318, align 8
  %320 = icmp ne i8* (%struct.TYPE_37__*, %struct.TYPE_35__*)* %319, null
  br i1 %320, label %321, label %342

321:                                              ; preds = %293
  %322 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %323 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %322, i32 0, i32 1
  %324 = load i8* (%struct.TYPE_37__*, %struct.TYPE_35__*)*, i8* (%struct.TYPE_37__*, %struct.TYPE_35__*)** %323, align 8
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %327 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %327, align 8
  %329 = load i64, i64* %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %328, i64 %329
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %330, align 8
  %332 = call i8* %324(%struct.TYPE_37__* %325, %struct.TYPE_35__* %331)
  store i8* %332, i8** %8, align 8
  %333 = load i8*, i8** %8, align 8
  %334 = load i8*, i8** @NGX_CONF_OK, align 8
  %335 = icmp ne i8* %333, %334
  br i1 %335, label %336, label %341

336:                                              ; preds = %321
  %337 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %338 = bitcast %struct.TYPE_37__* %337 to i8*
  %339 = bitcast %struct.TYPE_37__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %338, i8* align 8 %339, i64 48, i1 false)
  %340 = load i8*, i8** %8, align 8
  store i8* %340, i8** %4, align 8
  br label %522

341:                                              ; preds = %321
  br label %342

342:                                              ; preds = %341, %293
  store i64 0, i64* %12, align 8
  br label %343

343:                                              ; preds = %396, %342
  %344 = load i64, i64* %12, align 8
  %345 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp ult i64 %344, %348
  br i1 %349, label %350, label %399

350:                                              ; preds = %343
  %351 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %18, align 8
  %352 = load i64, i64* %12, align 8
  %353 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %351, i64 %352
  %354 = load %struct.TYPE_34__*, %struct.TYPE_34__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_36__*, %struct.TYPE_36__** %355, align 8
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %357, i32 0, i32 2
  store %struct.TYPE_36__* %356, %struct.TYPE_36__** %358, align 8
  %359 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %360 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %359, i32 0, i32 2
  %361 = load i8* (%struct.TYPE_37__*, i32*, i32*)*, i8* (%struct.TYPE_37__*, i32*, i32*)** %360, align 8
  %362 = icmp ne i8* (%struct.TYPE_37__*, i32*, i32*)* %361, null
  br i1 %362, label %363, label %395

363:                                              ; preds = %350
  %364 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %365 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %364, i32 0, i32 2
  %366 = load i8* (%struct.TYPE_37__*, i32*, i32*)*, i8* (%struct.TYPE_37__*, i32*, i32*)** %365, align 8
  %367 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %368 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %369 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %368, i32 0, i32 0
  %370 = load i32**, i32*** %369, align 8
  %371 = load i64, i64* %11, align 8
  %372 = getelementptr inbounds i32*, i32** %370, i64 %371
  %373 = load i32*, i32** %372, align 8
  %374 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %18, align 8
  %375 = load i64, i64* %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %374, i64 %375
  %377 = load %struct.TYPE_34__*, %struct.TYPE_34__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_36__*, %struct.TYPE_36__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %379, i32 0, i32 0
  %381 = load i32**, i32*** %380, align 8
  %382 = load i64, i64* %11, align 8
  %383 = getelementptr inbounds i32*, i32** %381, i64 %382
  %384 = load i32*, i32** %383, align 8
  %385 = call i8* %366(%struct.TYPE_37__* %367, i32* %373, i32* %384)
  store i8* %385, i8** %8, align 8
  %386 = load i8*, i8** %8, align 8
  %387 = load i8*, i8** @NGX_CONF_OK, align 8
  %388 = icmp ne i8* %386, %387
  br i1 %388, label %389, label %394

389:                                              ; preds = %363
  %390 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %391 = bitcast %struct.TYPE_37__* %390 to i8*
  %392 = bitcast %struct.TYPE_37__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %391, i8* align 8 %392, i64 48, i1 false)
  %393 = load i8*, i8** %8, align 8
  store i8* %393, i8** %4, align 8
  br label %522

394:                                              ; preds = %363
  br label %395

395:                                              ; preds = %394, %350
  br label %396

396:                                              ; preds = %395
  %397 = load i64, i64* %12, align 8
  %398 = add i64 %397, 1
  store i64 %398, i64* %12, align 8
  br label %343

399:                                              ; preds = %343
  br label %400

400:                                              ; preds = %399, %292
  %401 = load i64, i64* %10, align 8
  %402 = add i64 %401, 1
  store i64 %402, i64* %10, align 8
  br label %269

403:                                              ; preds = %269
  %404 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %405 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %406 = call i64 @ngx_stream_init_phases(%struct.TYPE_37__* %404, %struct.TYPE_35__* %405)
  %407 = load i64, i64* @NGX_OK, align 8
  %408 = icmp ne i64 %406, %407
  br i1 %408, label %409, label %411

409:                                              ; preds = %403
  %410 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %410, i8** %4, align 8
  br label %522

411:                                              ; preds = %403
  store i64 0, i64* %10, align 8
  br label %412

412:                                              ; preds = %463, %411
  %413 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %413, i32 0, i32 1
  %415 = load %struct.TYPE_30__*, %struct.TYPE_30__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %416, align 8
  %418 = load i64, i64* %10, align 8
  %419 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %417, i64 %418
  %420 = load %struct.TYPE_31__*, %struct.TYPE_31__** %419, align 8
  %421 = icmp ne %struct.TYPE_31__* %420, null
  br i1 %421, label %422, label %466

422:                                              ; preds = %412
  %423 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %423, i32 0, i32 1
  %425 = load %struct.TYPE_30__*, %struct.TYPE_30__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %426, align 8
  %428 = load i64, i64* %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %427, i64 %428
  %430 = load %struct.TYPE_31__*, %struct.TYPE_31__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @NGX_STREAM_MODULE, align 8
  %434 = icmp ne i64 %432, %433
  br i1 %434, label %435, label %436

435:                                              ; preds = %422
  br label %463

436:                                              ; preds = %422
  %437 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %437, i32 0, i32 1
  %439 = load %struct.TYPE_30__*, %struct.TYPE_30__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %439, i32 0, i32 0
  %441 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %440, align 8
  %442 = load i64, i64* %10, align 8
  %443 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %441, i64 %442
  %444 = load %struct.TYPE_31__*, %struct.TYPE_31__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %444, i32 0, i32 2
  %446 = load %struct.TYPE_33__*, %struct.TYPE_33__** %445, align 8
  store %struct.TYPE_33__* %446, %struct.TYPE_33__** %16, align 8
  %447 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %448 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %447, i32 0, i32 3
  %449 = load i64 (%struct.TYPE_37__*)*, i64 (%struct.TYPE_37__*)** %448, align 8
  %450 = icmp ne i64 (%struct.TYPE_37__*)* %449, null
  br i1 %450, label %451, label %462

451:                                              ; preds = %436
  %452 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %453 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %452, i32 0, i32 3
  %454 = load i64 (%struct.TYPE_37__*)*, i64 (%struct.TYPE_37__*)** %453, align 8
  %455 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %456 = call i64 %454(%struct.TYPE_37__* %455)
  %457 = load i64, i64* @NGX_OK, align 8
  %458 = icmp ne i64 %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %451
  %460 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %460, i8** %4, align 8
  br label %522

461:                                              ; preds = %451
  br label %462

462:                                              ; preds = %461, %436
  br label %463

463:                                              ; preds = %462, %435
  %464 = load i64, i64* %10, align 8
  %465 = add i64 %464, 1
  store i64 %465, i64* %10, align 8
  br label %412

466:                                              ; preds = %412
  %467 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %468 = call i64 @ngx_stream_variables_init_vars(%struct.TYPE_37__* %467)
  %469 = load i64, i64* @NGX_OK, align 8
  %470 = icmp ne i64 %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %466
  %472 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %472, i8** %4, align 8
  br label %522

473:                                              ; preds = %466
  %474 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %475 = bitcast %struct.TYPE_37__* %474 to i8*
  %476 = bitcast %struct.TYPE_37__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %475, i8* align 8 %476, i64 48, i1 false)
  %477 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %478 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %479 = call i64 @ngx_stream_init_phase_handlers(%struct.TYPE_37__* %477, %struct.TYPE_35__* %478)
  %480 = load i64, i64* @NGX_OK, align 8
  %481 = icmp ne i64 %479, %480
  br i1 %481, label %482, label %484

482:                                              ; preds = %473
  %483 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %483, i8** %4, align 8
  br label %522

484:                                              ; preds = %473
  %485 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = call i64 @ngx_array_init(i32* %14, i32 %487, i32 4, i32 4)
  %489 = load i64, i64* @NGX_OK, align 8
  %490 = icmp ne i64 %488, %489
  br i1 %490, label %491, label %493

491:                                              ; preds = %484
  %492 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %492, i8** %4, align 8
  br label %522

493:                                              ; preds = %484
  %494 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %495 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %495, i32 0, i32 1
  %497 = load i32*, i32** %496, align 8
  store i32* %497, i32** %15, align 8
  store i64 0, i64* %9, align 8
  br label %498

498:                                              ; preds = %516, %493
  %499 = load i64, i64* %9, align 8
  %500 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %501 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = icmp ult i64 %499, %503
  br i1 %504, label %505, label %519

505:                                              ; preds = %498
  %506 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %507 = load i32*, i32** %15, align 8
  %508 = load i64, i64* %9, align 8
  %509 = getelementptr inbounds i32, i32* %507, i64 %508
  %510 = call i64 @ngx_stream_add_ports(%struct.TYPE_37__* %506, i32* %14, i32* %509)
  %511 = load i64, i64* @NGX_OK, align 8
  %512 = icmp ne i64 %510, %511
  br i1 %512, label %513, label %515

513:                                              ; preds = %505
  %514 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %514, i8** %4, align 8
  br label %522

515:                                              ; preds = %505
  br label %516

516:                                              ; preds = %515
  %517 = load i64, i64* %9, align 8
  %518 = add i64 %517, 1
  store i64 %518, i64* %9, align 8
  br label %498

519:                                              ; preds = %498
  %520 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %521 = call i8* @ngx_stream_optimize_servers(%struct.TYPE_37__* %520, i32* %14)
  store i8* %521, i8** %4, align 8
  br label %522

522:                                              ; preds = %519, %513, %491, %482, %471, %459, %409, %389, %336, %253, %234, %173, %147, %77, %59, %33, %24
  %523 = load i8*, i8** %4, align 8
  ret i8* %523
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_count_modules(%struct.TYPE_30__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_37__*, i32*) #1

declare dso_local i64 @ngx_stream_init_phases(%struct.TYPE_37__*, %struct.TYPE_35__*) #1

declare dso_local i64 @ngx_stream_variables_init_vars(%struct.TYPE_37__*) #1

declare dso_local i64 @ngx_stream_init_phase_handlers(%struct.TYPE_37__*, %struct.TYPE_35__*) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i64 @ngx_stream_add_ports(%struct.TYPE_37__*, i32*, i32*) #1

declare dso_local i8* @ngx_stream_optimize_servers(%struct.TYPE_37__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
