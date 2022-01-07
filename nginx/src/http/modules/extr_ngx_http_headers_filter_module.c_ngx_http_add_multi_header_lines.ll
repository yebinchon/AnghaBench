; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_add_multi_header_lines.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_add_multi_header_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_16__*)* @ngx_http_add_multi_header_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_add_multi_header_lines(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__**, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @NGX_OK, align 8
  store i64 %16, i64* %4, align 8
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = bitcast %struct.TYPE_14__* %19 to i8*
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = bitcast i8* %25 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %8, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %17
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ngx_array_init(%struct.TYPE_19__* %32, i32 %35, i32 1, i32 8)
  %37 = load i64, i64* @NGX_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* @NGX_ERROR, align 8
  store i64 %40, i64* %4, align 8
  br label %74

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %17
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = call %struct.TYPE_15__* @ngx_list_push(i32* %45)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %9, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %48 = icmp eq %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i64, i64* @NGX_ERROR, align 8
  store i64 %50, i64* %4, align 8
  br label %74

51:                                               ; preds = %42
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = bitcast %struct.TYPE_16__* %60 to i8*
  %63 = bitcast %struct.TYPE_16__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 8, i1 false)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = call %struct.TYPE_15__** @ngx_array_push(%struct.TYPE_19__* %64)
  store %struct.TYPE_15__** %65, %struct.TYPE_15__*** %10, align 8
  %66 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  %67 = icmp eq %struct.TYPE_15__** %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i64, i64* @NGX_ERROR, align 8
  store i64 %69, i64* %4, align 8
  br label %74

70:                                               ; preds = %51
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %72, align 8
  %73 = load i64, i64* @NGX_OK, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %70, %68, %49, %39, %15
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @ngx_list_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_15__** @ngx_array_push(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
