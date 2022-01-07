; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_d3dx_free_preshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_d3dx_free_preshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_preshader = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_preshader*)* @d3dx_free_preshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3dx_free_preshader(%struct.d3dx_preshader* %0) #0 {
  %2 = alloca %struct.d3dx_preshader*, align 8
  store %struct.d3dx_preshader* %0, %struct.d3dx_preshader** %2, align 8
  %3 = call i32 (...) @GetProcessHeap()
  %4 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %2, align 8
  %5 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @HeapFree(i32 %3, i32 0, i32 %6)
  %8 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %2, align 8
  %9 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %8, i32 0, i32 1
  %10 = call i32 @regstore_free_tables(i32* %9)
  %11 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %2, align 8
  %12 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %11, i32 0, i32 0
  %13 = call i32 @d3dx_free_const_tab(i32* %12)
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @regstore_free_tables(i32*) #1

declare dso_local i32 @d3dx_free_const_tab(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
