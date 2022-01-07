; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_top_level_parameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_top_level_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_top_level_parameter = type { i32, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_top_level_parameter*)* @free_top_level_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_top_level_parameter(%struct.d3dx_top_level_parameter* %0) #0 {
  %2 = alloca %struct.d3dx_top_level_parameter*, align 8
  %3 = alloca i32, align 4
  store %struct.d3dx_top_level_parameter* %0, %struct.d3dx_top_level_parameter** %2, align 8
  %4 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %5 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %25, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %12 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %17 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @free_parameter(i32* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %9

28:                                               ; preds = %9
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %31 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @HeapFree(i32 %29, i32 0, i32* %32)
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %36 = call i32 @d3dx_pool_release_shared_parameter(%struct.d3dx_top_level_parameter* %35)
  %37 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %38 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %37, i32 0, i32 1
  %39 = load i32, i32* @FALSE, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @free_parameter(i32* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @free_parameter(i32*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @d3dx_pool_release_shared_parameter(%struct.d3dx_top_level_parameter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
