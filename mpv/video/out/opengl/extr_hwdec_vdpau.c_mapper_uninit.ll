; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_vdpau.c_mapper_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_vdpau.c_mapper_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32, %struct.priv* }
%struct.priv = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.vdp_functions }
%struct.vdp_functions = type { i32 (i64)* }
%struct.TYPE_5__ = type { i32 (...)*, i32 (i32, i32)*, i32 (i64)* }

@VDP_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Error when calling vdp_output_surface_destroy\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Before uninitializing OpenGL interop\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"After uninitializing OpenGL interop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*)* @mapper_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_uninit(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.vdp_functions*, align 8
  %6 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %7 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %8 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %7, i32 0, i32 1
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %3, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 7
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 6
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.vdp_functions* %16, %struct.vdp_functions** %5, align 8
  %17 = load %struct.priv*, %struct.priv** %3, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32 (i64)*, i32 (i64)** %30, align 8
  %32 = load %struct.priv*, %struct.priv** %3, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 %31(i64 %34)
  br label %36

36:                                               ; preds = %28, %1
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.priv*, %struct.priv** %3, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %41(i32 4, i32 %44)
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %36
  %52 = load %struct.vdp_functions*, %struct.vdp_functions** %5, align 8
  %53 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %52, i32 0, i32 0
  %54 = load i32 (i64)*, i32 (i64)** %53, align 8
  %55 = load %struct.priv*, %struct.priv** %3, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 %54(i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %60 = call i32 @CHECK_VDP_WARNING(%struct.ra_hwdec_mapper* %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %51, %36
  %62 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %63 = load %struct.priv*, %struct.priv** %3, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %67 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @gl_check_error(%struct.TYPE_5__* %65, i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.priv*, %struct.priv** %3, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32 (...)*, i32 (...)** %76, align 8
  %78 = call i32 (...) %77()
  br label %79

79:                                               ; preds = %74, %61
  %80 = load %struct.priv*, %struct.priv** %3, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 1
  store i32 0, i32* %81, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %84 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @gl_check_error(%struct.TYPE_5__* %82, i32 %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.priv*, %struct.priv** %3, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mp_vdpau_mixer_destroy(i32 %89)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.ra_hwdec_mapper*, i8*) #1

declare dso_local i32 @gl_check_error(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @mp_vdpau_mixer_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
