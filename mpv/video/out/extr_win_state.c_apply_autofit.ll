; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_win_state.c_apply_autofit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_win_state.c_apply_autofit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_geometry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, %struct.m_geometry*, i32, i32)* @apply_autofit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_autofit(i32* %0, i32* %1, i32 %2, i32 %3, %struct.m_geometry* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.m_geometry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.m_geometry* %4, %struct.m_geometry** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.m_geometry*, %struct.m_geometry** %12, align 8
  %21 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  br label %98

25:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.m_geometry*, %struct.m_geometry** %12, align 8
  %33 = call i32 @m_geometry_apply(i32* %15, i32* %15, i32* %16, i32* %17, i32 %30, i32 %31, %struct.m_geometry* %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %25
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %98

47:                                               ; preds = %41, %36, %25
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %98

61:                                               ; preds = %55, %50, %47
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to double
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %64, %67
  store double %68, double* %18, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sitofp i32 %69 to double
  %71 = load i32, i32* %17, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %70, %72
  store double %73, double* %19, align 8
  %74 = load double, double* %19, align 8
  %75 = load double, double* %18, align 8
  %76 = fcmp ole double %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %61
  %81 = load i32, i32* %16, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %16, align 4
  %84 = sitofp i32 %83 to double
  %85 = load double, double* %18, align 8
  %86 = fdiv double %84, %85
  %87 = fptosi double %86 to i32
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %98

89:                                               ; preds = %61
  %90 = load i32, i32* %17, align 4
  %91 = sitofp i32 %90 to double
  %92 = load double, double* %18, align 8
  %93 = fmul double %91, %92
  %94 = fptosi double %93 to i32
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %24, %46, %60, %89, %80
  ret void
}

declare dso_local i32 @m_geometry_apply(i32*, i32*, i32*, i32*, i32, i32, %struct.m_geometry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
