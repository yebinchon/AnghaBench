; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_draw_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.priv* }
%struct.priv = type { %struct.mp_image*, i32, i32, %struct.mp_rect, i32 }
%struct.mp_rect = type { i8*, i8* }
%struct.mp_image = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.mp_image*)* @draw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_image(%struct.vo* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.mp_image, align 4
  %7 = alloca %struct.mp_image, align 4
  %8 = alloca %struct.mp_rect, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %9 = load %struct.vo*, %struct.vo** %3, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 1
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %5, align 8
  %12 = load %struct.vo*, %struct.vo** %3, align 8
  %13 = call i32 @wait_for_completion(%struct.vo* %12, i32 1)
  %14 = load %struct.priv*, %struct.priv** %5, align 8
  %15 = load %struct.priv*, %struct.priv** %5, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  call void @get_x_buffer(%struct.mp_image* sret %6, %struct.priv* %14, i32 %17)
  %18 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %19 = icmp ne %struct.mp_image* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %2
  %21 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %22 = bitcast %struct.mp_image* %7 to i8*
  %23 = bitcast %struct.mp_image* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 20, i1 false)
  %24 = load %struct.priv*, %struct.priv** %5, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 3
  %26 = bitcast %struct.mp_rect* %8 to i8*
  %27 = bitcast %struct.mp_rect* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %8, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %7, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @MP_ALIGN_DOWN(i8* %29, i32 %32)
  %34 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %8, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %8, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %7, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @MP_ALIGN_DOWN(i8* %36, i32 %39)
  %41 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %8, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = bitcast %struct.mp_rect* %8 to { i8*, i8* }*
  %43 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %42, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @mp_image_crop_rc(%struct.mp_image* %7, i8* %44, i8* %46)
  %48 = load %struct.priv*, %struct.priv** %5, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mp_sws_scale(i32 %50, %struct.mp_image* %6, %struct.mp_image* %7)
  br label %58

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mp_image_clear(%struct.mp_image* %6, i32 0, i32 0, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %52, %20
  %59 = load %struct.vo*, %struct.vo** %3, align 8
  %60 = getelementptr inbounds %struct.vo, %struct.vo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.priv*, %struct.priv** %5, align 8
  %63 = getelementptr inbounds %struct.priv, %struct.priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %66 = icmp ne %struct.mp_image* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %69 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 0, %71 ]
  %74 = call i32 @osd_draw_on_image(i32 %61, i32 %64, i32 %73, i32 0, %struct.mp_image* %6)
  %75 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %76 = load %struct.priv*, %struct.priv** %5, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 0
  %78 = load %struct.mp_image*, %struct.mp_image** %77, align 8
  %79 = icmp ne %struct.mp_image* %75, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.priv*, %struct.priv** %5, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 0
  %83 = load %struct.mp_image*, %struct.mp_image** %82, align 8
  %84 = call i32 @talloc_free(%struct.mp_image* %83)
  %85 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %86 = load %struct.priv*, %struct.priv** %5, align 8
  %87 = getelementptr inbounds %struct.priv, %struct.priv* %86, i32 0, i32 0
  store %struct.mp_image* %85, %struct.mp_image** %87, align 8
  br label %88

88:                                               ; preds = %80, %72
  ret void
}

declare dso_local i32 @wait_for_completion(%struct.vo*, i32) #1

declare dso_local void @get_x_buffer(%struct.mp_image* sret, %struct.priv*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @MP_ALIGN_DOWN(i8*, i32) #1

declare dso_local i32 @mp_image_crop_rc(%struct.mp_image*, i8*, i8*) #1

declare dso_local i32 @mp_sws_scale(i32, %struct.mp_image*, %struct.mp_image*) #1

declare dso_local i32 @mp_image_clear(%struct.mp_image*, i32, i32, i32, i32) #1

declare dso_local i32 @osd_draw_on_image(i32, i32, i32, i32, %struct.mp_image*) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
