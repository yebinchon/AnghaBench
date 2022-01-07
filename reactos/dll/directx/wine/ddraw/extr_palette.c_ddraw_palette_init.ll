; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_palette.c_ddraw_palette_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_palette.c_ddraw_palette_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddraw_palette = type { i32, i32, i32*, %struct.ddraw*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ddraw = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid flags %#x.\0A\00", align 1
@DDERR_INVALIDPARAMS = common dso_local global i32 0, align 4
@DDPCAPS_8BITENTRIES = common dso_local global i32 0, align 4
@WINED3D_PALETTE_8BIT_ENTRIES = common dso_local global i32 0, align 4
@DDPCAPS_ALLOW256 = common dso_local global i32 0, align 4
@WINED3D_PALETTE_ALLOW_256 = common dso_local global i32 0, align 4
@DDPCAPS_ALPHA = common dso_local global i32 0, align 4
@WINED3D_PALETTE_ALPHA = common dso_local global i32 0, align 4
@ddraw_palette_vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to create wined3d palette, hr %#x.\0A\00", align 1
@DD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddraw_palette_init(%struct.ddraw_palette* %0, %struct.ddraw* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddraw_palette*, align 8
  %7 = alloca %struct.ddraw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ddraw_palette* %0, %struct.ddraw_palette** %6, align 8
  store %struct.ddraw* %1, %struct.ddraw** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @palette_size(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @DDERR_INVALIDPARAMS, align 4
  store i32 %19, i32* %5, align 4
  br label %84

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DDPCAPS_8BITENTRIES, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @WINED3D_PALETTE_8BIT_ENTRIES, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DDPCAPS_ALLOW256, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @WINED3D_PALETTE_ALLOW_256, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @DDPCAPS_ALPHA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @WINED3D_PALETTE_ALPHA, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.ddraw_palette*, %struct.ddraw_palette** %6, align 8
  %49 = getelementptr inbounds %struct.ddraw_palette, %struct.ddraw_palette* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* @ddraw_palette_vtbl, i32** %50, align 8
  %51 = load %struct.ddraw_palette*, %struct.ddraw_palette** %6, align 8
  %52 = getelementptr inbounds %struct.ddraw_palette, %struct.ddraw_palette* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ddraw_palette*, %struct.ddraw_palette** %6, align 8
  %55 = getelementptr inbounds %struct.ddraw_palette, %struct.ddraw_palette* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ddraw*, %struct.ddraw** %7, align 8
  %57 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.ddraw_palette*, %struct.ddraw_palette** %6, align 8
  %63 = getelementptr inbounds %struct.ddraw_palette, %struct.ddraw_palette* %62, i32 0, i32 4
  %64 = call i32 @wined3d_palette_create(i32 %58, i32 %59, i32 %60, i32* %61, i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = call i64 @FAILED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %47
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %84

71:                                               ; preds = %47
  %72 = load %struct.ddraw*, %struct.ddraw** %7, align 8
  %73 = load %struct.ddraw_palette*, %struct.ddraw_palette** %6, align 8
  %74 = getelementptr inbounds %struct.ddraw_palette, %struct.ddraw_palette* %73, i32 0, i32 3
  store %struct.ddraw* %72, %struct.ddraw** %74, align 8
  %75 = load %struct.ddraw*, %struct.ddraw** %7, align 8
  %76 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %75, i32 0, i32 0
  %77 = load %struct.ddraw_palette*, %struct.ddraw_palette** %6, align 8
  %78 = getelementptr inbounds %struct.ddraw_palette, %struct.ddraw_palette* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load %struct.ddraw_palette*, %struct.ddraw_palette** %6, align 8
  %80 = getelementptr inbounds %struct.ddraw_palette, %struct.ddraw_palette* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @IUnknown_AddRef(i32* %81)
  %83 = load i32, i32* @DD_OK, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %71, %67, %16
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @palette_size(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_palette_create(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
