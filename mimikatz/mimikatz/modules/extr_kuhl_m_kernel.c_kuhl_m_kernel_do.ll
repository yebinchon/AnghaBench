; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_kernel.c_kuhl_m_kernel_do.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_kernel.c_kuhl_m_kernel_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i32**)*, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@kuhl_k_c_kernel = common dso_local global %struct.TYPE_3__* null, align 8
@IOCTL_MIMIDRV_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_kernel_do(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32** @CommandLineToArgvW(i32* %9, i32* %4)
  store i32** %10, i32*** %5, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32**, i32*** %5, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %91

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %14
  store i16 0, i16* %6, align 2
  br label %18

18:                                               ; preds = %73, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i16, i16* %6, align 2
  %23 = zext i16 %22 to i32
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kuhl_k_c_kernel, align 8
  %25 = call zeroext i16 @ARRAYSIZE(%struct.TYPE_3__* %24)
  %26 = zext i16 %25 to i32
  %27 = icmp slt i32 %23, %26
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i1 [ false, %18 ], [ %27, %21 ]
  br i1 %29, label %30, label %76

30:                                               ; preds = %28
  %31 = load i32**, i32*** %5, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kuhl_k_c_kernel, align 8
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @_wcsicmp(i32* %33, i32 %39)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  br i1 %41, label %43, label %72

43:                                               ; preds = %30
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kuhl_k_c_kernel, align 8
  %45 = load i16, i16* %6, align 2
  %46 = zext i16 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32 (i32, i32**)*, i32 (i32, i32**)** %48, align 8
  %50 = icmp ne i32 (i32, i32**)* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kuhl_k_c_kernel, align 8
  %53 = load i16, i16* %6, align 2
  %54 = zext i16 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32 (i32, i32**)*, i32 (i32, i32**)** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32**, i32*** %5, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = call i32 %57(i32 %59, i32** %61)
  store i32 %62, i32* %3, align 4
  br label %71

63:                                               ; preds = %43
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kuhl_k_c_kernel, align 8
  %65 = load i16, i16* %6, align 2
  %66 = zext i16 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @kull_m_kernel_mimidrv_simple_output(i32 %69, i32* null, i32 0)
  br label %71

71:                                               ; preds = %63, %51
  br label %72

72:                                               ; preds = %71, %30
  br label %73

73:                                               ; preds = %72
  %74 = load i16, i16* %6, align 2
  %75 = add i16 %74, 1
  store i16 %75, i16* %6, align 2
  br label %18

76:                                               ; preds = %28
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @IOCTL_MIMIDRV_RAW, align 4
  %81 = load i32*, i32** %2, align 8
  %82 = load i32*, i32** %2, align 8
  %83 = call i64 @wcslen(i32* %82)
  %84 = add nsw i64 %83, 1
  %85 = trunc i64 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32 @kull_m_kernel_mimidrv_simple_output(i32 %80, i32* %81, i32 %88)
  br label %90

90:                                               ; preds = %79, %76
  br label %91

91:                                               ; preds = %90, %14, %1
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32** @CommandLineToArgvW(i32*, i32*) #1

declare dso_local zeroext i16 @ARRAYSIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @_wcsicmp(i32*, i32) #1

declare dso_local i32 @kull_m_kernel_mimidrv_simple_output(i32, i32*, i32) #1

declare dso_local i64 @wcslen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
