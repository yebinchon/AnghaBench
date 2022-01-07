; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_vmr9.c_VMR9_ImagePresenter_PresentTexture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_vmr9.c_VMR9_ImagePresenter_PresentTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@USED_FVF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SetFVF: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SetStreamSource: %08x\0A\00", align 1
@IID_IDirect3DTexture9 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"IDirect3DSurface9_GetContainer failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SetTexture: %08x\0A\00", align 1
@D3DPT_TRIANGLESTRIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"DrawPrimitive: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @VMR9_ImagePresenter_PresentTexture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VMR9_ImagePresenter_PresentTexture(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @USED_FVF, align 4
  %12 = call i32 @IDirect3DDevice9_SetFVF(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IDirect3DDevice9_SetStreamSource(i32 %23, i32 0, i32 %26, i32 0, i32 4)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %75

35:                                               ; preds = %20
  %36 = load i32*, i32** %5, align 8
  %37 = bitcast i32** %6 to i8**
  %38 = call i32 @IDirect3DSurface9_GetContainer(i32* %36, i32* @IID_IDirect3DTexture9, i8** %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %35
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @IDirect3DDevice9_SetTexture(i32 %48, i32 0, i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @IDirect3DTexture9_Release(i32* %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %75

60:                                               ; preds = %45
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @D3DPT_TRIANGLESTRIP, align 4
  %65 = call i32 @IDirect3DDevice9_DrawPrimitive(i32 %63, i32 %64, i32 0, i32 2)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @FAILED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %60
  %74 = load i32, i32* @S_OK, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %69, %56, %42, %31, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @IDirect3DDevice9_SetFVF(i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @IDirect3DDevice9_SetStreamSource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @IDirect3DSurface9_GetContainer(i32*, i32*, i8**) #1

declare dso_local i32 @IDirect3DDevice9_SetTexture(i32, i32, i32*) #1

declare dso_local i32 @IDirect3DTexture9_Release(i32*) #1

declare dso_local i32 @IDirect3DDevice9_DrawPrimitive(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
