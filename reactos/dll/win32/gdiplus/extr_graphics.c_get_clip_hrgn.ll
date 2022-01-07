; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_get_clip_hrgn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_get_clip_hrgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@WineCoordinateSpaceGdiDevice = common dso_local global i32 0, align 4
@CoordinateSpaceDevice = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@RGN_AND = common dso_local global i32 0, align 4
@RGN_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64*)* @get_clip_hrgn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_clip_hrgn(%struct.TYPE_4__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = load i32, i32* @WineCoordinateSpaceGdiDevice, align 4
  %11 = load i32, i32* @CoordinateSpaceDevice, align 4
  %12 = call i64 @get_graphics_transform(%struct.TYPE_4__* %9, i32 %10, i32 %11, i32* %6)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @Ok, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i64 @GdipIsMatrixIdentity(i32* %6, i32* %8)
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @Ok, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @GdipCloneRegion(i32 %25, i32** %5)
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @Ok, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @GdipTransformRegion(i32* %35, i32* %6)
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @Ok, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = call i64 @GdipGetRegionHRgn(i32* %42, i32* null, i64* %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @GdipDeleteRegion(i32* %46)
  br label %48

48:                                               ; preds = %45, %27
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @Ok, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load i64*, i64** %4, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i64*, i64** %4, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @RGN_AND, align 4
  %70 = call i32 @CombineRgn(i64 %63, i64 %65, i64 %68, i32 %69)
  br label %84

71:                                               ; preds = %57
  %72 = call i64 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  %73 = load i64*, i64** %4, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i64*, i64** %4, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @RGN_COPY, align 4
  %83 = call i32 @CombineRgn(i64 %75, i64 %78, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %71, %61
  br label %85

85:                                               ; preds = %84, %52, %48
  %86 = load i64, i64* %7, align 8
  ret i64 %86
}

declare dso_local i64 @get_graphics_transform(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i64 @GdipIsMatrixIdentity(i32*, i32*) #1

declare dso_local i64 @GdipCloneRegion(i32, i32**) #1

declare dso_local i64 @GdipTransformRegion(i32*, i32*) #1

declare dso_local i64 @GdipGetRegionHRgn(i32*, i32*, i64*) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

declare dso_local i32 @CombineRgn(i64, i64, i64, i32) #1

declare dso_local i64 @CreateRectRgn(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
