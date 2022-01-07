; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_reflection_cleanup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_reflection_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dcompiler_shader_reflection = type { i32, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [12 x i8] c"Cleanup %p\0A\00", align 1
@d3dcompiler_shader_reflection_type_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dcompiler_shader_reflection*)* @reflection_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reflection_cleanup(%struct.d3dcompiler_shader_reflection* %0) #0 {
  %2 = alloca %struct.d3dcompiler_shader_reflection*, align 8
  %3 = alloca i32, align 4
  store %struct.d3dcompiler_shader_reflection* %0, %struct.d3dcompiler_shader_reflection** %2, align 8
  %4 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %5 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.d3dcompiler_shader_reflection* %4)
  %6 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %7 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %6, i32 0, i32 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %12 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %11, i32 0, i32 8
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @free_signature(i32* %13)
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %17 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @HeapFree(i32 %15, i32 0, i32* %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %22 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %27 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @free_signature(i32* %28)
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %32 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @HeapFree(i32 %30, i32 0, i32* %33)
  br label %35

35:                                               ; preds = %25, %20
  %36 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %37 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %42 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free_signature(i32* %43)
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %47 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @HeapFree(i32 %45, i32 0, i32* %48)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %52 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %59 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %64 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @free_constant_buffer(i32* %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %3, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %56

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %50
  %75 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %76 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %75, i32 0, i32 5
  %77 = load i32, i32* @d3dcompiler_shader_reflection_type_destroy, align 4
  %78 = call i32 @wine_rb_destroy(i32* %76, i32 %77, i32* null)
  %79 = call i32 (...) @GetProcessHeap()
  %80 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %81 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @HeapFree(i32 %79, i32 0, i32* %82)
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %86 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @HeapFree(i32 %84, i32 0, i32* %87)
  %89 = call i32 (...) @GetProcessHeap()
  %90 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %91 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @HeapFree(i32 %89, i32 0, i32* %92)
  %94 = call i32 (...) @GetProcessHeap()
  %95 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %2, align 8
  %96 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @HeapFree(i32 %94, i32 0, i32* %97)
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3dcompiler_shader_reflection*) #1

declare dso_local i32 @free_signature(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @free_constant_buffer(i32*) #1

declare dso_local i32 @wine_rb_destroy(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
