; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_script.c_ngx_http_script_full_name_code.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_script.c_ngx_http_script_full_name_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_14__, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64 }

@ngx_cycle = common dso_local global %struct.TYPE_11__* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_script_exit = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"http script fullname: \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ngx_http_script_full_name_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_script_full_name_code(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %17, %21
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_cycle, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = bitcast i32* %30 to %struct.TYPE_14__*
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_cycle, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.TYPE_14__*
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi %struct.TYPE_14__* [ %31, %28 ], [ %35, %32 ]
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %5, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = call i64 @ngx_get_full_name(i32 %42, %struct.TYPE_14__* %43, %struct.TYPE_14__* %4)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i64, i64* @ngx_http_script_exit, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %72

54:                                               ; preds = %36
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = bitcast %struct.TYPE_14__* %56 to i8*
  %58 = bitcast %struct.TYPE_14__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ngx_log_debug1(i32 %59, i32 %66, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %4)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 8
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %54, %47
  ret void
}

declare dso_local i64 @ngx_get_full_name(i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
