; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_check_attribute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_check_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { i64 }
%struct.wined3d_stream_info = type { i32, i64, %struct.wined3d_stream_info_element* }
%struct.wined3d_stream_info_element = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wined3d_buffer* }

@FALSE = common dso_local global i32 0, align 4
@WINED3D_BUFFER_FIXUP_D3DCOLOR = common dso_local global i32 0, align 4
@WINED3DFMT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@CONV_D3DCOLOR = common dso_local global i32 0, align 4
@WINED3D_BUFFER_FIXUP_XYZRHW = common dso_local global i32 0, align 4
@WINED3DFMT_R32G32B32A32_FLOAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unexpected format %s for transformed position.\0A\00", align 1
@CONV_POSITIONT = common dso_local global i32 0, align 4
@CONV_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_buffer*, %struct.wined3d_stream_info*, %struct.wined3d_state*, i64, i32, i32*)* @buffer_check_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_check_attribute(%struct.wined3d_buffer* %0, %struct.wined3d_stream_info* %1, %struct.wined3d_state* %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_buffer*, align 8
  %9 = alloca %struct.wined3d_stream_info*, align 8
  %10 = alloca %struct.wined3d_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.wined3d_stream_info_element*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %8, align 8
  store %struct.wined3d_stream_info* %1, %struct.wined3d_stream_info** %9, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %9, align 8
  %18 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %17, i32 0, i32 2
  %19 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %18, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds %struct.wined3d_stream_info_element, %struct.wined3d_stream_info_element* %19, i64 %20
  store %struct.wined3d_stream_info_element* %21, %struct.wined3d_stream_info_element** %14, align 8
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %9, align 8
  %24 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %6
  %32 = load %struct.wined3d_state*, %struct.wined3d_state** %10, align 8
  %33 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %14, align 8
  %36 = getelementptr inbounds %struct.wined3d_stream_info_element, %struct.wined3d_stream_info_element* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %39, align 8
  %41 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %8, align 8
  %42 = icmp ne %struct.wined3d_buffer* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31, %6
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %7, align 4
  br label %105

45:                                               ; preds = %31
  %46 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %14, align 8
  %47 = getelementptr inbounds %struct.wined3d_stream_info_element, %struct.wined3d_stream_info_element* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @WINED3D_BUFFER_FIXUP_D3DCOLOR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @WINED3DFMT_B8G8R8A8_UNORM, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %8, align 8
  %61 = load i32, i32* @CONV_D3DCOLOR, align 4
  %62 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %14, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @buffer_process_converted_attribute(%struct.wined3d_buffer* %60, i32 %61, %struct.wined3d_stream_info_element* %62, i32* %63)
  store i32 %64, i32* %16, align 4
  br label %103

65:                                               ; preds = %55, %45
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @WINED3D_BUFFER_FIXUP_XYZRHW, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %9, align 8
  %72 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @WINED3DFMT_R32G32B32A32_FLOAT, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @debug_d3dformat(i32 %80)
  %82 = call i32 @FIXME(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %7, align 4
  br label %105

84:                                               ; preds = %75
  %85 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %8, align 8
  %86 = load i32, i32* @CONV_POSITIONT, align 4
  %87 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %14, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @buffer_process_converted_attribute(%struct.wined3d_buffer* %85, i32 %86, %struct.wined3d_stream_info_element* %87, i32* %88)
  store i32 %89, i32* %16, align 4
  br label %102

90:                                               ; preds = %70, %65
  %91 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %8, align 8
  %92 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %8, align 8
  %97 = load i32, i32* @CONV_NONE, align 4
  %98 = load %struct.wined3d_stream_info_element*, %struct.wined3d_stream_info_element** %14, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @buffer_process_converted_attribute(%struct.wined3d_buffer* %96, i32 %97, %struct.wined3d_stream_info_element* %98, i32* %99)
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %95, %90
  br label %102

102:                                              ; preds = %101, %84
  br label %103

103:                                              ; preds = %102, %59
  %104 = load i32, i32* %16, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %79, %43
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @buffer_process_converted_attribute(%struct.wined3d_buffer*, i32, %struct.wined3d_stream_info_element*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
