; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_init_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_init_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32, i64 }
%struct.d3dx_object = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"param size: %u\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to allocate data memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Data: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unhandled class %s\0A\00", align 1
@D3D_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to parse value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*, i8*, %struct.d3dx_object*)* @d3dx9_parse_init_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_parse_init_value(%struct.d3dx9_base_effect* %0, %struct.d3dx_parameter* %1, i8* %2, i8* %3, %struct.d3dx_object* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.d3dx9_base_effect*, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.d3dx_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %7, align 8
  store %struct.d3dx_parameter* %1, %struct.d3dx_parameter** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.d3dx_object* %4, %struct.d3dx_object** %11, align 8
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %16 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  store i8* null, i8** %14, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %5
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %25 = load i64, i64* %12, align 8
  %26 = call i8* @HeapAlloc(i32 %23, i32 %24, i64 %25)
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %31, i64* %6, align 8
  br label %71

32:                                               ; preds = %22
  %33 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %34 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %46 [
    i32 131, label %36
    i32 130, label %37
    i32 128, label %37
    i32 132, label %37
    i32 133, label %37
    i32 129, label %37
  ]

36:                                               ; preds = %32
  br label %52

37:                                               ; preds = %32, %32, %32, %32, %32
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i64 @debugstr_an(i8* %38, i64 %39)
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  br label %52

46:                                               ; preds = %32
  %47 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %48 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @debug_d3dxparameter_class(i32 %49)
  %51 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %37, %36
  br label %53

53:                                               ; preds = %52, %5
  %54 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %55 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.d3dx_object*, %struct.d3dx_object** %11, align 8
  %59 = call i64 @d3dx9_parse_value(%struct.d3dx9_base_effect* %54, %struct.d3dx_parameter* %55, i8* %56, i8* %57, i8** %10, %struct.d3dx_object* %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @D3D_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 (...) @GetProcessHeap()
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @HeapFree(i32 %65, i32 0, i8* %66)
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %6, align 8
  br label %71

69:                                               ; preds = %53
  %70 = load i64, i64* @D3D_OK, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %69, %63, %29
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @debugstr_an(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dxparameter_class(i32) #1

declare dso_local i64 @d3dx9_parse_value(%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*, i8*, i8**, %struct.d3dx_object*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
