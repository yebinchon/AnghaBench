; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_init.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_24__** }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@ngx_rtmp_record_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_INVALID_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*)* @ngx_rtmp_record_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_record_init(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__**, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = load i32, i32* @ngx_rtmp_record_module, align 4
  %11 = call %struct.TYPE_23__* @ngx_rtmp_get_module_ctx(%struct.TYPE_21__* %9, i32 %10)
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %7, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %13 = icmp ne %struct.TYPE_23__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @NGX_OK, align 8
  store i64 %15, i64* %2, align 8
  br label %106

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = load i32, i32* @ngx_rtmp_record_module, align 4
  %19 = call %struct.TYPE_24__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_21__* %17, i32 %18)
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %4, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %21 = icmp eq %struct.TYPE_24__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16
  %29 = load i64, i64* @NGX_OK, align 8
  store i64 %29, i64* %2, align 8
  br label %106

30:                                               ; preds = %22
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_23__* @ngx_pcalloc(i32 %35, i32 4)
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %7, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = icmp eq %struct.TYPE_23__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* @NGX_ERROR, align 8
  store i64 %40, i64* %2, align 8
  br label %106

41:                                               ; preds = %30
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %44 = load i32, i32* @ngx_rtmp_record_module, align 4
  %45 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_21__* %42, %struct.TYPE_23__* %43, i32 %44)
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @ngx_array_init(i32* %47, i32 %52, i64 %56, i32 16)
  %58 = load i64, i64* @NGX_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %41
  %61 = load i64, i64* @NGX_ERROR, align 8
  store i64 %61, i64* %2, align 8
  br label %106

62:                                               ; preds = %41
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %65, align 8
  store %struct.TYPE_24__** %66, %struct.TYPE_24__*** %5, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_22__* @ngx_array_push_n(i32* %68, i64 %72)
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %6, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %75 = icmp eq %struct.TYPE_22__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i64, i64* @NGX_ERROR, align 8
  store i64 %77, i64* %2, align 8
  br label %106

78:                                               ; preds = %62
  store i64 0, i64* %8, align 8
  br label %79

79:                                               ; preds = %97, %78
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %79
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = call i32 @ngx_memzero(%struct.TYPE_22__* %87, i32 16)
  %89 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  store %struct.TYPE_24__* %90, %struct.TYPE_24__** %92, align 8
  %93 = load i32, i32* @NGX_INVALID_FILE, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %86
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %8, align 8
  %100 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %100, i32 1
  store %struct.TYPE_24__** %101, %struct.TYPE_24__*** %5, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 1
  store %struct.TYPE_22__* %103, %struct.TYPE_22__** %6, align 8
  br label %79

104:                                              ; preds = %79
  %105 = load i64, i64* @NGX_OK, align 8
  store i64 %105, i64* %2, align 8
  br label %106

106:                                              ; preds = %104, %76, %60, %39, %28, %14
  %107 = load i64, i64* %2, align 8
  ret i64 %107
}

declare dso_local %struct.TYPE_23__* @ngx_rtmp_get_module_ctx(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_21__*, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i64, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_array_push_n(i32*, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
