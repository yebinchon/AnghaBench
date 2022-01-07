; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_parameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { i32, i32, %struct.d3dx_parameter*, %struct.d3dx_parameter*, %struct.d3dx_parameter*, i64, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Free parameter %p, name %s, type %s, element %#x, child %#x.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_parameter*, i32, i32)* @free_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_parameter(%struct.d3dx_parameter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.d3dx_parameter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.d3dx_parameter* %0, %struct.d3dx_parameter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %10 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %11 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %10, i32 0, i32 3
  %12 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %11, align 8
  %13 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %14 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @debug_d3dxparameter_type(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), %struct.d3dx_parameter* %9, %struct.d3dx_parameter* %12, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %21 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %26 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @d3dx_free_param_eval(i64 %27)
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %31 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %30, i32 0, i32 4
  %32 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %31, align 8
  %33 = icmp ne %struct.d3dx_parameter* %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %29
  %35 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %36 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %41 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %45 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %42, %39 ], [ %46, %43 ]
  store i32 %48, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %66, %47
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %55 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %54, i32 0, i32 4
  %56 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %56, i64 %58
  %60 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %61 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* @TRUE, align 4
  call void @free_parameter(%struct.d3dx_parameter* %59, i32 %64, i32 %65)
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %49

69:                                               ; preds = %49
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %72 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %71, i32 0, i32 4
  %73 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %72, align 8
  %74 = call i32 @HeapFree(i32 %70, i32 0, %struct.d3dx_parameter* %73)
  br label %75

75:                                               ; preds = %69, %29
  %76 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @free_parameter_data(%struct.d3dx_parameter* %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %75
  %82 = call i32 (...) @GetProcessHeap()
  %83 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %84 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %83, i32 0, i32 3
  %85 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %84, align 8
  %86 = call i32 @HeapFree(i32 %82, i32 0, %struct.d3dx_parameter* %85)
  %87 = call i32 (...) @GetProcessHeap()
  %88 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  %89 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %88, i32 0, i32 2
  %90 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %89, align 8
  %91 = call i32 @HeapFree(i32 %87, i32 0, %struct.d3dx_parameter* %90)
  br label %92

92:                                               ; preds = %81, %75
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3dx_parameter*, %struct.d3dx_parameter*, i32, i32, i32) #1

declare dso_local i32 @debug_d3dxparameter_type(i32) #1

declare dso_local i32 @d3dx_free_param_eval(i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.d3dx_parameter*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @free_parameter_data(%struct.d3dx_parameter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
