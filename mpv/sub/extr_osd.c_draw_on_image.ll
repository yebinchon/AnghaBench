; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd.c_draw_on_image.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd.c_draw_on_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_bitmaps = type { i32 }
%struct.draw_on_image_closure = type { i32, i32, i32, %struct.osd_state* }
%struct.osd_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sub_bitmaps*)* @draw_on_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_on_image(i8* %0, %struct.sub_bitmaps* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sub_bitmaps*, align 8
  %5 = alloca %struct.draw_on_image_closure*, align 8
  %6 = alloca %struct.osd_state*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sub_bitmaps* %1, %struct.sub_bitmaps** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.draw_on_image_closure*
  store %struct.draw_on_image_closure* %8, %struct.draw_on_image_closure** %5, align 8
  %9 = load %struct.draw_on_image_closure*, %struct.draw_on_image_closure** %5, align 8
  %10 = getelementptr inbounds %struct.draw_on_image_closure, %struct.draw_on_image_closure* %9, i32 0, i32 3
  %11 = load %struct.osd_state*, %struct.osd_state** %10, align 8
  store %struct.osd_state* %11, %struct.osd_state** %6, align 8
  %12 = load %struct.draw_on_image_closure*, %struct.draw_on_image_closure** %5, align 8
  %13 = getelementptr inbounds %struct.draw_on_image_closure, %struct.draw_on_image_closure* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.draw_on_image_closure*, %struct.draw_on_image_closure** %5, align 8
  %16 = getelementptr inbounds %struct.draw_on_image_closure, %struct.draw_on_image_closure* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mp_image_pool_make_writeable(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %23 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %22, i32 0, i32 0
  %24 = load %struct.draw_on_image_closure*, %struct.draw_on_image_closure** %5, align 8
  %25 = getelementptr inbounds %struct.draw_on_image_closure, %struct.draw_on_image_closure* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %4, align 8
  %28 = call i32 @mp_draw_sub_bitmaps(i32* %23, i32 %26, %struct.sub_bitmaps* %27)
  %29 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %30 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %31 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @talloc_steal(%struct.osd_state* %29, i32 %32)
  %34 = load %struct.draw_on_image_closure*, %struct.draw_on_image_closure** %5, align 8
  %35 = getelementptr inbounds %struct.draw_on_image_closure, %struct.draw_on_image_closure* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @mp_image_pool_make_writeable(i32, i32) #1

declare dso_local i32 @mp_draw_sub_bitmaps(i32*, i32, %struct.sub_bitmaps*) #1

declare dso_local i32 @talloc_steal(%struct.osd_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
