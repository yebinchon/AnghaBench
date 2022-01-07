; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_remove_vbos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_remove_vbos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wined3d_buffer* }
%struct.wined3d_buffer = type { i32 }
%struct.wined3d_stream_info = type { i32, %struct.wined3d_stream_info_element* }
%struct.wined3d_stream_info_element = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, %struct.wined3d_stream_info*)* @remove_vbos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_vbos(%struct.wined3d_context* %0, %struct.wined3d_state* %1, %struct.wined3d_stream_info* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.wined3d_stream_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_stream_info_element*, align 8
  %9 = alloca %struct.wined3d_buffer*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store %struct.wined3d_stream_info* %2, %struct.wined3d_stream_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %62, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %6, align 8
  %13 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %12, i32 0, i32 1
  %14 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.wined3d_stream_info_element* %14)
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %10
  %18 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %6, align 8
  %19 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %62

26:                                               ; preds = %17
  %27 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %6, align 8
  %28 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %27, i32 0, i32 1
  %29 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wined3d_stream_info_element, %struct.wined3d_stream_info_element* %29, i64 %31
  store %struct.wined3d_stream_info_element* %32, %struct.wined3d_stream_info_element** %8, align 8
  %33 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %8, align 8
  %34 = getelementptr inbounds %struct.wined3d_stream_info_element, %struct.wined3d_stream_info_element* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %26
  %39 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %40 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %8, align 8
  %43 = getelementptr inbounds %struct.wined3d_stream_info_element, %struct.wined3d_stream_info_element* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %46, align 8
  store %struct.wined3d_buffer* %47, %struct.wined3d_buffer** %9, align 8
  %48 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %8, align 8
  %49 = getelementptr inbounds %struct.wined3d_stream_info_element, %struct.wined3d_stream_info_element* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %9, align 8
  %52 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %53 = call i64 @wined3d_buffer_load_sysmem(%struct.wined3d_buffer* %51, %struct.wined3d_context* %52)
  %54 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %8, align 8
  %55 = getelementptr inbounds %struct.wined3d_stream_info_element, %struct.wined3d_stream_info_element* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %53
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 8
  br label %61

61:                                               ; preds = %38, %26
  br label %62

62:                                               ; preds = %61, %25
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %10

65:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.wined3d_stream_info_element*) #1

declare dso_local i64 @wined3d_buffer_load_sysmem(%struct.wined3d_buffer*, %struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
