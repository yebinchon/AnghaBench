; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_gdi_alpha_blend.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_gdi_alpha_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }

@TECHNOLOGY = common dso_local global i32 0, align 4
@DT_RASPRINTER = common dso_local global i64 0, align 8
@SHADEBLENDCAPS = common dso_local global i32 0, align 4
@SB_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"alpha blending not supported by device, fallback to StretchBlt\0A\00", align 1
@SRCCOPY = common dso_local global i32 0, align 4
@AC_SRC_OVER = common dso_local global i32 0, align 4
@AC_SRC_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @gdi_alpha_blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdi_alpha_blend(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TECHNOLOGY, align 4
  %26 = call i64 @GetDeviceCaps(i32 %24, i32 %25)
  %27 = load i64, i64* @DT_RASPRINTER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %10
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SHADEBLENDCAPS, align 4
  %34 = call i64 @GetDeviceCaps(i32 %32, i32 %33)
  %35 = load i64, i64* @SB_NONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* @SRCCOPY, align 4
  %52 = call i32 @StretchBlt(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %73

53:                                               ; preds = %29, %10
  %54 = load i32, i32* @AC_SRC_OVER, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 255, i32* %57, align 8
  %58 = load i32, i32* @AC_SRC_ALPHA, align 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = call i32 @GdiAlphaBlend(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %21)
  br label %73

73:                                               ; preds = %53, %37
  ret void
}

declare dso_local i64 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @StretchBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GdiAlphaBlend(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
