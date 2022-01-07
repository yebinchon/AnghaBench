; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_cleanup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32, i32, i32, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"base %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx9_base_effect*)* @d3dx9_base_effect_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3dx9_base_effect_cleanup(%struct.d3dx9_base_effect* %0) #0 {
  %2 = alloca %struct.d3dx9_base_effect*, align 8
  %3 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %2, align 8
  %4 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %5 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.d3dx9_base_effect* %4)
  %6 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %7 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @heap_free(i32 %8)
  %10 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %11 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %18 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %23 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @free_top_level_parameter(i32* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %15

32:                                               ; preds = %15
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %35 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @HeapFree(i32 %33, i32 0, i32* %36)
  %38 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %39 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %32, %1
  %41 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %42 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %49 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %54 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @free_technique(i32* %58)
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %46

63:                                               ; preds = %46
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %66 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @HeapFree(i32 %64, i32 0, i32* %67)
  %69 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %70 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %63, %40
  %72 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %73 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %102

76:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %80 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %85 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @free_object(i32* %89)
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %3, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %77

94:                                               ; preds = %77
  %95 = call i32 (...) @GetProcessHeap()
  %96 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %97 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @HeapFree(i32 %95, i32 0, i32* %98)
  %100 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %2, align 8
  %101 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %100, i32 0, i32 3
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %94, %71
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3dx9_base_effect*) #1

declare dso_local i32 @heap_free(i32) #1

declare dso_local i32 @free_top_level_parameter(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @free_technique(i32*) #1

declare dso_local i32 @free_object(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
