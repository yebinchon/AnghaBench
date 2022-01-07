; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_load_stream_output_buffers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_load_stream_output_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_buffer* }
%struct.wined3d_buffer = type { i32 }

@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*)* @context_load_stream_output_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_load_stream_output_buffers(%struct.wined3d_context* %0, %struct.wined3d_state* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_buffer*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %11)
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  %15 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %21, align 8
  store %struct.wined3d_buffer* %22, %struct.wined3d_buffer** %6, align 8
  %23 = icmp ne %struct.wined3d_buffer* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %34

25:                                               ; preds = %14
  %26 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %27 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %28 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %29 = call i32 @wined3d_buffer_load(%struct.wined3d_buffer* %26, %struct.wined3d_context* %27, %struct.wined3d_state* %28)
  %30 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %31 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %32 = xor i32 %31, -1
  %33 = call i32 @wined3d_buffer_invalidate_location(%struct.wined3d_buffer* %30, i32 %32)
  br label %34

34:                                               ; preds = %25, %24
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %7

37:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @wined3d_buffer_load(%struct.wined3d_buffer*, %struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @wined3d_buffer_invalidate_location(%struct.wined3d_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
