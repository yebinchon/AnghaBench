; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_read_output_surface.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_read_output_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i8**, i32* }
%struct.vo = type { i32, %struct.vdpctx* }
%struct.vdpctx = type { %struct.vdp_functions* }
%struct.vdp_functions = type { i64 (i32, i64*, i32*, i32*)*, i64 (i32, i32*, i8**, i32*)* }

@VDP_STATUS_OK = common dso_local global i64 0, align 8
@OUTPUT_RGBA_FORMAT = common dso_local global i64 0, align 8
@IMGFMT_BGR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Error when calling vdp_output_surface_get_bits_native\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.vo*, i32)* @read_output_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @read_output_surface(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vdpctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vdp_functions*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mp_image*, align 8
  %13 = alloca [1 x i8*], align 8
  %14 = alloca [1 x i32], align 4
  store %struct.vo* %0, %struct.vo** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.vo*, %struct.vo** %4, align 8
  %16 = getelementptr inbounds %struct.vo, %struct.vo* %15, i32 0, i32 1
  %17 = load %struct.vdpctx*, %struct.vdpctx** %16, align 8
  store %struct.vdpctx* %17, %struct.vdpctx** %6, align 8
  %18 = load %struct.vdpctx*, %struct.vdpctx** %6, align 8
  %19 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %18, i32 0, i32 0
  %20 = load %struct.vdp_functions*, %struct.vdp_functions** %19, align 8
  store %struct.vdp_functions* %20, %struct.vdp_functions** %8, align 8
  %21 = load %struct.vo*, %struct.vo** %4, align 8
  %22 = getelementptr inbounds %struct.vo, %struct.vo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %72

26:                                               ; preds = %2
  %27 = load %struct.vdp_functions*, %struct.vdp_functions** %8, align 8
  %28 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %27, i32 0, i32 0
  %29 = load i64 (i32, i64*, i32*, i32*)*, i64 (i32, i64*, i32*, i32*)** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 %29(i32 %30, i64* %9, i32* %10, i32* %11)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @VDP_STATUS_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %72

36:                                               ; preds = %26
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @OUTPUT_RGBA_FORMAT, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @IMGFMT_BGR0, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.mp_image* @mp_image_alloc(i32 %42, i32 %43, i32 %44)
  store %struct.mp_image* %45, %struct.mp_image** %12, align 8
  %46 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %47 = icmp ne %struct.mp_image* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %72

49:                                               ; preds = %36
  %50 = getelementptr inbounds [1 x i8*], [1 x i8*]* %13, i64 0, i64 0
  %51 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %52 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %50, align 8
  %56 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %57 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %58 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %56, align 4
  %62 = load %struct.vdp_functions*, %struct.vdp_functions** %8, align 8
  %63 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %62, i32 0, i32 1
  %64 = load i64 (i32, i32*, i8**, i32*)*, i64 (i32, i32*, i8**, i32*)** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = getelementptr inbounds [1 x i8*], [1 x i8*]* %13, i64 0, i64 0
  %67 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %68 = call i64 %64(i32 %65, i32* null, i8** %66, i32* %67)
  store i64 %68, i64* %7, align 8
  %69 = load %struct.vo*, %struct.vo** %4, align 8
  %70 = call i32 @CHECK_VDP_WARNING(%struct.vo* %69, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  store %struct.mp_image* %71, %struct.mp_image** %3, align 8
  br label %72

72:                                               ; preds = %49, %48, %35, %25
  %73 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  ret %struct.mp_image* %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.mp_image* @mp_image_alloc(i32, i32, i32) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
