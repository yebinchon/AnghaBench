; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_vs_args_equal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_vs_args_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arb_vs_compile_args = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arb_vs_compile_args*, %struct.arb_vs_compile_args*, i32, i32)* @vs_args_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs_args_equal(%struct.arb_vs_compile_args* %0, %struct.arb_vs_compile_args* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arb_vs_compile_args*, align 8
  %7 = alloca %struct.arb_vs_compile_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.arb_vs_compile_args* %0, %struct.arb_vs_compile_args** %6, align 8
  store %struct.arb_vs_compile_args* %1, %struct.arb_vs_compile_args** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %6, align 8
  %11 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %7, align 8
  %17 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  br label %97

23:                                               ; preds = %4
  %24 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %6, align 8
  %25 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %7, align 8
  %29 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %5, align 4
  br label %97

35:                                               ; preds = %23
  %36 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %6, align 8
  %37 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %7, align 8
  %41 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %5, align 4
  br label %97

47:                                               ; preds = %35
  %48 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %6, align 8
  %49 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %7, align 8
  %53 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %5, align 4
  br label %97

59:                                               ; preds = %47
  %60 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %6, align 8
  %61 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %7, align 8
  %64 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %5, align 4
  br label %97

69:                                               ; preds = %59
  %70 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %6, align 8
  %71 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %7, align 8
  %75 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %97

81:                                               ; preds = %69
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %5, align 4
  br label %97

86:                                               ; preds = %81
  %87 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %6, align 8
  %88 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %7, align 8
  %91 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memcmp(i32 %89, i32 %92, i32 4)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %86, %84, %79, %67, %57, %45, %33, %21
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
