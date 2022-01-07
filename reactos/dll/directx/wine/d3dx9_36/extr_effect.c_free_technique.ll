; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_technique.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_technique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_technique = type { i32, i32, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [19 x i8] c"Free technique %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_technique*)* @free_technique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_technique(%struct.d3dx_technique* %0) #0 {
  %2 = alloca %struct.d3dx_technique*, align 8
  %3 = alloca i32, align 4
  store %struct.d3dx_technique* %0, %struct.d3dx_technique** %2, align 8
  %4 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %5 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.d3dx_technique* %4)
  %6 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %7 = icmp ne %struct.d3dx_technique* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %93

9:                                                ; preds = %1
  %10 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %11 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %16 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @IDirect3DStateBlock9_Release(i32* %17)
  %19 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %20 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %9
  %22 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %23 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %30 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %35 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @free_parameter(i32* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %27

46:                                               ; preds = %27
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %49 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @HeapFree(i32 %47, i32 0, i32* %50)
  %52 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %53 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %46, %21
  %55 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %56 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %63 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %68 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @free_pass(i32* %72)
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %3, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %60

77:                                               ; preds = %60
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %80 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @HeapFree(i32 %78, i32 0, i32* %81)
  %83 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %84 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %77, %54
  %86 = call i32 (...) @GetProcessHeap()
  %87 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %88 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @HeapFree(i32 %86, i32 0, i32* %89)
  %91 = load %struct.d3dx_technique*, %struct.d3dx_technique** %2, align 8
  %92 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %85, %8
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3dx_technique*) #1

declare dso_local i32 @IDirect3DStateBlock9_Release(i32*) #1

declare dso_local i32 @free_parameter(i32*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @free_pass(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
