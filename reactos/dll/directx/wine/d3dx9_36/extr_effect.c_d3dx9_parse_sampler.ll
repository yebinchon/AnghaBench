; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_sampler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_sampler = type { i32, i32* }
%struct.d3dx_object = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Count: %u\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@D3D_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to parse state %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx9_base_effect*, %struct.d3dx_sampler*, i8*, i8**, %struct.d3dx_object*)* @d3dx9_parse_sampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_parse_sampler(%struct.d3dx9_base_effect* %0, %struct.d3dx_sampler* %1, i8* %2, i8** %3, %struct.d3dx_object* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.d3dx9_base_effect*, align 8
  %8 = alloca %struct.d3dx_sampler*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.d3dx_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %7, align 8
  store %struct.d3dx_sampler* %1, %struct.d3dx_sampler** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store %struct.d3dx_object* %4, %struct.d3dx_object** %11, align 8
  %14 = load i8**, i8*** %10, align 8
  %15 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %16 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %15, i32 0, i32 0
  %17 = call i32 @read_dword(i8** %14, i32* %16)
  %18 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %19 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %24 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %25 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32* @HeapAlloc(i32 %22, i32 %23, i32 %29)
  %31 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %32 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %34 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %5
  %38 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %39, i64* %6, align 8
  br label %98

40:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %44 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  %49 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %50 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %51 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i8*, i8** %9, align 8
  %56 = load i8**, i8*** %10, align 8
  %57 = load %struct.d3dx_object*, %struct.d3dx_object** %11, align 8
  %58 = call i64 @d3dx9_parse_state(%struct.d3dx9_base_effect* %49, i32* %54, i8* %55, i8** %56, %struct.d3dx_object* %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @D3D_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  br label %71

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %13, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %13, align 8
  br label %41

69:                                               ; preds = %41
  %70 = load i64, i64* @D3D_OK, align 8
  store i64 %70, i64* %6, align 8
  br label %98

71:                                               ; preds = %62
  store i64 0, i64* %13, align 8
  br label %72

72:                                               ; preds = %86, %71
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %75 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %81 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = call i32 @free_state(i32* %84)
  br label %86

86:                                               ; preds = %79
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %13, align 8
  br label %72

89:                                               ; preds = %72
  %90 = call i32 (...) @GetProcessHeap()
  %91 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %92 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @HeapFree(i32 %90, i32 0, i32* %93)
  %95 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %8, align 8
  %96 = getelementptr inbounds %struct.d3dx_sampler, %struct.d3dx_sampler* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  %97 = load i64, i64* %12, align 8
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %89, %69, %37
  %99 = load i64, i64* %6, align 8
  ret i64 %99
}

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @d3dx9_parse_state(%struct.d3dx9_base_effect*, i32*, i8*, i8**, %struct.d3dx_object*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @free_state(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
