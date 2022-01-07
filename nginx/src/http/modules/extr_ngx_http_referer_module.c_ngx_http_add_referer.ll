; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_referer_module.c_ngx_http_add_referer.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_referer_module.c_ngx_http_add_referer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@NGX_HTTP_REFERER_NO_URI_PART = common dso_local global %struct.TYPE_12__* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HASH_WILDCARD_KEY = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid hostname or wildcard \22%V\22\00", align 1
@NGX_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"conflicting parameter \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*)* @ngx_http_add_referer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_add_referer(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @NGX_HTTP_REFERER_NO_URI_PART, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %11, align 8
  br label %35

21:                                               ; preds = %14
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_12__* @ngx_palloc(i32 %24, i32 8)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %11, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = icmp eq %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @NGX_ERROR, align 8
  store i64 %29, i64* %5, align 8
  br label %66

30:                                               ; preds = %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = bitcast %struct.TYPE_12__* %31 to i8*
  %34 = bitcast %struct.TYPE_12__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  br label %35

35:                                               ; preds = %30, %19
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %39 = load i32, i32* @NGX_HASH_WILDCARD_KEY, align 4
  %40 = call i64 @ngx_hash_add_key(i32* %36, %struct.TYPE_12__* %37, %struct.TYPE_12__* %38, i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @NGX_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* @NGX_OK, align 8
  store i64 %45, i64* %5, align 8
  br label %66

46:                                               ; preds = %35
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @NGX_DECLINED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* @NGX_LOG_EMERG, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = call i32 @ngx_conf_log_error(i32 %51, %struct.TYPE_13__* %52, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @NGX_BUSY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @NGX_LOG_EMERG, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = call i32 @ngx_conf_log_error(i32 %60, %struct.TYPE_13__* %61, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %62)
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i64, i64* @NGX_ERROR, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %64, %44, %28
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local %struct.TYPE_12__* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_hash_add_key(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
