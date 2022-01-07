; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_get_visible_clip_region.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_get_visible_clip_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i64 }

@ImageTypeMetafile = common dso_local global i64 0, align 8
@CombineModeReplace = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@CombineModeIntersect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @get_visible_clip_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_visible_clip_region(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ImageTypeMetafile, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @CombineModeReplace, align 4
  %25 = call i32 @GdipCombineRegionRegion(i32* %20, i32* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %13, %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = call i32 @get_graphics_bounds(%struct.TYPE_4__* %27, i32* %7)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @Ok, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %65

33:                                               ; preds = %26
  %34 = call i32 @GdipCreateRegion(i32** %8)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @CombineModeReplace, align 4
  %42 = call i32 @GdipCombineRegionRect(i32* %40, i32* %7, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @Ok, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %61

46:                                               ; preds = %39
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @CombineModeIntersect, align 4
  %52 = call i32 @GdipCombineRegionRegion(i32* %47, i32* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @Ok, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %61

56:                                               ; preds = %46
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @CombineModeReplace, align 4
  %60 = call i32 @GdipCombineRegionRegion(i32* %57, i32* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %56, %55, %45
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @GdipDeleteRegion(i32* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %37, %31, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @GdipCombineRegionRegion(i32*, i32*, i32) #1

declare dso_local i32 @get_graphics_bounds(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @GdipCreateRegion(i32**) #1

declare dso_local i32 @GdipCombineRegionRect(i32*, i32*, i32) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
