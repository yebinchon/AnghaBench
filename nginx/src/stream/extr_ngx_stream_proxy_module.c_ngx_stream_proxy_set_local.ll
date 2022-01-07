; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_set_local.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_set_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_22__*, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid local address \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_19__*)* @ngx_stream_proxy_set_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_proxy_set_local(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %12 = icmp eq %struct.TYPE_19__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %16, align 8
  %17 = load i64, i64* @NGX_OK, align 8
  store i64 %17, i64* %4, align 8
  br label %98

18:                                               ; preds = %3
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %29, align 8
  %30 = load i64, i64* @NGX_OK, align 8
  store i64 %30, i64* %4, align 8
  br label %98

31:                                               ; preds = %18
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @ngx_stream_complex_value(%struct.TYPE_20__* %32, i32* %35, %struct.TYPE_21__* %9)
  %37 = load i64, i64* @NGX_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* @NGX_ERROR, align 8
  store i64 %40, i64* %4, align 8
  br label %98

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @NGX_OK, align 8
  store i64 %46, i64* %4, align 8
  br label %98

47:                                               ; preds = %41
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_22__* @ngx_palloc(i32 %52, i32 16)
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %10, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %55 = icmp eq %struct.TYPE_22__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i64, i64* @NGX_ERROR, align 8
  store i64 %57, i64* %4, align 8
  br label %98

58:                                               ; preds = %47
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @ngx_parse_addr_port(i32 %63, %struct.TYPE_22__* %64, i32 %66, i64 %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @NGX_ERROR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i64, i64* @NGX_ERROR, align 8
  store i64 %74, i64* %4, align 8
  br label %98

75:                                               ; preds = %58
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @NGX_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, i32* @NGX_LOG_ERR, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ngx_log_error(i32 %80, i32 %85, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %9)
  %87 = load i64, i64* @NGX_OK, align 8
  store i64 %87, i64* %4, align 8
  br label %98

88:                                               ; preds = %75
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = bitcast %struct.TYPE_21__* %90 to i8*
  %92 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  store %struct.TYPE_22__* %93, %struct.TYPE_22__** %96, align 8
  %97 = load i64, i64* @NGX_OK, align 8
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %88, %79, %73, %56, %45, %39, %23, %13
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i64 @ngx_stream_complex_value(%struct.TYPE_20__*, i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_parse_addr_port(i32, %struct.TYPE_22__*, i32, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_21__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
