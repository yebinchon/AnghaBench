; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_handle_connection.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_handle_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32*, i64, i32*, i32*, %struct.TYPE_17__, %struct.TYPE_16__*, i64, %struct.TYPE_20__*, i64, i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__*, i64, i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@ngx_http_v2_module = common dso_local global i32 0, align 4
@ngx_http_empty_handler = common dso_local global i32 0, align 4
@ngx_http_v2_idle_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_http_v2_handle_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_v2_handle_connection(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 11
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 9
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %10, %1
  br label %131

21:                                               ; preds = %15
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %4, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = call i32 @ngx_http_close_connection(%struct.TYPE_20__* %30)
  br label %131

32:                                               ; preds = %21
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %41 = call i64 @ngx_http_v2_send_output_queue(%struct.TYPE_19__* %40)
  store i64 %41, i64* %3, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @NGX_ERROR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = call i32 @ngx_http_close_connection(%struct.TYPE_20__* %48)
  br label %131

50:                                               ; preds = %37
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @NGX_AGAIN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %131

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = call i32 @ngx_http_close_connection(%struct.TYPE_20__* %62)
  br label %131

64:                                               ; preds = %56
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ngx_http_v2_module, align 4
  %71 = call %struct.TYPE_18__* @ngx_http_get_module_srv_conf(i32 %69, i32 %70)
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %5, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %64
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ngx_add_timer(%struct.TYPE_15__* %80, i32 %83)
  br label %131

85:                                               ; preds = %64
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @ngx_destroy_pool(i32* %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 4
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = call i32 @ngx_reusable_connection(%struct.TYPE_20__* %100, i32 1)
  %102 = load i32, i32* @ngx_http_empty_handler, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  store i32 %102, i32* %106, align 8
  %107 = load i32, i32* @ngx_http_v2_idle_handler, align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %85
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = call i32 @ngx_del_timer(%struct.TYPE_14__* %121)
  br label %123

123:                                              ; preds = %118, %85
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ngx_add_timer(%struct.TYPE_15__* %126, i32 %129)
  br label %131

131:                                              ; preds = %123, %77, %61, %54, %47, %29, %20
  ret void
}

declare dso_local i32 @ngx_http_close_connection(%struct.TYPE_20__*) #1

declare dso_local i64 @ngx_http_v2_send_output_queue(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_srv_conf(i32, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i32 @ngx_reusable_connection(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
