; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_open_url.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_open_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { i32, i32 }
%struct.demuxer_params = type { i32, i32, %struct.stream*, %struct.TYPE_2__, i32 }
%struct.stream = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mp_cancel = type { i32 }
%struct.mpv_global = type { i32 }

@STREAM_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.demuxer* @demux_open_url(i8* %0, %struct.demuxer_params* %1, %struct.mp_cancel* %2, %struct.mpv_global* %3) #0 {
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.demuxer_params*, align 8
  %8 = alloca %struct.mp_cancel*, align 8
  %9 = alloca %struct.mpv_global*, align 8
  %10 = alloca %struct.demuxer_params, align 8
  %11 = alloca %struct.mp_cancel*, align 8
  %12 = alloca %struct.stream*, align 8
  %13 = alloca %struct.demuxer*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.demuxer_params* %1, %struct.demuxer_params** %7, align 8
  store %struct.mp_cancel* %2, %struct.mp_cancel** %8, align 8
  store %struct.mpv_global* %3, %struct.mpv_global** %9, align 8
  %14 = bitcast %struct.demuxer_params* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %16 = icmp ne %struct.demuxer_params* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.demuxer_params* %10, %struct.demuxer_params** %7, align 8
  br label %18

18:                                               ; preds = %17, %4
  %19 = call %struct.mp_cancel* @mp_cancel_new(i32* null)
  store %struct.mp_cancel* %19, %struct.mp_cancel** %11, align 8
  %20 = load %struct.mp_cancel*, %struct.mp_cancel** %8, align 8
  %21 = icmp ne %struct.mp_cancel* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.mp_cancel*, %struct.mp_cancel** %11, align 8
  %24 = load %struct.mp_cancel*, %struct.mp_cancel** %8, align 8
  %25 = call i32 @mp_cancel_set_parent(%struct.mp_cancel* %23, %struct.mp_cancel* %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %28 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %27, i32 0, i32 2
  %29 = load %struct.stream*, %struct.stream** %28, align 8
  store %struct.stream* %29, %struct.stream** %12, align 8
  %30 = load %struct.stream*, %struct.stream** %12, align 8
  %31 = icmp ne %struct.stream* %30, null
  br i1 %31, label %60, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @STREAM_READ, align 4
  %35 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %36 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %34, %37
  %39 = load %struct.mp_cancel*, %struct.mp_cancel** %11, align 8
  %40 = load %struct.mpv_global*, %struct.mpv_global** %9, align 8
  %41 = call %struct.stream* @stream_create(i8* %33, i32 %38, %struct.mp_cancel* %39, %struct.mpv_global* %40)
  store %struct.stream* %41, %struct.stream** %12, align 8
  %42 = load %struct.stream*, %struct.stream** %12, align 8
  %43 = icmp ne %struct.stream* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %32
  %45 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %46 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.mpv_global*, %struct.mpv_global** %9, align 8
  %52 = load %struct.mp_cancel*, %struct.mp_cancel** %11, align 8
  %53 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %54 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %53, i32 0, i32 3
  %55 = load %struct.stream*, %struct.stream** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.stream* @create_webshit_concat_stream(%struct.mpv_global* %51, %struct.mp_cancel* %52, i64 %57, %struct.stream* %55)
  store %struct.stream* %58, %struct.stream** %12, align 8
  br label %59

59:                                               ; preds = %50, %44, %32
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.stream*, %struct.stream** %12, align 8
  %62 = icmp ne %struct.stream* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.mp_cancel*, %struct.mp_cancel** %11, align 8
  %65 = call i32 @talloc_free(%struct.mp_cancel* %64)
  store %struct.demuxer* null, %struct.demuxer** %5, align 8
  br label %99

66:                                               ; preds = %60
  %67 = load %struct.stream*, %struct.stream** %12, align 8
  %68 = load %struct.mp_cancel*, %struct.mp_cancel** %11, align 8
  %69 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %70 = load %struct.mpv_global*, %struct.mpv_global** %9, align 8
  %71 = call %struct.demuxer* @demux_open(%struct.stream* %67, %struct.mp_cancel* %68, %struct.demuxer_params* %69, %struct.mpv_global* %70)
  store %struct.demuxer* %71, %struct.demuxer** %13, align 8
  %72 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %73 = icmp ne %struct.demuxer* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %76 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mp_cancel*, %struct.mp_cancel** %11, align 8
  %79 = call i32 @talloc_steal(i32 %77, %struct.mp_cancel* %78)
  %80 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %81 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @assert(i32 %82)
  br label %97

84:                                               ; preds = %66
  %85 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %86 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %88 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %87, i32 0, i32 2
  %89 = load %struct.stream*, %struct.stream** %88, align 8
  %90 = icmp ne %struct.stream* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load %struct.stream*, %struct.stream** %12, align 8
  %93 = call i32 @free_stream(%struct.stream* %92)
  br label %94

94:                                               ; preds = %91, %84
  %95 = load %struct.mp_cancel*, %struct.mp_cancel** %11, align 8
  %96 = call i32 @talloc_free(%struct.mp_cancel* %95)
  br label %97

97:                                               ; preds = %94, %74
  %98 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  store %struct.demuxer* %98, %struct.demuxer** %5, align 8
  br label %99

99:                                               ; preds = %97, %63
  %100 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  ret %struct.demuxer* %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mp_cancel* @mp_cancel_new(i32*) #2

declare dso_local i32 @mp_cancel_set_parent(%struct.mp_cancel*, %struct.mp_cancel*) #2

declare dso_local %struct.stream* @stream_create(i8*, i32, %struct.mp_cancel*, %struct.mpv_global*) #2

declare dso_local %struct.stream* @create_webshit_concat_stream(%struct.mpv_global*, %struct.mp_cancel*, i64, %struct.stream*) #2

declare dso_local i32 @talloc_free(%struct.mp_cancel*) #2

declare dso_local %struct.demuxer* @demux_open(%struct.stream*, %struct.mp_cancel*, %struct.demuxer_params*, %struct.mpv_global*) #2

declare dso_local i32 @talloc_steal(i32, %struct.mp_cancel*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @free_stream(%struct.stream*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
