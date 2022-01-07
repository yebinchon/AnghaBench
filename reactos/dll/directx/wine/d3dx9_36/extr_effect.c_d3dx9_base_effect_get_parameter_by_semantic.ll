; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_parameter_by_semantic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_parameter_by_semantic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.d3dx_parameter }
%struct.d3dx_parameter = type { i64, i32, %struct.d3dx_parameter* }

@.str = private unnamed_addr constant [24 x i8] c"Returning parameter %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.d3dx9_base_effect*, i32*, i8*)* @d3dx9_base_effect_get_parameter_by_semantic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @d3dx9_base_effect_get_parameter_by_semantic(%struct.d3dx9_base_effect* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca %struct.d3dx_parameter*, align 8
  %10 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %11, i32* %12)
  store %struct.d3dx_parameter* %13, %struct.d3dx_parameter** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %60, label %16

16:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %56, %16
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %20 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %25 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.d3dx_parameter* %29, %struct.d3dx_parameter** %9, align 8
  %30 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %31 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %23
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.d3dx_parameter* %38)
  %40 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %41 = call i32* @get_parameter_handle(%struct.d3dx_parameter* %40)
  store i32* %41, i32** %4, align 8
  br label %109

42:                                               ; preds = %34
  br label %56

43:                                               ; preds = %23
  %44 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %45 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strcasecmp(i32 %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.d3dx_parameter* %51)
  %53 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %54 = call i32* @get_parameter_handle(%struct.d3dx_parameter* %53)
  store i32* %54, i32** %4, align 8
  br label %109

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %17

59:                                               ; preds = %17
  br label %107

60:                                               ; preds = %3
  %61 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %62 = icmp ne %struct.d3dx_parameter* %61, null
  br i1 %62, label %63, label %106

63:                                               ; preds = %60
  store i64 0, i64* %10, align 8
  br label %64

64:                                               ; preds = %102, %63
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %67 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %64
  %71 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %72 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %71, i32 0, i32 2
  %73 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %73, i64 %74
  store %struct.d3dx_parameter* %75, %struct.d3dx_parameter** %9, align 8
  %76 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %77 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %70
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %85 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.d3dx_parameter* %84)
  %86 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %87 = call i32* @get_parameter_handle(%struct.d3dx_parameter* %86)
  store i32* %87, i32** %4, align 8
  br label %109

88:                                               ; preds = %80
  br label %102

89:                                               ; preds = %70
  %90 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %91 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @strcasecmp(i32 %92, i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %98 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.d3dx_parameter* %97)
  %99 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %100 = call i32* @get_parameter_handle(%struct.d3dx_parameter* %99)
  store i32* %100, i32** %4, align 8
  br label %109

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  br label %64

105:                                              ; preds = %64
  br label %106

106:                                              ; preds = %105, %60
  br label %107

107:                                              ; preds = %106, %59
  %108 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %109

109:                                              ; preds = %107, %96, %83, %50, %37
  %110 = load i32*, i32** %4, align 8
  ret i32* %110
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.d3dx_parameter*) #1

declare dso_local i32* @get_parameter_handle(%struct.d3dx_parameter*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
