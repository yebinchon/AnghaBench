; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_stream_source.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_stream_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_set_stream_source* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_set_stream_source = type { i8*, i8*, %struct.wined3d_buffer*, i8*, i32 }
%struct.wined3d_buffer = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_SET_STREAM_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_set_stream_source(%struct.wined3d_cs* %0, i8* %1, %struct.wined3d_buffer* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.wined3d_cs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wined3d_buffer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wined3d_cs_set_stream_source*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.wined3d_buffer* %2, %struct.wined3d_buffer** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %13 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.wined3d_cs_set_stream_source* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_set_stream_source* (%struct.wined3d_cs*, i32, i32)** %15, align 8
  %17 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %18 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %19 = call %struct.wined3d_cs_set_stream_source* %16(%struct.wined3d_cs* %17, i32 40, i32 %18)
  store %struct.wined3d_cs_set_stream_source* %19, %struct.wined3d_cs_set_stream_source** %11, align 8
  %20 = load i32, i32* @WINED3D_CS_OP_SET_STREAM_SOURCE, align 4
  %21 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %11, align 8
  %22 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %11, align 8
  %25 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %8, align 8
  %27 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %11, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %27, i32 0, i32 2
  store %struct.wined3d_buffer* %26, %struct.wined3d_buffer** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %11, align 8
  %31 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.wined3d_cs_set_stream_source*, %struct.wined3d_cs_set_stream_source** %11, align 8
  %34 = getelementptr inbounds %struct.wined3d_cs_set_stream_source, %struct.wined3d_cs_set_stream_source* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %36 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %38, align 8
  %40 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %41 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %42 = call i32 %39(%struct.wined3d_cs* %40, i32 %41)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
