; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_stream_source_freq.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_stream_source_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wined3d_stream_state* }
%struct.wined3d_stream_state = type { i32, i32 }
%struct.wined3d_cs_set_stream_source_freq = type { i64, i32, i32 }

@STATE_STREAMSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_stream_source_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_stream_source_freq(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_set_stream_source_freq*, align 8
  %6 = alloca %struct.wined3d_stream_state*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wined3d_cs_set_stream_source_freq*
  store %struct.wined3d_cs_set_stream_source_freq* %8, %struct.wined3d_cs_set_stream_source_freq** %5, align 8
  %9 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %11, align 8
  %13 = load %struct.wined3d_cs_set_stream_source_freq*, %struct.wined3d_cs_set_stream_source_freq** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_cs_set_stream_source_freq, %struct.wined3d_cs_set_stream_source_freq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %12, i64 %15
  store %struct.wined3d_stream_state* %16, %struct.wined3d_stream_state** %6, align 8
  %17 = load %struct.wined3d_cs_set_stream_source_freq*, %struct.wined3d_cs_set_stream_source_freq** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_cs_set_stream_source_freq, %struct.wined3d_cs_set_stream_source_freq* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %6, align 8
  %21 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wined3d_cs_set_stream_source_freq*, %struct.wined3d_cs_set_stream_source_freq** %5, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs_set_stream_source_freq, %struct.wined3d_cs_set_stream_source_freq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %6, align 8
  %26 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @STATE_STREAMSRC, align 4
  %31 = call i32 @device_invalidate_state(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @device_invalidate_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
