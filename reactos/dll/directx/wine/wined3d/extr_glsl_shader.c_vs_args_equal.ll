; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_vs_args_equal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_vs_args_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vs_compile_args = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vs_compile_args*, %struct.vs_compile_args*, i32)* @vs_args_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs_args_equal(%struct.vs_compile_args* %0, %struct.vs_compile_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vs_compile_args*, align 8
  %6 = alloca %struct.vs_compile_args*, align 8
  %7 = alloca i32, align 4
  store %struct.vs_compile_args* %0, %struct.vs_compile_args** %5, align 8
  store %struct.vs_compile_args* %1, %struct.vs_compile_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vs_compile_args*, %struct.vs_compile_args** %5, align 8
  %9 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %10, %11
  %13 = load %struct.vs_compile_args*, %struct.vs_compile_args** %6, align 8
  %14 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %88

19:                                               ; preds = %3
  %20 = load %struct.vs_compile_args*, %struct.vs_compile_args** %5, align 8
  %21 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vs_compile_args*, %struct.vs_compile_args** %6, align 8
  %24 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %4, align 4
  br label %88

29:                                               ; preds = %19
  %30 = load %struct.vs_compile_args*, %struct.vs_compile_args** %5, align 8
  %31 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vs_compile_args*, %struct.vs_compile_args** %6, align 8
  %34 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %88

39:                                               ; preds = %29
  %40 = load %struct.vs_compile_args*, %struct.vs_compile_args** %5, align 8
  %41 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vs_compile_args*, %struct.vs_compile_args** %6, align 8
  %44 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %88

49:                                               ; preds = %39
  %50 = load %struct.vs_compile_args*, %struct.vs_compile_args** %5, align 8
  %51 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vs_compile_args*, %struct.vs_compile_args** %6, align 8
  %54 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %4, align 4
  br label %88

59:                                               ; preds = %49
  %60 = load %struct.vs_compile_args*, %struct.vs_compile_args** %5, align 8
  %61 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.vs_compile_args*, %struct.vs_compile_args** %6, align 8
  %64 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %4, align 4
  br label %88

69:                                               ; preds = %59
  %70 = load %struct.vs_compile_args*, %struct.vs_compile_args** %5, align 8
  %71 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.vs_compile_args*, %struct.vs_compile_args** %6, align 8
  %74 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %4, align 4
  br label %88

79:                                               ; preds = %69
  %80 = load %struct.vs_compile_args*, %struct.vs_compile_args** %5, align 8
  %81 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.vs_compile_args*, %struct.vs_compile_args** %6, align 8
  %84 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %79, %77, %67, %57, %47, %37, %27, %17
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
