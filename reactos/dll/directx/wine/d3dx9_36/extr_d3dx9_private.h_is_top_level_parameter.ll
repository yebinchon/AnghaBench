; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_d3dx9_private.h_is_top_level_parameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_d3dx9_private.h_is_top_level_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.d3dx_parameter }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_parameter*)* @is_top_level_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_top_level_parameter(%struct.d3dx_parameter* %0) #0 {
  %2 = alloca %struct.d3dx_parameter*, align 8
  store %struct.d3dx_parameter* %0, %struct.d3dx_parameter** %2, align 8
  %3 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %2, align 8
  %4 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %2, align 8
  %8 = icmp eq %struct.d3dx_parameter* %6, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
