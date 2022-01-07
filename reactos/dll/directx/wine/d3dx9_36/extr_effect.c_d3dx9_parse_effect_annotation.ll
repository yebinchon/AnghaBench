; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect_annotation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect_annotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32 }
%struct.d3dx_object = type { i32 }

@D3DX_PARAMETER_ANNOTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Typedef offset: %#x\0A\00", align 1
@D3D_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to parse type definition\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Value offset: %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to parse value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*, i8**, %struct.d3dx_object*)* @d3dx9_parse_effect_annotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_parse_effect_annotation(%struct.d3dx9_base_effect* %0, %struct.d3dx_parameter* %1, i8* %2, i8** %3, %struct.d3dx_object* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.d3dx9_base_effect*, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.d3dx_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %7, align 8
  store %struct.d3dx_parameter* %1, %struct.d3dx_parameter** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store %struct.d3dx_object* %4, %struct.d3dx_object** %11, align 8
  %15 = load i32, i32* @D3DX_PARAMETER_ANNOTATION, align 4
  %16 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %17 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i8**, i8*** %10, align 8
  %19 = call i32 @read_dword(i8** %18, i32* %12)
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %13, align 8
  %26 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %27 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @D3DX_PARAMETER_ANNOTATION, align 4
  %30 = call i64 @d3dx9_parse_effect_typedef(%struct.d3dx9_base_effect* %26, %struct.d3dx_parameter* %27, i8* %28, i8** %13, i32* null, i32 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @D3D_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %14, align 8
  store i64 %36, i64* %6, align 8
  br label %59

37:                                               ; preds = %5
  %38 = load i8**, i8*** %10, align 8
  %39 = call i32 @read_dword(i8** %38, i32* %12)
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %43 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load %struct.d3dx_object*, %struct.d3dx_object** %11, align 8
  %50 = call i64 @d3dx9_parse_init_value(%struct.d3dx9_base_effect* %42, %struct.d3dx_parameter* %43, i8* %44, i8* %48, %struct.d3dx_object* %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @D3D_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i64, i64* %14, align 8
  store i64 %56, i64* %6, align 8
  br label %59

57:                                               ; preds = %37
  %58 = load i64, i64* @D3D_OK, align 8
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %57, %54, %34
  %60 = load i64, i64* %6, align 8
  ret i64 %60
}

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @d3dx9_parse_effect_typedef(%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*, i8**, i32*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @d3dx9_parse_init_value(%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*, i8*, %struct.d3dx_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
