; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_init_graph.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_init_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lavfi = type { i32, i32, i32, i32, %struct.lavfi_pad**, i32, %struct.TYPE_8__* }
%struct.lavfi_pad = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }
%struct.mp_stream_info = type { i64 }
%struct.mp_hwdec_ctx = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"failed to configure the filter graph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lavfi*)* @init_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_graph(%struct.lavfi* %0) #0 {
  %2 = alloca %struct.lavfi*, align 8
  %3 = alloca %struct.mp_stream_info*, align 8
  %4 = alloca %struct.mp_hwdec_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lavfi_pad*, align 8
  store %struct.lavfi* %0, %struct.lavfi** %2, align 8
  %9 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %10 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %17 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %16, i32 0, i32 6
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %22 = call i32 @precreate_graph(%struct.lavfi* %21, i32 0)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %25 = call i64 @init_pads(%struct.lavfi* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %138

27:                                               ; preds = %23
  %28 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %29 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.mp_stream_info* @mp_filter_find_stream_info(i32 %30)
  store %struct.mp_stream_info* %31, %struct.mp_stream_info** %3, align 8
  %32 = load %struct.mp_stream_info*, %struct.mp_stream_info** %3, align 8
  %33 = icmp ne %struct.mp_stream_info* %32, null
  br i1 %33, label %34, label %81

34:                                               ; preds = %27
  %35 = load %struct.mp_stream_info*, %struct.mp_stream_info** %3, align 8
  %36 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %34
  %40 = load %struct.mp_stream_info*, %struct.mp_stream_info** %3, align 8
  %41 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.mp_hwdec_ctx* @hwdec_devices_get_first(i64 %42)
  store %struct.mp_hwdec_ctx* %43, %struct.mp_hwdec_ctx** %4, align 8
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %77, %39
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %47 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %46, i32 0, i32 6
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %44
  %53 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %54 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %53, i32 0, i32 6
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %57, i64 %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %6, align 8
  %62 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %4, align 8
  %63 = icmp ne %struct.mp_hwdec_ctx* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %52
  %65 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @av_buffer_ref(i64 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %64, %52
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %44

80:                                               ; preds = %44
  br label %81

81:                                               ; preds = %80, %34, %27
  %82 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %83 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %82, i32 0, i32 6
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = call i64 @avfilter_graph_config(%struct.TYPE_8__* %84, i32* null)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %89 = call i32 @MP_FATAL(%struct.lavfi* %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %91 = call i32 @free_graph(%struct.lavfi* %90)
  %92 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %93 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %95 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @mp_filter_internal_mark_failed(i32 %96)
  br label %138

98:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %124, %98
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %102 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %99
  %106 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %107 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %106, i32 0, i32 4
  %108 = load %struct.lavfi_pad**, %struct.lavfi_pad*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.lavfi_pad*, %struct.lavfi_pad** %108, i64 %110
  %112 = load %struct.lavfi_pad*, %struct.lavfi_pad** %111, align 8
  store %struct.lavfi_pad* %112, %struct.lavfi_pad** %8, align 8
  %113 = load %struct.lavfi_pad*, %struct.lavfi_pad** %8, align 8
  %114 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %117, i64 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.lavfi_pad*, %struct.lavfi_pad** %8, align 8
  %123 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %105
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %99

127:                                              ; preds = %99
  %128 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %129 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %131 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %136 = call i32 @dump_graph(%struct.lavfi* %135)
  br label %137

137:                                              ; preds = %134, %127
  br label %138

138:                                              ; preds = %87, %137, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @precreate_graph(%struct.lavfi*, i32) #1

declare dso_local i64 @init_pads(%struct.lavfi*) #1

declare dso_local %struct.mp_stream_info* @mp_filter_find_stream_info(i32) #1

declare dso_local %struct.mp_hwdec_ctx* @hwdec_devices_get_first(i64) #1

declare dso_local i32 @av_buffer_ref(i64) #1

declare dso_local i64 @avfilter_graph_config(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @MP_FATAL(%struct.lavfi*, i8*) #1

declare dso_local i32 @free_graph(%struct.lavfi*) #1

declare dso_local i32 @mp_filter_internal_mark_failed(i32) #1

declare dso_local i32 @dump_graph(%struct.lavfi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
