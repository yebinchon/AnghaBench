; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_return_module.c_ngx_stream_return_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_return_module.c_ngx_stream_return_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_29__*, i32, %struct.TYPE_21__* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_29__*)* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32, i64, i64, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_28__* }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"returning text\00", align 1
@ngx_stream_return_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"stream return text: \22%V\22\00", align 1
@NGX_STREAM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @ngx_stream_return_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_stream_return_handler(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_26__, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %10, %struct.TYPE_27__** %5, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %16 = load i32, i32* @ngx_stream_return_module, align 4
  %17 = call %struct.TYPE_24__* @ngx_stream_get_module_srv_conf(%struct.TYPE_22__* %15, i32 %16)
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %7, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = call i64 @ngx_stream_complex_value(%struct.TYPE_22__* %18, i32* %20, %struct.TYPE_26__* %3)
  %22 = load i64, i64* @NGX_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %26 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %27 = call i32 @ngx_stream_finalize_session(%struct.TYPE_22__* %25, i32 %26)
  br label %115

28:                                               ; preds = %1
  %29 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = call i32 @ngx_log_debug1(i32 %29, %struct.TYPE_21__* %32, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_26__* %3)
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %39 = load i32, i32* @NGX_STREAM_OK, align 4
  %40 = call i32 @ngx_stream_finalize_session(%struct.TYPE_22__* %38, i32 %39)
  br label %115

41:                                               ; preds = %28
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_25__* @ngx_pcalloc(i32 %44, i32 8)
  store %struct.TYPE_25__* %45, %struct.TYPE_25__** %6, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %47 = icmp eq %struct.TYPE_25__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %50 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %51 = call i32 @ngx_stream_finalize_session(%struct.TYPE_22__* %49, i32 %50)
  br label %115

52:                                               ; preds = %41
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %55 = load i32, i32* @ngx_stream_return_module, align 4
  %56 = call i32 @ngx_stream_set_ctx(%struct.TYPE_22__* %53, %struct.TYPE_25__* %54, i32 %55)
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_28__* @ngx_calloc_buf(i32 %59)
  store %struct.TYPE_28__* %60, %struct.TYPE_28__** %4, align 8
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %62 = icmp eq %struct.TYPE_28__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %65 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %66 = call i32 @ngx_stream_finalize_session(%struct.TYPE_22__* %64, i32 %65)
  br label %115

67:                                               ; preds = %52
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %75, %77
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 3
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.TYPE_23__* @ngx_alloc_chain_link(i32 %85)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  store %struct.TYPE_23__* %86, %struct.TYPE_23__** %88, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = icmp eq %struct.TYPE_23__* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %67
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %95 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %96 = call i32 @ngx_stream_finalize_session(%struct.TYPE_22__* %94, i32 %95)
  br label %115

97:                                               ; preds = %67
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %102, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 0
  store i32 (%struct.TYPE_29__*)* @ngx_stream_return_write_handler, i32 (%struct.TYPE_29__*)** %110, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %112, align 8
  %114 = call i32 @ngx_stream_return_write_handler(%struct.TYPE_29__* %113)
  br label %115

115:                                              ; preds = %97, %93, %63, %48, %37, %24
  ret void
}

declare dso_local %struct.TYPE_24__* @ngx_stream_get_module_srv_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_stream_complex_value(%struct.TYPE_22__*, i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_stream_finalize_session(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_stream_set_ctx(%struct.TYPE_22__*, %struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_calloc_buf(i32) #1

declare dso_local %struct.TYPE_23__* @ngx_alloc_chain_link(i32) #1

declare dso_local i32 @ngx_stream_return_write_handler(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
