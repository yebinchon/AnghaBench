; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_core_module.c_ngx_rtmp_core_application.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_core_module.c_ngx_rtmp_core_application.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__* (%struct.TYPE_24__*)* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__**, %struct.TYPE_21__**, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_23__** }
%struct.TYPE_16__ = type { i64 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_rtmp_max_module = common dso_local global i32 0, align 4
@ngx_modules = common dso_local global %struct.TYPE_23__** null, align 8
@NGX_RTMP_MODULE = common dso_local global i64 0, align 8
@ngx_rtmp_core_module = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@NGX_RTMP_APP_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_24__*, i32*, i8*)* @ngx_rtmp_core_application to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_core_application(%struct.TYPE_24__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca %struct.TYPE_23__**, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_21__**, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @ngx_pcalloc(i32 %21, i32 24)
  %23 = bitcast i8* %22 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %14, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %25 = icmp eq %struct.TYPE_22__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %27, i8** %4, align 8
  br label %176

28:                                               ; preds = %3
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %15, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %38, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  store %struct.TYPE_20__** %39, %struct.TYPE_20__*** %41, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ngx_rtmp_max_module, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  %49 = call i8* @ngx_pcalloc(i32 %44, i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_21__**
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  store %struct.TYPE_21__** %50, %struct.TYPE_21__*** %52, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %54, align 8
  %56 = icmp eq %struct.TYPE_21__** %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %28
  %58 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %58, i8** %4, align 8
  br label %176

59:                                               ; preds = %28
  %60 = load %struct.TYPE_23__**, %struct.TYPE_23__*** @ngx_modules, align 8
  store %struct.TYPE_23__** %60, %struct.TYPE_23__*** %12, align 8
  store i64 0, i64* %9, align 8
  br label %61

61:                                               ; preds = %120, %59
  %62 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %62, i64 %63
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  %66 = icmp ne %struct.TYPE_23__* %65, null
  br i1 %66, label %67, label %123

67:                                               ; preds = %61
  %68 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %68, i64 %69
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NGX_RTMP_MODULE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %120

77:                                               ; preds = %67
  %78 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %78, i64 %79
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  store %struct.TYPE_19__* %83, %struct.TYPE_19__** %13, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_21__* (%struct.TYPE_24__*)*, %struct.TYPE_21__* (%struct.TYPE_24__*)** %85, align 8
  %87 = icmp ne %struct.TYPE_21__* (%struct.TYPE_24__*)* %86, null
  br i1 %87, label %88, label %119

88:                                               ; preds = %77
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_21__* (%struct.TYPE_24__*)*, %struct.TYPE_21__* (%struct.TYPE_24__*)** %90, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = call %struct.TYPE_21__* %91(%struct.TYPE_24__* %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %95, align 8
  %97 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %97, i64 %98
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %96, i64 %102
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %103, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %105, align 8
  %107 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %107, i64 %108
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %106, i64 %112
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = icmp eq %struct.TYPE_21__* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %88
  %117 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %117, i8** %4, align 8
  br label %176

118:                                              ; preds = %88
  br label %119

119:                                              ; preds = %118, %77
  br label %120

120:                                              ; preds = %119, %76
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %9, align 8
  br label %61

123:                                              ; preds = %61
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %125, align 8
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %128 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %126, i64 %127
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  store %struct.TYPE_21__* %129, %struct.TYPE_21__** %17, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %131, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  store %struct.TYPE_21__** %132, %struct.TYPE_21__*** %134, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %10, align 8
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %146, align 8
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %149 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %147, i64 %148
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %16, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = call %struct.TYPE_21__** @ngx_array_push(i32* %152)
  store %struct.TYPE_21__** %153, %struct.TYPE_21__*** %18, align 8
  %154 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %18, align 8
  %155 = icmp eq %struct.TYPE_21__** %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %123
  %157 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %157, i8** %4, align 8
  br label %176

158:                                              ; preds = %123
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %160 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %18, align 8
  store %struct.TYPE_21__* %159, %struct.TYPE_21__** %160, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %162 = bitcast %struct.TYPE_24__* %11 to i8*
  %163 = bitcast %struct.TYPE_24__* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 40, i1 false)
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 1
  store %struct.TYPE_22__* %164, %struct.TYPE_22__** %166, align 8
  %167 = load i32, i32* @NGX_RTMP_APP_CONF, align 4
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %171 = call i8* @ngx_conf_parse(%struct.TYPE_24__* %170, i32* null)
  store i8* %171, i8** %8, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %173 = bitcast %struct.TYPE_24__* %172 to i8*
  %174 = bitcast %struct.TYPE_24__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %173, i8* align 8 %174, i64 40, i1 false)
  %175 = load i8*, i8** %8, align 8
  store i8* %175, i8** %4, align 8
  br label %176

176:                                              ; preds = %158, %156, %116, %57, %26
  %177 = load i8*, i8** %4, align 8
  ret i8* %177
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_21__** @ngx_array_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_24__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
