; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_add_address.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_add_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__, i32*, i32*, i64, i32*, i32*, %struct.TYPE_17__, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i64, i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*, %struct.TYPE_20__*, %struct.TYPE_19__*)* @ngx_http_add_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_add_address(%struct.TYPE_22__* %0, i32* %1, %struct.TYPE_20__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ngx_array_init(%struct.TYPE_16__* %18, i32 %21, i32 4, i32 88)
  %23 = load i64, i64* @NGX_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @NGX_ERROR, align 4
  store i32 %26, i32* %5, align 4
  br label %62

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = call %struct.TYPE_21__* @ngx_array_push(%struct.TYPE_16__* %30)
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %10, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = icmp eq %struct.TYPE_21__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @NGX_ERROR, align 4
  store i32 %35, i32* %5, align 4
  br label %62

36:                                               ; preds = %28
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %40 = bitcast %struct.TYPE_19__* %38 to i8*
  %41 = bitcast %struct.TYPE_19__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 5
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %61 = call i32 @ngx_http_add_server(%struct.TYPE_22__* %58, i32* %59, %struct.TYPE_21__* %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %36, %34, %25
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_array_push(%struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_http_add_server(%struct.TYPE_22__*, i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
