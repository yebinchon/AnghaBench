; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32 }
%struct.wined3d_cs_callback = type { i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_callback(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_callback*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.wined3d_cs_callback*
  store %struct.wined3d_cs_callback* %7, %struct.wined3d_cs_callback** %5, align 8
  %8 = load %struct.wined3d_cs_callback*, %struct.wined3d_cs_callback** %5, align 8
  %9 = getelementptr inbounds %struct.wined3d_cs_callback, %struct.wined3d_cs_callback* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load %struct.wined3d_cs_callback*, %struct.wined3d_cs_callback** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_cs_callback, %struct.wined3d_cs_callback* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 %10(i32 %13)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
