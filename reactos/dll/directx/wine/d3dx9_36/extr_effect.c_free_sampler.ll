; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_sampler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_sampler = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_sampler*)* @free_sampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_sampler(%struct.d3dx_sampler* %0) #0 {
  %2 = alloca %struct.d3dx_sampler*, align 8
  %3 = alloca i64, align 8
  store %struct.d3dx_sampler* %0, %struct.d3dx_sampler** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %2, align 8
  %7 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %2, align 8
  %12 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @free_state(i32* %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %4

20:                                               ; preds = %4
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %2, align 8
  %23 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @HeapFree(i32 %21, i32 0, i32* %24)
  ret void
}

declare dso_local i32 @free_state(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
