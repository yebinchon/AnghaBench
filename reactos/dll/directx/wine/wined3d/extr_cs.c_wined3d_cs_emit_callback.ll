; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_callback* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_callback = type { void (i8*)*, i8*, i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_CALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, void (i8*)*, i8*)* @wined3d_cs_emit_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_emit_callback(%struct.wined3d_cs* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.wined3d_cs*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wined3d_cs_callback*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.wined3d_cs_callback* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_callback* (%struct.wined3d_cs*, i32, i32)** %11, align 8
  %13 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %14 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %15 = call %struct.wined3d_cs_callback* %12(%struct.wined3d_cs* %13, i32 24, i32 %14)
  store %struct.wined3d_cs_callback* %15, %struct.wined3d_cs_callback** %7, align 8
  %16 = load i32, i32* @WINED3D_CS_OP_CALLBACK, align 4
  %17 = load %struct.wined3d_cs_callback*, %struct.wined3d_cs_callback** %7, align 8
  %18 = getelementptr inbounds %struct.wined3d_cs_callback, %struct.wined3d_cs_callback* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load void (i8*)*, void (i8*)** %5, align 8
  %20 = load %struct.wined3d_cs_callback*, %struct.wined3d_cs_callback** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_cs_callback, %struct.wined3d_cs_callback* %20, i32 0, i32 0
  store void (i8*)* %19, void (i8*)** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.wined3d_cs_callback*, %struct.wined3d_cs_callback** %7, align 8
  %24 = getelementptr inbounds %struct.wined3d_cs_callback, %struct.wined3d_cs_callback* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %26 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %28, align 8
  %30 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %31 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %32 = call i32 %29(%struct.wined3d_cs* %30, i32 %31)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
