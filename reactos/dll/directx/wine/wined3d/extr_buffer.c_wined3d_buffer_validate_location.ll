; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_wined3d_buffer_validate_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_wined3d_buffer_validate_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"buffer %p, location %s.\0A\00", align 1
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"New locations flags are %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_buffer*, i32)* @wined3d_buffer_validate_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_buffer_validate_location(%struct.wined3d_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @wined3d_debug_location(i32 %6)
  %8 = call i32 (i8*, %struct.wined3d_buffer*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.wined3d_buffer* %5, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %15 = call i32 @buffer_clear_dirty_areas(%struct.wined3d_buffer* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wined3d_debug_location(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.wined3d_buffer*
  %28 = call i32 (i8*, %struct.wined3d_buffer*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_buffer* %27)
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_buffer*, ...) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @buffer_clear_dirty_areas(%struct.wined3d_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
