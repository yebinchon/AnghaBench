; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_wined3d_buffer_evict_sysmem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_wined3d_buffer_evict_sysmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { i32, i32 }

@WINED3D_BUFFER_PIN_SYSMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Not evicting system memory for buffer %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Evicting system memory for buffer %p.\0A\00", align 1
@WINED3D_LOCATION_SYSMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_buffer*)* @wined3d_buffer_evict_sysmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_buffer_evict_sysmem(%struct.wined3d_buffer* %0) #0 {
  %2 = alloca %struct.wined3d_buffer*, align 8
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %2, align 8
  %3 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %2, align 8
  %4 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @WINED3D_BUFFER_PIN_SYSMEM, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %2, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.wined3d_buffer* %10)
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %2, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_buffer* %13)
  %15 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %2, align 8
  %16 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %17 = call i32 @wined3d_buffer_invalidate_location(%struct.wined3d_buffer* %15, i32 %16)
  %18 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %18, i32 0, i32 1
  %20 = call i32 @wined3d_resource_free_sysmem(i32* %19)
  br label %21

21:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_buffer*) #1

declare dso_local i32 @wined3d_buffer_invalidate_location(%struct.wined3d_buffer*, i32) #1

declare dso_local i32 @wined3d_resource_free_sysmem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
