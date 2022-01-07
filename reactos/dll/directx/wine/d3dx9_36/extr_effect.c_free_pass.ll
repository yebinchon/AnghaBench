; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_pass.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_free_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_pass = type { i32, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"Free pass %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_pass*)* @free_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pass(%struct.d3dx_pass* %0) #0 {
  %2 = alloca %struct.d3dx_pass*, align 8
  %3 = alloca i32, align 4
  store %struct.d3dx_pass* %0, %struct.d3dx_pass** %2, align 8
  %4 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %5 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.d3dx_pass* %4)
  %6 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %7 = icmp ne %struct.d3dx_pass* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %81

9:                                                ; preds = %1
  %10 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %11 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %18 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %23 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @free_parameter(i32* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %15

34:                                               ; preds = %15
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %37 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @HeapFree(i32 %35, i32 0, i32* %38)
  %40 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %41 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %9
  %43 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %44 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %51 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %56 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @free_state(i32* %60)
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %48

65:                                               ; preds = %48
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %68 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @HeapFree(i32 %66, i32 0, i32* %69)
  %71 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %72 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %65, %42
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %76 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @HeapFree(i32 %74, i32 0, i32* %77)
  %79 = load %struct.d3dx_pass*, %struct.d3dx_pass** %2, align 8
  %80 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %73, %8
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3dx_pass*) #1

declare dso_local i32 @free_parameter(i32*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @free_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
