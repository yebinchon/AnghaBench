; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i64, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid parameter %p specified\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@D3DXPC_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Sampler: returning E_FAIL\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Type %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unhandled type %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Copy %u bytes\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, i8*, i64)* @d3dx9_base_effect_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_value(%struct.d3dx9_base_effect* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dx9_base_effect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.d3dx_parameter*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %13, i32 %14)
  store %struct.d3dx_parameter* %15, %struct.d3dx_parameter** %10, align 8
  %16 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %17 = icmp ne %struct.d3dx_parameter* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %21, i32* %5, align 4
  br label %113

22:                                               ; preds = %4
  %23 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %24 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @D3DXPC_OBJECT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %30 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @is_param_type_sampler(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @E_FAIL, align 4
  store i32 %36, i32* %5, align 4
  br label %113

37:                                               ; preds = %28, %22
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %110

40:                                               ; preds = %37
  %41 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %42 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %110

46:                                               ; preds = %40
  %47 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %48 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @debug_d3dxparameter_type(i32 %49)
  %51 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %53 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %90 [
    i32 128, label %55
    i32 139, label %55
    i32 137, label %55
    i32 138, label %55
    i32 135, label %55
    i32 129, label %56
    i32 136, label %56
    i32 134, label %56
    i32 133, label %56
    i32 132, label %56
    i32 131, label %56
    i32 130, label %56
  ]

55:                                               ; preds = %46, %46, %46, %46, %46
  br label %96

56:                                               ; preds = %46, %46, %46, %46, %46, %46, %46
  store i64 0, i64* %11, align 8
  br label %57

57:                                               ; preds = %86, %56
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %60 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %65 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32 [ %66, %63 ], [ 1, %67 ]
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %58, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %74 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32**
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %12, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @IUnknown_AddRef(i32* %83)
  br label %85

85:                                               ; preds = %82, %72
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %57

89:                                               ; preds = %68
  br label %96

90:                                               ; preds = %46
  %91 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %92 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @debug_d3dxparameter_type(i32 %93)
  %95 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %90, %89, %55
  %97 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %98 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %99)
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %103 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %106 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @memcpy(i8* %101, i64 %104, i64 %107)
  %109 = load i32, i32* @D3D_OK, align 4
  store i32 %109, i32* %5, align 4
  br label %113

110:                                              ; preds = %40, %37
  %111 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %110, %96, %34, %18
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @is_param_type_sampler(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @debug_d3dxparameter_type(i32) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
