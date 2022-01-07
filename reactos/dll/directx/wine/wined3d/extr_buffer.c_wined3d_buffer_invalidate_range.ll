; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_wined3d_buffer_invalidate_range.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_wined3d_buffer_invalidate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"buffer %p, location %s, offset %u, size %u.\0A\00", align 1
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"New locations flags are %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Buffer %p does not have any up to date location.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_buffer*, i32, i32, i32)* @wined3d_buffer_invalidate_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_buffer_invalidate_range(%struct.wined3d_buffer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wined3d_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @wined3d_debug_location(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 (i8*, %struct.wined3d_buffer*, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.wined3d_buffer* %9, i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @buffer_invalidate_bo_range(%struct.wined3d_buffer* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %4
  %25 = load i32, i32* %6, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wined3d_debug_location(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.wined3d_buffer*
  %37 = call i32 (i8*, %struct.wined3d_buffer*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_buffer* %36)
  %38 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %24
  %43 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %5, align 8
  %44 = call i32 @ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_buffer* %43)
  br label %45

45:                                               ; preds = %42, %24
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_buffer*, ...) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @buffer_invalidate_bo_range(%struct.wined3d_buffer*, i32, i32) #1

declare dso_local i32 @ERR(i8*, %struct.wined3d_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
