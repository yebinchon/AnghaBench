; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_draw_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.xvctx* }
%struct.xvctx = type { %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.mp_image = type { i32, i32 }
%struct.mp_osd_res = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.TYPE_5__*)* @draw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_image(%struct.vo* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.xvctx*, align 8
  %6 = alloca %struct.mp_image, align 4
  %7 = alloca %struct.mp_osd_res, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.vo*, %struct.vo** %3, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 2
  %10 = load %struct.xvctx*, %struct.xvctx** %9, align 8
  store %struct.xvctx* %10, %struct.xvctx** %5, align 8
  %11 = load %struct.vo*, %struct.vo** %3, align 8
  %12 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %13 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i32 @wait_for_completion(%struct.vo* %11, i64 %15)
  %17 = load %struct.vo*, %struct.vo** %3, align 8
  %18 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %19 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @get_xv_buffer(%struct.vo* %17, i32 %20)
  %22 = bitcast %struct.mp_image* %6 to i64*
  store i64 %21, i64* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = call i32 @mp_image_copy(%struct.mp_image* %6, %struct.TYPE_5__* %26)
  br label %34

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mp_image_clear(%struct.mp_image* %6, i32 0, i32 0, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load %struct.vo*, %struct.vo** %3, align 8
  %36 = getelementptr inbounds %struct.vo, %struct.vo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @osd_res_from_image_params(i32 %37)
  %39 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %7, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.vo*, %struct.vo** %3, align 8
  %41 = getelementptr inbounds %struct.vo, %struct.vo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %50

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 0, %49 ]
  %52 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @osd_draw_on_image(i32 %42, i32 %53, i32 %51, i32 0, %struct.mp_image* %6)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %57 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %62 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i32 @talloc_free(%struct.TYPE_5__* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %67 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %66, i32 0, i32 0
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %67, align 8
  br label %68

68:                                               ; preds = %60, %50
  ret void
}

declare dso_local i32 @wait_for_completion(%struct.vo*, i64) #1

declare dso_local i64 @get_xv_buffer(%struct.vo*, i32) #1

declare dso_local i32 @mp_image_copy(%struct.mp_image*, %struct.TYPE_5__*) #1

declare dso_local i32 @mp_image_clear(%struct.mp_image*, i32, i32, i32, i32) #1

declare dso_local i32 @osd_res_from_image_params(i32) #1

declare dso_local i32 @osd_draw_on_image(i32, i32, i32, i32, %struct.mp_image*) #1

declare dso_local i32 @talloc_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
