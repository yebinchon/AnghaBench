; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_rpi.c_upload.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_rpi.c_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { %struct.priv* }
%struct.priv = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mp_image = type { i32, i8** }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Can't allocate buffer.\0A\00", align 1
@free_mmal_buffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@IMGFMT_MMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.ra_hwdec*, %struct.mp_image*)* @upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @upload(%struct.ra_hwdec* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.ra_hwdec*, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.mp_image*, align 8
  %9 = alloca %struct.mp_image, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %4, align 8
  store %struct.mp_image* %1, %struct.mp_image** %5, align 8
  %10 = load %struct.ra_hwdec*, %struct.ra_hwdec** %4, align 8
  %11 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %6, align 8
  %13 = load %struct.priv*, %struct.priv** %6, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_9__* @mmal_queue_wait(i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.ra_hwdec*, %struct.ra_hwdec** %4, align 8
  %23 = call i32 @MP_ERR(%struct.ra_hwdec* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = call i32 @mmal_buffer_header_reset(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = load i32, i32* @free_mmal_buffer, align 4
  %29 = call %struct.mp_image* @mp_image_new_custom_ref(i32* null, %struct.TYPE_9__* %27, i32 %28)
  store %struct.mp_image* %29, %struct.mp_image** %8, align 8
  %30 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %31 = icmp ne %struct.mp_image* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = call i32 @mmal_buffer_header_release(%struct.TYPE_9__* %33)
  %35 = load %struct.ra_hwdec*, %struct.ra_hwdec** %4, align 8
  %36 = call i32 @MP_ERR(%struct.ra_hwdec* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %57

37:                                               ; preds = %24
  %38 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %39 = load i32, i32* @IMGFMT_MMAL, align 4
  %40 = call i32 @mp_image_setfmt(%struct.mp_image* %38, i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = bitcast %struct.TYPE_9__* %41 to i8*
  %43 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %44 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  store i8* %42, i8** %46, align 8
  %47 = bitcast %struct.mp_image* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 16, i1 false)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = load %struct.priv*, %struct.priv** %6, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 0
  %51 = call i32 @layout_buffer(%struct.mp_image* %9, %struct.TYPE_9__* %48, i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %55 = call i32 @mp_image_copy(%struct.mp_image* %9, %struct.mp_image* %54)
  %56 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  store %struct.mp_image* %56, %struct.mp_image** %3, align 8
  br label %57

57:                                               ; preds = %37, %32, %21
  %58 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  ret %struct.mp_image* %58
}

declare dso_local %struct.TYPE_9__* @mmal_queue_wait(i32) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec*, i8*) #1

declare dso_local i32 @mmal_buffer_header_reset(%struct.TYPE_9__*) #1

declare dso_local %struct.mp_image* @mp_image_new_custom_ref(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_9__*) #1

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @layout_buffer(%struct.mp_image*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @mp_image_copy(%struct.mp_image*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
