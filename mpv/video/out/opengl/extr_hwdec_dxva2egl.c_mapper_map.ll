; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2egl.c_mapper_map.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2egl.c_mapper_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_7__*, i32, %struct.priv* }
%struct.TYPE_7__ = type { i64*, i32, i32 }
%struct.priv = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (i32, i32)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@D3DTEXF_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Direct3D RGB conversion failed: %s\0A\00", align 1
@D3DISSUE_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to issue Direct3D END query\0A\00", align 1
@D3DGETDATA_FLUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to query Direct3D flush state\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to flush frame after %lld ms\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@EGL_BACK_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_map(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %12 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %13 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %12, i32 0, i32 2
  %14 = load %struct.priv*, %struct.priv** %13, align 8
  store %struct.priv* %14, %struct.priv** %4, align 8
  %15 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %16 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.TYPE_9__* @ra_gl_get(i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %22 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %23 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %21, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %28 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %29 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %27, align 4
  %33 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %34 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 3
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %8, align 8
  %41 = load %struct.priv*, %struct.priv** %4, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.priv*, %struct.priv** %4, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @D3DTEXF_NONE, align 4
  %49 = call i64 @IDirect3DDevice9Ex_StretchRect(i32 %43, i32* %44, %struct.TYPE_8__* %7, i32 %47, %struct.TYPE_8__* %7, i32 %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @FAILED(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %1
  %54 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @mp_HRESULT_to_str(i64 %55)
  %57 = call i32 (%struct.ra_hwdec_mapper*, i8*, ...) @MP_ERR(%struct.ra_hwdec_mapper* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 -1, i32* %2, align 4
  br label %121

58:                                               ; preds = %1
  %59 = load %struct.priv*, %struct.priv** %4, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @D3DISSUE_END, align 4
  %63 = call i64 @IDirect3DQuery9_Issue(i32 %61, i32 %62)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @FAILED(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %69 = call i32 (%struct.ra_hwdec_mapper*, i8*, ...) @MP_ERR(%struct.ra_hwdec_mapper* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %121

70:                                               ; preds = %58
  store i32 8, i32* %9, align 4
  store i32 1000, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %98
  %72 = load %struct.priv*, %struct.priv** %4, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @D3DGETDATA_FLUSH, align 4
  %76 = call i64 @IDirect3DQuery9_GetData(i32 %74, i32* null, i32 0, i32 %75)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @FAILED(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %82 = call i32 (%struct.ra_hwdec_mapper*, i8*, ...) @MP_ERR(%struct.ra_hwdec_mapper* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %121

83:                                               ; preds = %71
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @S_FALSE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = icmp sgt i32 %89, 8
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %93 = call i32 @MP_VERBOSE(%struct.ra_hwdec_mapper* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 8)
  br label %99

94:                                               ; preds = %87
  %95 = call i32 @mp_sleep_us(i32 1000)
  br label %97

96:                                               ; preds = %83
  br label %99

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97
  br label %71

99:                                               ; preds = %96, %91
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = load i32, i32* @GL_TEXTURE_2D, align 4
  %104 = load %struct.priv*, %struct.priv** %4, align 8
  %105 = getelementptr inbounds %struct.priv, %struct.priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 %102(i32 %103, i32 %106)
  %108 = load %struct.priv*, %struct.priv** %4, align 8
  %109 = getelementptr inbounds %struct.priv, %struct.priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.priv*, %struct.priv** %4, align 8
  %112 = getelementptr inbounds %struct.priv, %struct.priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @EGL_BACK_BUFFER, align 4
  %115 = call i32 @eglBindTexImage(i32 %110, i32 %113, i32 %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32 (i32, i32)*, i32 (i32, i32)** %117, align 8
  %119 = load i32, i32* @GL_TEXTURE_2D, align 4
  %120 = call i32 %118(i32 %119, i32 0)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %99, %80, %67, %53
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_9__* @ra_gl_get(i32) #1

declare dso_local i64 @IDirect3DDevice9Ex_StretchRect(i32, i32*, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*, ...) #1

declare dso_local i32 @mp_HRESULT_to_str(i64) #1

declare dso_local i64 @IDirect3DQuery9_Issue(i32, i32) #1

declare dso_local i64 @IDirect3DQuery9_GetData(i32, i32*, i32, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ra_hwdec_mapper*, i8*, i64) #1

declare dso_local i32 @mp_sleep_us(i32) #1

declare dso_local i32 @eglBindTexImage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
