; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_state = type { i32, i32, i32, i32 }
%struct.d3dx_object = type { i32 }

@ST_CONSTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Operation: %#x (%s)\0A\00", align 1
@state_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Index: %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Typedef offset: %#x\0A\00", align 1
@D3D_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to parse type definition\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Value offset: %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to parse value\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx9_base_effect*, %struct.d3dx_state*, i8*, i8**, %struct.d3dx_object*)* @d3dx9_parse_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_parse_state(%struct.d3dx9_base_effect* %0, %struct.d3dx_state* %1, i8* %2, i8** %3, %struct.d3dx_object* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.d3dx9_base_effect*, align 8
  %8 = alloca %struct.d3dx_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.d3dx_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %7, align 8
  store %struct.d3dx_state* %1, %struct.d3dx_state** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store %struct.d3dx_object* %4, %struct.d3dx_object** %11, align 8
  %15 = load i32, i32* @ST_CONSTANT, align 4
  %16 = load %struct.d3dx_state*, %struct.d3dx_state** %8, align 8
  %17 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i8**, i8*** %10, align 8
  %19 = load %struct.d3dx_state*, %struct.d3dx_state** %8, align 8
  %20 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %19, i32 0, i32 0
  %21 = call i32 @read_dword(i8** %18, i32* %20)
  %22 = load %struct.d3dx_state*, %struct.d3dx_state** %8, align 8
  %23 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state_table, align 8
  %26 = load %struct.d3dx_state*, %struct.d3dx_state** %8, align 8
  %27 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %32)
  %34 = load i8**, i8*** %10, align 8
  %35 = load %struct.d3dx_state*, %struct.d3dx_state** %8, align 8
  %36 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %35, i32 0, i32 1
  %37 = call i32 @read_dword(i8** %34, i32* %36)
  %38 = load %struct.d3dx_state*, %struct.d3dx_state** %8, align 8
  %39 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i8**, i8*** %10, align 8
  %43 = call i32 @read_dword(i8** %42, i32* %12)
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %13, align 8
  %50 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %51 = load %struct.d3dx_state*, %struct.d3dx_state** %8, align 8
  %52 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %51, i32 0, i32 2
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @d3dx9_parse_effect_typedef(%struct.d3dx9_base_effect* %50, i32* %52, i8* %53, i8** %13, i32* null, i32 0)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @D3D_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %5
  %59 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %82

60:                                               ; preds = %5
  %61 = load i8**, i8*** %10, align 8
  %62 = call i32 @read_dword(i8** %61, i32* %12)
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %66 = load %struct.d3dx_state*, %struct.d3dx_state** %8, align 8
  %67 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %66, i32 0, i32 2
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load %struct.d3dx_object*, %struct.d3dx_object** %11, align 8
  %74 = call i64 @d3dx9_parse_init_value(%struct.d3dx9_base_effect* %65, i32* %67, i8* %68, i8* %72, %struct.d3dx_object* %73)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @D3D_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %82

80:                                               ; preds = %60
  %81 = load i64, i64* @D3D_OK, align 8
  store i64 %81, i64* %6, align 8
  br label %89

82:                                               ; preds = %78, %58
  %83 = load %struct.d3dx_state*, %struct.d3dx_state** %8, align 8
  %84 = getelementptr inbounds %struct.d3dx_state, %struct.d3dx_state* %83, i32 0, i32 2
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @free_parameter(i32* %84, i32 %85, i32 %86)
  %88 = load i64, i64* %14, align 8
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %82, %80
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i64 @d3dx9_parse_effect_typedef(%struct.d3dx9_base_effect*, i32*, i8*, i8**, i32*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @d3dx9_parse_init_value(%struct.d3dx9_base_effect*, i32*, i8*, i8*, %struct.d3dx_object*) #1

declare dso_local i32 @free_parameter(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
