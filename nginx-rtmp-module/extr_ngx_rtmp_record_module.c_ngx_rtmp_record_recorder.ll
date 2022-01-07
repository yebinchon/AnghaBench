; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_recorder.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_recorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* (%struct.TYPE_25__*)* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_21__**, i32, %struct.TYPE_21__** }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_20__*, i32, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__**, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_24__** }
%struct.TYPE_19__ = type { i32* }

@ngx_rtmp_core_module = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@ngx_rtmp_record_module = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_rtmp_max_module = common dso_local global i32 0, align 4
@ngx_modules = common dso_local global %struct.TYPE_24__** null, align 8
@NGX_RTMP_MODULE = common dso_local global i64 0, align 8
@NGX_RTMP_REC_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_25__*, i32*, i8*)* @ngx_rtmp_record_recorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_record_recorder(%struct.TYPE_25__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_25__, align 8
  %12 = alloca %struct.TYPE_24__**, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__**, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_21__**, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %29 = call i8* @ngx_rtmp_conf_get_module_app_conf(%struct.TYPE_25__* %27, i64 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %14, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ngx_rtmp_record_module, i32 0, i32 0), align 8
  %33 = call i8* @ngx_rtmp_conf_get_module_app_conf(%struct.TYPE_25__* %31, i64 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %17, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @ngx_pcalloc(i32 %37, i32 16)
  %39 = bitcast i8* %38 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %20, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %41 = icmp eq %struct.TYPE_23__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %43, i8** %4, align 8
  br label %204

44:                                               ; preds = %3
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %21, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ngx_rtmp_max_module, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 8, %62
  %64 = trunc i64 %63 to i32
  %65 = call i8* @ngx_pcalloc(i32 %60, i32 %64)
  %66 = bitcast i8* %65 to %struct.TYPE_21__**
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  store %struct.TYPE_21__** %66, %struct.TYPE_21__*** %68, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %70, align 8
  %72 = icmp eq %struct.TYPE_21__** %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %44
  %74 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %74, i8** %4, align 8
  br label %204

75:                                               ; preds = %44
  %76 = load %struct.TYPE_24__**, %struct.TYPE_24__*** @ngx_modules, align 8
  store %struct.TYPE_24__** %76, %struct.TYPE_24__*** %12, align 8
  store i64 0, i64* %9, align 8
  br label %77

77:                                               ; preds = %136, %75
  %78 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %78, i64 %79
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = icmp ne %struct.TYPE_24__* %81, null
  br i1 %82, label %83, label %139

83:                                               ; preds = %77
  %84 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %84, i64 %85
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NGX_RTMP_MODULE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %136

93:                                               ; preds = %83
  %94 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %94, i64 %95
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %13, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_21__* (%struct.TYPE_25__*)*, %struct.TYPE_21__* (%struct.TYPE_25__*)** %101, align 8
  %103 = icmp ne %struct.TYPE_21__* (%struct.TYPE_25__*)* %102, null
  br i1 %103, label %104, label %135

104:                                              ; preds = %93
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_21__* (%struct.TYPE_25__*)*, %struct.TYPE_21__* (%struct.TYPE_25__*)** %106, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %109 = call %struct.TYPE_21__* %107(%struct.TYPE_25__* %108)
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %111, align 8
  %113 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %113, i64 %114
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %112, i64 %118
  store %struct.TYPE_21__* %109, %struct.TYPE_21__** %119, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %121, align 8
  %123 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %123, i64 %124
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %122, i64 %128
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = icmp eq %struct.TYPE_21__* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %104
  %133 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %133, i8** %4, align 8
  br label %204

134:                                              ; preds = %104
  br label %135

135:                                              ; preds = %134, %93
  br label %136

136:                                              ; preds = %135, %92
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %9, align 8
  br label %77

139:                                              ; preds = %77
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %141, align 8
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %144 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %142, i64 %143
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  store %struct.TYPE_21__* %145, %struct.TYPE_21__** %16, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %147, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 4
  store %struct.TYPE_21__** %148, %struct.TYPE_21__*** %150, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 3
  %153 = call i8* @ngx_array_push(i32* %152)
  %154 = bitcast i8* %153 to %struct.TYPE_21__**
  store %struct.TYPE_21__** %154, %struct.TYPE_21__*** %15, align 8
  %155 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %15, align 8
  %156 = icmp eq %struct.TYPE_21__** %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %139
  %158 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %158, i8** %4, align 8
  br label %204

159:                                              ; preds = %139
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %161 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %15, align 8
  store %struct.TYPE_21__* %160, %struct.TYPE_21__** %161, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %163, align 8
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ngx_rtmp_record_module, i32 0, i32 0), align 8
  %166 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %164, i64 %165
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  store %struct.TYPE_21__* %167, %struct.TYPE_21__** %19, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %169, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  store %struct.TYPE_21__** %170, %struct.TYPE_21__*** %172, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = call i8* @ngx_array_push(i32* %174)
  %176 = bitcast i8* %175 to %struct.TYPE_21__**
  store %struct.TYPE_21__** %176, %struct.TYPE_21__*** %18, align 8
  %177 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %18, align 8
  %178 = icmp eq %struct.TYPE_21__** %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %159
  %180 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %180, i8** %4, align 8
  br label %204

181:                                              ; preds = %159
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %183 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %18, align 8
  store %struct.TYPE_21__* %182, %struct.TYPE_21__** %183, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %190 = bitcast %struct.TYPE_25__* %11 to i8*
  %191 = bitcast %struct.TYPE_25__* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 %191, i64 40, i1 false)
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 1
  store %struct.TYPE_23__* %192, %struct.TYPE_23__** %194, align 8
  %195 = load i32, i32* @NGX_RTMP_REC_CONF, align 4
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %199 = call i8* @ngx_conf_parse(%struct.TYPE_25__* %198, i32* null)
  store i8* %199, i8** %8, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %201 = bitcast %struct.TYPE_25__* %200 to i8*
  %202 = bitcast %struct.TYPE_25__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %201, i8* align 8 %202, i64 40, i1 false)
  %203 = load i8*, i8** %8, align 8
  store i8* %203, i8** %4, align 8
  br label %204

204:                                              ; preds = %181, %179, %157, %132, %73, %42
  %205 = load i8*, i8** %4, align 8
  ret i8* %205
}

declare dso_local i8* @ngx_rtmp_conf_get_module_app_conf(%struct.TYPE_25__*, i64) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i8* @ngx_array_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_25__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
