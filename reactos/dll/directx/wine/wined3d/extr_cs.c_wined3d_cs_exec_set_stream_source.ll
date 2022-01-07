; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_stream_source.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_stream_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.wined3d_stream_state* }
%struct.wined3d_stream_state = type { i32, i32, %struct.wined3d_buffer* }
%struct.wined3d_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_cs_set_stream_source = type { i64, %struct.wined3d_buffer*, i32, i32 }

@STATE_STREAMSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_stream_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_stream_source(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_set_stream_source*, align 8
  %6 = alloca %struct.wined3d_stream_state*, align 8
  %7 = alloca %struct.wined3d_buffer*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wined3d_cs_set_stream_source*
  store %struct.wined3d_cs_set_stream_source* %9, %struct.wined3d_cs_set_stream_source** %5, align 8
  %10 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %12, align 8
  %14 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %5, align 8
  %15 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %13, i64 %16
  store %struct.wined3d_stream_state* %17, %struct.wined3d_stream_state** %6, align 8
  %18 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %6, align 8
  %19 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %18, i32 0, i32 2
  %20 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %19, align 8
  store %struct.wined3d_buffer* %20, %struct.wined3d_buffer** %7, align 8
  %21 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %5, align 8
  %22 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %21, i32 0, i32 1
  %23 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %22, align 8
  %24 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %6, align 8
  %25 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %24, i32 0, i32 2
  store %struct.wined3d_buffer* %23, %struct.wined3d_buffer** %25, align 8
  %26 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %5, align 8
  %27 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %6, align 8
  %30 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %5, align 8
  %32 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %6, align 8
  %35 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %5, align 8
  %37 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %36, i32 0, i32 1
  %38 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %37, align 8
  %39 = icmp ne %struct.wined3d_buffer* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %5, align 8
  %42 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %41, i32 0, i32 1
  %43 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %42, align 8
  %44 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @InterlockedIncrement(i32* %45)
  br label %47

47:                                               ; preds = %40, %2
  %48 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %7, align 8
  %49 = icmp ne %struct.wined3d_buffer* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @InterlockedDecrement(i32* %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %57 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @STATE_STREAMSRC, align 4
  %60 = call i32 @device_invalidate_state(i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @device_invalidate_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
