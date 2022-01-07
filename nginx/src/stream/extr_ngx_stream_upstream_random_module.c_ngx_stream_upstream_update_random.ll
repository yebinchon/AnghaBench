; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream_random_module.c_ngx_stream_upstream_update_random.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream_random_module.c_ngx_stream_upstream_update_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }

@ngx_stream_upstream_random_module = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_13__* null, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*)* @ngx_stream_upstream_update_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_upstream_update_random(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = load i32, i32* @ngx_stream_upstream_random_module, align 4
  %15 = call %struct.TYPE_18__* @ngx_stream_conf_upstream_srv_conf(%struct.TYPE_15__* %13, i32 %14)
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %12, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 16
  store i64 %24, i64* %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call %struct.TYPE_19__* @ngx_palloc(i32* %28, i64 %29)
  br label %37

31:                                               ; preds = %2
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_cycle, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_19__* @ngx_alloc(i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi %struct.TYPE_19__* [ %30, %27 ], [ %36, %31 ]
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %11, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = icmp eq %struct.TYPE_19__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @NGX_ERROR, align 4
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %37
  store i64 0, i64* %8, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %9, align 8
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %66, %43
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %49 = icmp ne %struct.TYPE_17__* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %50
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %47

72:                                               ; preds = %47
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  store %struct.TYPE_19__* %73, %struct.TYPE_19__** %75, align 8
  %76 = load i32, i32* @NGX_OK, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %41
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_18__* @ngx_stream_conf_upstream_srv_conf(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_palloc(i32*, i64) #1

declare dso_local %struct.TYPE_19__* @ngx_alloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
