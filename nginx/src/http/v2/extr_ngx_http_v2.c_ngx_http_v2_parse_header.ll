; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_parse_header.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_19__*, i32, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_27__*, %struct.TYPE_24__*, i32)*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ABORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_25__*)* @ngx_http_v2_parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_v2_parse_header(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = call %struct.TYPE_24__* @ngx_list_push(i32* %12)
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %8, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %15 = icmp eq %struct.TYPE_24__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @NGX_ERROR, align 8
  store i64 %17, i64* %4, align 8
  br label %117

18:                                               ; preds = %3
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = icmp eq %struct.TYPE_19__* %41, null
  br i1 %42, label %43, label %80

43:                                               ; preds = %18
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ngx_hash_key(i32 %47, i32 %51)
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %56 = load i32, i32* @ngx_http_core_module, align 4
  %57 = call %struct.TYPE_28__* @ngx_http_get_module_main_conf(%struct.TYPE_27__* %55, i32 %56)
  store %struct.TYPE_28__* %57, %struct.TYPE_28__** %9, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_19__* @ngx_hash_find(i32* %59, i32 %62, i32 %65, i32 %69)
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %72, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = icmp eq %struct.TYPE_19__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %43
  %78 = load i64, i64* @NGX_ERROR, align 8
  store i64 %78, i64* %4, align 8
  br label %117

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79, %18
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64 (%struct.TYPE_27__*, %struct.TYPE_24__*, i32)*, i64 (%struct.TYPE_27__*, %struct.TYPE_24__*, i32)** %101, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 %102(%struct.TYPE_27__* %103, %struct.TYPE_24__* %104, i32 %109)
  %111 = load i64, i64* @NGX_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %80
  %114 = load i64, i64* @NGX_ABORT, align 8
  store i64 %114, i64* %4, align 8
  br label %117

115:                                              ; preds = %80
  %116 = load i64, i64* @NGX_OK, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %115, %113, %77, %16
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local %struct.TYPE_24__* @ngx_list_push(i32*) #1

declare dso_local i32 @ngx_hash_key(i32, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_main_conf(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_hash_find(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
