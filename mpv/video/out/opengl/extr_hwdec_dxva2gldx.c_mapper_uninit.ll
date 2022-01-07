; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2gldx.c_mapper_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2gldx.c_mapper_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32*, i32, %struct.priv* }
%struct.priv = type { i32*, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 (i32, i64*)*, i32 (i64, i64)*, i32 (i64, i32, i64*)* }

@.str = private unnamed_addr constant [51 x i8] c"Failed unlocking texture for access by OpenGL: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to unregister Direct3D surface with OpenGL: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*)* @mapper_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_uninit(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %5 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %6 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %5, i32 0, i32 2
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %9 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_3__* @ra_gl_get(i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.priv*, %struct.priv** %3, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32 (i64, i32, i64*)*, i32 (i64, i32, i64*)** %23, align 8
  %25 = load %struct.priv*, %struct.priv** %3, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 2
  %30 = call i32 %24(i64 %27, i32 1, i64* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %34 = call i32 (...) @mp_LastError_to_str()
  %35 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %21
  br label %37

37:                                               ; preds = %36, %16, %1
  %38 = load %struct.priv*, %struct.priv** %3, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (i64, i64)*, i32 (i64, i64)** %44, align 8
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 %45(i64 %48, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %56 = call i32 (...) @mp_LastError_to_str()
  %57 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %55, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %61

58:                                               ; preds = %42
  %59 = load %struct.priv*, %struct.priv** %3, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %54
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (i32, i64*)*, i32 (i32, i64*)** %64, align 8
  %66 = load %struct.priv*, %struct.priv** %3, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 1
  %68 = call i32 %65(i32 1, i64* %67)
  %69 = load %struct.priv*, %struct.priv** %3, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.priv*, %struct.priv** %3, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %62
  %76 = load %struct.priv*, %struct.priv** %3, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @IDirect3DSurface9_Release(i32* %78)
  %80 = load %struct.priv*, %struct.priv** %3, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %75, %62
  %83 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %84 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %87 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = call i32 @ra_tex_free(i32 %85, i32* %89)
  ret void
}

declare dso_local %struct.TYPE_3__* @ra_gl_get(i32) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*, i32) #1

declare dso_local i32 @mp_LastError_to_str(...) #1

declare dso_local i32 @IDirect3DSurface9_Release(i32*) #1

declare dso_local i32 @ra_tex_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
