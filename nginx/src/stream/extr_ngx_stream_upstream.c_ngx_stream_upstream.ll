; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, i32, %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_27__ = type { %struct.TYPE_25__**, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_20__*, %struct.TYPE_25__** }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8* (%struct.TYPE_28__*)* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { i32, i32, i32 }

@NGX_STREAM_UPSTREAM_CREATE = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_WEIGHT = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_MAX_CONNS = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_MAX_FAILS = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_FAIL_TIMEOUT = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_DOWN = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_BACKUP = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_stream_max_module = common dso_local global i32 0, align 4
@ngx_stream_upstream_module = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@NGX_STREAM_MODULE = common dso_local global i64 0, align 8
@NGX_STREAM_UPS_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no servers are inside upstream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_28__*, i32*, i8*)* @ngx_stream_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_upstream(%struct.TYPE_28__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = call i32 @ngx_memzero(%struct.TYPE_24__* %11, i32 12)
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %31 = load i32, i32* @NGX_STREAM_UPSTREAM_CREATE, align 4
  %32 = load i32, i32* @NGX_STREAM_UPSTREAM_WEIGHT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NGX_STREAM_UPSTREAM_MAX_CONNS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NGX_STREAM_UPSTREAM_MAX_FAILS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NGX_STREAM_UPSTREAM_FAIL_TIMEOUT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NGX_STREAM_UPSTREAM_DOWN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NGX_STREAM_UPSTREAM_BACKUP, align 4
  %43 = or i32 %41, %42
  %44 = call %struct.TYPE_25__* @ngx_stream_upstream_add(%struct.TYPE_28__* %30, %struct.TYPE_24__* %11, i32 %43)
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %17, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %46 = icmp eq %struct.TYPE_25__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %48, i8** %4, align 8
  br label %214

49:                                               ; preds = %3
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @ngx_pcalloc(i32 %52, i32 16)
  %54 = bitcast i8* %53 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %54, %struct.TYPE_27__** %15, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %56 = icmp eq %struct.TYPE_27__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %58, i8** %4, align 8
  br label %214

59:                                               ; preds = %49
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %61, align 8
  store %struct.TYPE_27__* %62, %struct.TYPE_27__** %16, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ngx_stream_max_module, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 8, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @ngx_pcalloc(i32 %70, i32 %74)
  %76 = bitcast i8* %75 to %struct.TYPE_25__**
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  store %struct.TYPE_25__** %76, %struct.TYPE_25__*** %78, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %80, align 8
  %82 = icmp eq %struct.TYPE_25__** %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %59
  %84 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %84, i8** %4, align 8
  br label %214

85:                                               ; preds = %59
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %88, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ngx_stream_upstream_module, i32 0, i32 0), align 8
  %91 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %89, i64 %90
  store %struct.TYPE_25__* %86, %struct.TYPE_25__** %91, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %93, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  store %struct.TYPE_25__** %94, %struct.TYPE_25__*** %96, align 8
  store i64 0, i64* %12, align 8
  br label %97

97:                                               ; preds = %164, %85
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %102, i64 %103
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %104, align 8
  %106 = icmp ne %struct.TYPE_22__* %105, null
  br i1 %106, label %107, label %167

107:                                              ; preds = %97
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %112, i64 %113
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NGX_STREAM_MODULE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  br label %164

121:                                              ; preds = %107
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %125, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %126, i64 %127
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %130, align 8
  store %struct.TYPE_26__* %131, %struct.TYPE_26__** %14, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = load i8* (%struct.TYPE_28__*)*, i8* (%struct.TYPE_28__*)** %133, align 8
  %135 = icmp ne i8* (%struct.TYPE_28__*)* %134, null
  br i1 %135, label %136, label %163

136:                                              ; preds = %121
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 0
  %139 = load i8* (%struct.TYPE_28__*)*, i8* (%struct.TYPE_28__*)** %138, align 8
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %141 = call i8* %139(%struct.TYPE_28__* %140)
  store i8* %141, i8** %9, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %145, i8** %4, align 8
  br label %214

146:                                              ; preds = %136
  %147 = load i8*, i8** %9, align 8
  %148 = bitcast i8* %147 to %struct.TYPE_25__*
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %150, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %155, align 8
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %156, i64 %157
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %151, i64 %161
  store %struct.TYPE_25__* %148, %struct.TYPE_25__** %162, align 8
  br label %163

163:                                              ; preds = %146, %121
  br label %164

164:                                              ; preds = %163, %120
  %165 = load i64, i64* %12, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %12, align 8
  br label %97

167:                                              ; preds = %97
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call %struct.TYPE_20__* @ngx_array_create(i32 %170, i32 4, i32 4)
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 0
  store %struct.TYPE_20__* %171, %struct.TYPE_20__** %173, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = icmp eq %struct.TYPE_20__* %176, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %167
  %179 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %179, i8** %4, align 8
  br label %214

180:                                              ; preds = %167
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %182 = bitcast %struct.TYPE_28__* %13 to i8*
  %183 = bitcast %struct.TYPE_28__* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 %183, i64 40, i1 false)
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 1
  store %struct.TYPE_27__* %184, %struct.TYPE_27__** %186, align 8
  %187 = load i32, i32* @NGX_STREAM_UPS_CONF, align 4
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %191 = call i8* @ngx_conf_parse(%struct.TYPE_28__* %190, i32* null)
  store i8* %191, i8** %8, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %193 = bitcast %struct.TYPE_28__* %192 to i8*
  %194 = bitcast %struct.TYPE_28__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %193, i8* align 8 %194, i64 40, i1 false)
  %195 = load i8*, i8** %8, align 8
  %196 = load i8*, i8** @NGX_CONF_OK, align 8
  %197 = icmp ne i8* %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %180
  %199 = load i8*, i8** %8, align 8
  store i8* %199, i8** %4, align 8
  br label %214

200:                                              ; preds = %180
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %200
  %208 = load i32, i32* @NGX_LOG_EMERG, align 4
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %210 = call i32 @ngx_conf_log_error(i32 %208, %struct.TYPE_28__* %209, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %211 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %211, i8** %4, align 8
  br label %214

212:                                              ; preds = %200
  %213 = load i8*, i8** %8, align 8
  store i8* %213, i8** %4, align 8
  br label %214

214:                                              ; preds = %212, %207, %198, %178, %144, %83, %57, %47
  %215 = load i8*, i8** %4, align 8
  ret i8* %215
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_25__* @ngx_stream_upstream_add(%struct.TYPE_28__*, %struct.TYPE_24__*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_array_create(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_28__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
