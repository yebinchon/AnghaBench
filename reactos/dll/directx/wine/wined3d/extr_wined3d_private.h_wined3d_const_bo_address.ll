; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_const_bo_address.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_const_bo_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_const_bo_address = type { i32 }
%struct.wined3d_bo_address = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_const_bo_address* (%struct.wined3d_bo_address*)* @wined3d_const_bo_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_const_bo_address* @wined3d_const_bo_address(%struct.wined3d_bo_address* %0) #0 {
  %2 = alloca %struct.wined3d_bo_address*, align 8
  store %struct.wined3d_bo_address* %0, %struct.wined3d_bo_address** %2, align 8
  %3 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %2, align 8
  %4 = bitcast %struct.wined3d_bo_address* %3 to %struct.wined3d_const_bo_address*
  ret %struct.wined3d_const_bo_address* %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
