; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_parameter_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_parameter_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { i8*, i64, i32, i32 }
%struct.d3dx_sampler = type { i32 }

@D3DXPC_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Unhandled type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_parameter*, i32)* @free_parameter_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_parameter_data(%struct.d3dx_parameter* %0, i32 %1) #0 {
  %3 = alloca %struct.d3dx_parameter*, align 8
  %4 = alloca i32, align 4
  store %struct.d3dx_parameter* %0, %struct.d3dx_parameter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %6 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %70

10:                                               ; preds = %2
  %11 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %12 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @D3DXPC_OBJECT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %10
  %17 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %18 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %16
  %22 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %23 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %54 [
    i32 134, label %25
    i32 133, label %33
    i32 132, label %33
    i32 131, label %33
    i32 130, label %33
    i32 129, label %33
    i32 140, label %33
    i32 128, label %33
    i32 139, label %48
    i32 138, label %48
    i32 137, label %48
    i32 136, label %48
    i32 135, label %48
  ]

25:                                               ; preds = %21
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %28 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @HeapFree(i32 %26, i32 0, i8* %31)
  br label %60

33:                                               ; preds = %21, %21, %21, %21, %21, %21, %21
  %34 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %35 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %42 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to i32**
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @IUnknown_Release(i32* %45)
  br label %47

47:                                               ; preds = %40, %33
  br label %60

48:                                               ; preds = %21, %21, %21, %21, %21
  %49 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %50 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = bitcast i8* %51 to %struct.d3dx_sampler*
  %53 = call i32 @free_sampler(%struct.d3dx_sampler* %52)
  br label %60

54:                                               ; preds = %21
  %55 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %56 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @debug_d3dxparameter_type(i32 %57)
  %59 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %48, %47, %25
  br label %61

61:                                               ; preds = %60, %16, %10
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = call i32 (...) @GetProcessHeap()
  %66 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %67 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @HeapFree(i32 %65, i32 0, i8* %68)
  br label %70

70:                                               ; preds = %9, %64, %61
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @free_sampler(%struct.d3dx_sampler*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dxparameter_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
