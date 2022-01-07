; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_draw_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_draw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.priv* }
%struct.priv = type { i32, %struct.mp_image*, %struct.TYPE_10__*, i32, %struct.TYPE_9__, i32, i32 }
%struct.mp_image = type { i64, i32, i8**, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.vo_frame = type { i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@IMGFMT_MMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Can't allocate buffer.\0A\00", align 1
@free_mmal_buffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.vo_frame*)* @draw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_frame(%struct.vo* %0, %struct.vo_frame* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.mp_image*, align 8
  %9 = alloca %struct.mp_image, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.vo_frame* %1, %struct.vo_frame** %4, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %5, align 8
  %13 = load %struct.priv*, %struct.priv** %5, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %146

18:                                               ; preds = %2
  store %struct.mp_image* null, %struct.mp_image** %6, align 8
  %19 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %20 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %25 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %30 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.mp_image* @mp_image_new_ref(i32 %31)
  store %struct.mp_image* %32, %struct.mp_image** %6, align 8
  br label %33

33:                                               ; preds = %28, %23, %18
  %34 = load %struct.priv*, %struct.priv** %5, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 1
  %36 = load %struct.mp_image*, %struct.mp_image** %35, align 8
  %37 = call i32 @talloc_free(%struct.mp_image* %36)
  %38 = load %struct.priv*, %struct.priv** %5, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 1
  store %struct.mp_image* null, %struct.mp_image** %39, align 8
  %40 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %41 = icmp ne %struct.mp_image* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %44 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.priv*, %struct.priv** %5, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %33
  %49 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %50 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %55 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = load %struct.priv*, %struct.priv** %5, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.priv*, %struct.priv** %5, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = load %struct.priv*, %struct.priv** %5, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.vo*, %struct.vo** %3, align 8
  %75 = call i32 @update_osd(%struct.vo* %74)
  br label %76

76:                                               ; preds = %73, %67, %58
  %77 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %78 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.priv*, %struct.priv** %5, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %83 = icmp ne %struct.mp_image* %82, null
  br i1 %83, label %84, label %142

84:                                               ; preds = %76
  %85 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %86 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IMGFMT_MMAL, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %142

90:                                               ; preds = %84
  %91 = load %struct.priv*, %struct.priv** %5, align 8
  %92 = getelementptr inbounds %struct.priv, %struct.priv* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.TYPE_11__* @mmal_queue_wait(i32 %95)
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %7, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = icmp ne %struct.TYPE_11__* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %90
  %100 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %101 = call i32 @talloc_free(%struct.mp_image* %100)
  %102 = load %struct.vo*, %struct.vo** %3, align 8
  %103 = call i32 @MP_ERR(%struct.vo* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %146

104:                                              ; preds = %90
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %106 = call i32 @mmal_buffer_header_reset(%struct.TYPE_11__* %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = load i32, i32* @free_mmal_buffer, align 4
  %109 = call %struct.mp_image* @mp_image_new_custom_ref(i32* null, %struct.TYPE_11__* %107, i32 %108)
  store %struct.mp_image* %109, %struct.mp_image** %8, align 8
  %110 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %111 = icmp ne %struct.mp_image* %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %104
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = call i32 @mmal_buffer_header_release(%struct.TYPE_11__* %113)
  %115 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %116 = call i32 @talloc_free(%struct.mp_image* %115)
  %117 = load %struct.vo*, %struct.vo** %3, align 8
  %118 = call i32 @MP_ERR(%struct.vo* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %146

119:                                              ; preds = %104
  %120 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %121 = load i64, i64* @IMGFMT_MMAL, align 8
  %122 = call i32 @mp_image_setfmt(%struct.mp_image* %120, i64 %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = bitcast %struct.TYPE_11__* %123 to i8*
  %125 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %126 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %125, i32 0, i32 2
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 3
  store i8* %124, i8** %128, align 8
  %129 = bitcast %struct.mp_image* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %129, i8 0, i64 32, i1 false)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = load %struct.vo*, %struct.vo** %3, align 8
  %132 = getelementptr inbounds %struct.vo, %struct.vo* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @layout_buffer(%struct.mp_image* %9, %struct.TYPE_11__* %130, i32 %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %138 = call i32 @mp_image_copy(%struct.mp_image* %9, %struct.mp_image* %137)
  %139 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %140 = call i32 @talloc_free(%struct.mp_image* %139)
  %141 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  store %struct.mp_image* %141, %struct.mp_image** %6, align 8
  br label %142

142:                                              ; preds = %119, %84, %76
  %143 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %144 = load %struct.priv*, %struct.priv** %5, align 8
  %145 = getelementptr inbounds %struct.priv, %struct.priv* %144, i32 0, i32 1
  store %struct.mp_image* %143, %struct.mp_image** %145, align 8
  br label %146

146:                                              ; preds = %142, %112, %99, %17
  ret void
}

declare dso_local %struct.mp_image* @mp_image_new_ref(i32) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i32 @update_osd(%struct.vo*) #1

declare dso_local %struct.TYPE_11__* @mmal_queue_wait(i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @mmal_buffer_header_reset(%struct.TYPE_11__*) #1

declare dso_local %struct.mp_image* @mp_image_new_custom_ref(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_11__*) #1

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @layout_buffer(%struct.mp_image*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @mp_image_copy(%struct.mp_image*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
