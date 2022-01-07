; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_rewrite_refresh.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_rewrite_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32*)* }
%struct.TYPE_15__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"url=\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"rewritten refresh: \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)* @ngx_http_upstream_rewrite_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_rewrite_refresh(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = call %struct.TYPE_15__* @ngx_list_push(i32* %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %10, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %16 = icmp eq %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @NGX_ERROR, align 8
  store i64 %18, i64* %4, align 8
  br label %90

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = bitcast %struct.TYPE_15__* %20 to i8*
  %23 = bitcast %struct.TYPE_15__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32*)*, i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32*)** %27, align 8
  %29 = icmp ne i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32*)* %28, null
  br i1 %29, label %30, label %84

30:                                               ; preds = %19
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @ngx_strcasestrn(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %30
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32*)*, i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32*)** %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  %55 = call i64 %43(%struct.TYPE_16__* %44, %struct.TYPE_15__* %45, i32* %54)
  store i64 %55, i64* %9, align 8
  br label %58

56:                                               ; preds = %30
  %57 = load i64, i64* @NGX_OK, align 8
  store i64 %57, i64* %4, align 8
  br label %90

58:                                               ; preds = %38
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @NGX_DECLINED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* @NGX_OK, align 8
  store i64 %63, i64* %4, align 8
  br label %90

64:                                               ; preds = %58
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @NGX_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %72, align 8
  %73 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = call i32 @ngx_log_debug1(i32 %73, i32 %78, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %80)
  br label %82

82:                                               ; preds = %68, %64
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %4, align 8
  br label %90

84:                                               ; preds = %19
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %88, align 8
  %89 = load i64, i64* @NGX_OK, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %84, %82, %62, %56, %17
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local %struct.TYPE_15__* @ngx_list_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ngx_strcasestrn(i32, i8*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
