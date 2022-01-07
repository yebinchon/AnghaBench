; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_dxgl_swap_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_dxgl_swap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)* }

@.str = private unnamed_addr constant [46 x i8] c"Couldn't unlock rendertarget for present: %s\0A\00", align 1
@D3DTEXF_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't stretchrect for present: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Direct3D device lost! Resetting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to present: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Couldn't lock rendertarget after present: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @dxgl_swap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxgl_swap_buffers(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %6, i32 0, i32 1
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 6
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %4, align 8
  %11 = call i32 (...) @pump_message_loop()
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %18 = call i32 @dxgl_reset(%struct.ra_ctx* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %108

25:                                               ; preds = %19
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %27, align 8
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.priv*, %struct.priv** %3, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 1
  %34 = call i32 %28(i32 %31, i32 1, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (...) @mp_LastError_to_str()
  %41 = call i32 @MP_ERR(i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %108

42:                                               ; preds = %25
  %43 = load %struct.priv*, %struct.priv** %3, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @D3DTEXF_NONE, align 4
  %53 = call i32 @IDirect3DDevice9Ex_StretchRect(i32 %45, i32 %48, i32* null, i32 %51, i32* null, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @mp_HRESULT_to_str(i32 %61)
  %63 = call i32 @MP_ERR(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %108

64:                                               ; preds = %42
  %65 = load %struct.priv*, %struct.priv** %3, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IDirect3DDevice9Ex_PresentEx(i32 %67, i32* null, i32* null, i32* null, i32* null, i32 0)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %79 [
    i32 128, label %70
    i32 129, label %70
  ]

70:                                               ; preds = %64, %64
  %71 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @MP_VERBOSE(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.priv*, %struct.priv** %3, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %78 = call i32 @dxgl_reset(%struct.ra_ctx* %77)
  br label %108

79:                                               ; preds = %64
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %85 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @mp_HRESULT_to_str(i32 %87)
  %89 = call i32 @MP_ERR(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %83, %79
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %93, align 8
  %95 = load %struct.priv*, %struct.priv** %3, align 8
  %96 = getelementptr inbounds %struct.priv, %struct.priv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.priv*, %struct.priv** %3, align 8
  %99 = getelementptr inbounds %struct.priv, %struct.priv* %98, i32 0, i32 1
  %100 = call i32 %94(i32 %97, i32 1, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %91
  %103 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %104 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (...) @mp_LastError_to_str()
  %107 = call i32 @MP_ERR(i32 %105, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %24, %36, %57, %70, %102, %91
  ret void
}

declare dso_local i32 @pump_message_loop(...) #1

declare dso_local i32 @dxgl_reset(%struct.ra_ctx*) #1

declare dso_local i32 @MP_ERR(i32, i8*, i32) #1

declare dso_local i32 @mp_LastError_to_str(...) #1

declare dso_local i32 @IDirect3DDevice9Ex_StretchRect(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_PresentEx(i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @MP_VERBOSE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
