; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx_pool_release_shared_parameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx_pool_release_shared_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_top_level_parameter = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, %struct.d3dx_top_level_parameter** }
%struct.TYPE_3__ = type { i32 }

@PARAMETER_FLAG_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"param %p, param->shared_data %p, new_count %d.\0A\00", align 1
@param_zero_data_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_top_level_parameter*)* @d3dx_pool_release_shared_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3dx_pool_release_shared_parameter(%struct.d3dx_top_level_parameter* %0) #0 {
  %2 = alloca %struct.d3dx_top_level_parameter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.d3dx_top_level_parameter* %0, %struct.d3dx_top_level_parameter** %2, align 8
  %5 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %6 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PARAMETER_FLAG_SHARED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %14 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  br label %98

18:                                               ; preds = %12
  %19 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %20 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add i32 %23, -1
  store i32 %24, i32* %22, align 8
  store i32 %24, i32* %3, align 4
  %25 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %26 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %27 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.d3dx_top_level_parameter* %25, %struct.TYPE_4__* %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %76, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %40 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.d3dx_top_level_parameter**, %struct.d3dx_top_level_parameter*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %43, i64 %45
  %47 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %46, align 8
  %48 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %49 = icmp eq %struct.d3dx_top_level_parameter* %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %38
  %51 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %52 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.d3dx_top_level_parameter**, %struct.d3dx_top_level_parameter*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %55, i64 %57
  %59 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %60 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.d3dx_top_level_parameter**, %struct.d3dx_top_level_parameter*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %63, i64 %66
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = mul i64 8, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memmove(%struct.d3dx_top_level_parameter** %58, %struct.d3dx_top_level_parameter** %67, i32 %73)
  br label %79

75:                                               ; preds = %38
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %34

79:                                               ; preds = %50, %34
  %80 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %81 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %80, i32 0, i32 1
  %82 = load i32, i32* @param_zero_data_func, align 4
  %83 = call i32 @walk_parameter_tree(%struct.TYPE_3__* %81, i32 %82, i32* null)
  br label %98

84:                                               ; preds = %18
  %85 = call i32 (...) @GetProcessHeap()
  %86 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %87 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load %struct.d3dx_top_level_parameter**, %struct.d3dx_top_level_parameter*** %89, align 8
  %91 = call i32 @HeapFree(i32 %85, i32 0, %struct.d3dx_top_level_parameter** %90)
  %92 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %93 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %2, align 8
  %97 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %96, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %97, align 8
  br label %98

98:                                               ; preds = %17, %84, %79
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3dx_top_level_parameter*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @memmove(%struct.d3dx_top_level_parameter**, %struct.d3dx_top_level_parameter**, i32) #1

declare dso_local i32 @walk_parameter_tree(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.d3dx_top_level_parameter**) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
