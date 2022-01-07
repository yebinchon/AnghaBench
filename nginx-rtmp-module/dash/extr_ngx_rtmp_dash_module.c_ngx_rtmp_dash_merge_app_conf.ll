; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_dash_module.c_ngx_rtmp_dash_merge_app_conf.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_dash_module.c_ngx_rtmp_dash_merge_app_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_12__*, i64, i64, i64 }
%struct.TYPE_19__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_19__, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_19__ }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_rtmp_dash_cleanup = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i8*, i8*)* @ngx_rtmp_dash_merge_app_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_dash_merge_app_conf(%struct.TYPE_18__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ngx_conf_merge_value(i64 %17, i64 %20, i32 0)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ngx_conf_merge_msec_value(i32 %24, i32 %27, i32 5000)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ngx_conf_merge_msec_value(i32 %31, i32 %34, i32 30000)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ngx_conf_merge_value(i64 %38, i64 %41, i32 1)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ngx_conf_merge_value(i64 %45, i64 %48, i32 0)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %3
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %57, %60
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %54, %3
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %184

69:                                               ; preds = %64
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %184

75:                                               ; preds = %69
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %184

80:                                               ; preds = %75
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %84, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 47
  br i1 %94, label %95, label %101

95:                                               ; preds = %80
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %80
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @ngx_pcalloc(i32 %104, i32 24)
  %106 = bitcast i8* %105 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %10, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = icmp eq %struct.TYPE_16__* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %110, i8** %4, align 8
  br label %201

111:                                              ; preds = %101
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 3
  %116 = bitcast %struct.TYPE_19__* %113 to i8*
  %117 = bitcast %struct.TYPE_19__* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 16, i1 false)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @ngx_pcalloc(i32 %125, i32 40)
  %127 = bitcast i8* %126 to %struct.TYPE_12__*
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 4
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %129, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = icmp eq %struct.TYPE_12__* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %111
  %135 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %135, i8** %4, align 8
  br label %201

136:                                              ; preds = %111
  %137 = load i32, i32* @ngx_rtmp_dash_cleanup, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 4
  store i32 %137, i32* %141, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 3
  %148 = bitcast %struct.TYPE_19__* %145 to i8*
  %149 = bitcast %struct.TYPE_19__* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 16, i1 false)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  store i32 %161, i32* %165, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  store i32 %170, i32* %174, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 4
  %178 = call i64 @ngx_add_path(%struct.TYPE_18__* %175, %struct.TYPE_12__** %177)
  %179 = load i64, i64* @NGX_OK, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %136
  %182 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %182, i8** %4, align 8
  br label %201

183:                                              ; preds = %136
  br label %184

184:                                              ; preds = %183, %75, %69, %64
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 3
  %189 = bitcast %struct.TYPE_19__* %186 to { i32, i8* }*
  %190 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %189, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = bitcast %struct.TYPE_19__* %188 to { i32, i8* }*
  %195 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %194, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @ngx_conf_merge_str_value(i32 %191, i8* %193, i32 %196, i8* %198, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %200 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %200, i8** %4, align 8
  br label %201

201:                                              ; preds = %184, %181, %134, %109
  %202 = load i8*, i8** %4, align 8
  ret i8* %202
}

declare dso_local i32 @ngx_conf_merge_value(i64, i64, i32) #1

declare dso_local i32 @ngx_conf_merge_msec_value(i32, i32, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_add_path(%struct.TYPE_18__*, %struct.TYPE_12__**) #1

declare dso_local i32 @ngx_conf_merge_str_value(i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
