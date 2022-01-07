; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_mpgl_osd_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_mpgl_osd_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpgl_osd = type { i32, %struct.mpgl_osd_part** }
%struct.mpgl_osd_part = type { i32 }

@MAX_OSD_PARTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpgl_osd_destroy(%struct.mpgl_osd* %0) #0 {
  %2 = alloca %struct.mpgl_osd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpgl_osd_part*, align 8
  store %struct.mpgl_osd* %0, %struct.mpgl_osd** %2, align 8
  %5 = load %struct.mpgl_osd*, %struct.mpgl_osd** %2, align 8
  %6 = icmp ne %struct.mpgl_osd* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %27, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_OSD_PARTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.mpgl_osd*, %struct.mpgl_osd** %2, align 8
  %15 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %14, i32 0, i32 1
  %16 = load %struct.mpgl_osd_part**, %struct.mpgl_osd_part*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %16, i64 %18
  %20 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %19, align 8
  store %struct.mpgl_osd_part* %20, %struct.mpgl_osd_part** %4, align 8
  %21 = load %struct.mpgl_osd*, %struct.mpgl_osd** %2, align 8
  %22 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %25 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %24, i32 0, i32 0
  %26 = call i32 @ra_tex_free(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load %struct.mpgl_osd*, %struct.mpgl_osd** %2, align 8
  %32 = call i32 @talloc_free(%struct.mpgl_osd* %31)
  br label %33

33:                                               ; preds = %30, %7
  ret void
}

declare dso_local i32 @ra_tex_free(i32, i32*) #1

declare dso_local i32 @talloc_free(%struct.mpgl_osd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
