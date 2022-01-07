; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_create_webshit_concat_stream.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_create_webshit_concat_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32 }
%struct.mp_cancel = type { i32 }
%struct.stream = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stream* (%struct.mpv_global*, %struct.mp_cancel*, i64, %struct.stream*)* @create_webshit_concat_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stream* @create_webshit_concat_stream(%struct.mpv_global* %0, %struct.mp_cancel* %1, i64 %2, %struct.stream* %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca %struct.mpv_global*, align 8
  %7 = alloca %struct.mp_cancel*, align 8
  %8 = alloca %struct.stream*, align 8
  %9 = alloca %struct.stream*, align 8
  %10 = alloca [2 x %struct.stream*], align 16
  %11 = alloca %struct.stream*, align 8
  %12 = bitcast %struct.TYPE_3__* %5 to i64*
  store i64 %2, i64* %12, align 4
  store %struct.mpv_global* %0, %struct.mpv_global** %6, align 8
  store %struct.mp_cancel* %1, %struct.mp_cancel** %7, align 8
  store %struct.stream* %3, %struct.stream** %8, align 8
  %13 = load %struct.mpv_global*, %struct.mpv_global** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.stream* @stream_memory_open(%struct.mpv_global* %13, i32 %15, i32 %17)
  store %struct.stream* %18, %struct.stream** %9, align 8
  %19 = load %struct.stream*, %struct.stream** %9, align 8
  %20 = call i32 @assert(%struct.stream* %19)
  %21 = getelementptr inbounds [2 x %struct.stream*], [2 x %struct.stream*]* %10, i64 0, i64 0
  %22 = load %struct.stream*, %struct.stream** %9, align 8
  store %struct.stream* %22, %struct.stream** %21, align 8
  %23 = getelementptr inbounds %struct.stream*, %struct.stream** %21, i64 1
  %24 = load %struct.stream*, %struct.stream** %8, align 8
  store %struct.stream* %24, %struct.stream** %23, align 8
  %25 = load %struct.mpv_global*, %struct.mpv_global** %6, align 8
  %26 = load %struct.mp_cancel*, %struct.mp_cancel** %7, align 8
  %27 = getelementptr inbounds [2 x %struct.stream*], [2 x %struct.stream*]* %10, i64 0, i64 0
  %28 = call %struct.stream* @stream_concat_open(%struct.mpv_global* %25, %struct.mp_cancel* %26, %struct.stream** %27, i32 2)
  store %struct.stream* %28, %struct.stream** %11, align 8
  %29 = load %struct.stream*, %struct.stream** %11, align 8
  %30 = icmp ne %struct.stream* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %4
  %32 = load %struct.stream*, %struct.stream** %9, align 8
  %33 = call i32 @free_stream(%struct.stream* %32)
  %34 = load %struct.stream*, %struct.stream** %8, align 8
  %35 = call i32 @free_stream(%struct.stream* %34)
  br label %36

36:                                               ; preds = %31, %4
  %37 = load %struct.stream*, %struct.stream** %11, align 8
  ret %struct.stream* %37
}

declare dso_local %struct.stream* @stream_memory_open(%struct.mpv_global*, i32, i32) #1

declare dso_local i32 @assert(%struct.stream*) #1

declare dso_local %struct.stream* @stream_concat_open(%struct.mpv_global*, %struct.mp_cancel*, %struct.stream**, i32) #1

declare dso_local i32 @free_stream(%struct.stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
