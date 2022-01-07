; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_hwdec.c_ra_hwdec_mapper_free.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_hwdec.c_ra_hwdec_mapper_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ra_hwdec_mapper*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_hwdec_mapper_free(%struct.ra_hwdec_mapper** %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper**, align 8
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  store %struct.ra_hwdec_mapper** %0, %struct.ra_hwdec_mapper*** %2, align 8
  %4 = load %struct.ra_hwdec_mapper**, %struct.ra_hwdec_mapper*** %2, align 8
  %5 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  store %struct.ra_hwdec_mapper* %5, %struct.ra_hwdec_mapper** %3, align 8
  %6 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %7 = icmp ne %struct.ra_hwdec_mapper* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %10 = call i32 @ra_hwdec_mapper_unmap(%struct.ra_hwdec_mapper* %9)
  %11 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ra_hwdec_mapper*)*, i32 (%struct.ra_hwdec_mapper*)** %14, align 8
  %16 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %17 = call i32 %15(%struct.ra_hwdec_mapper* %16)
  %18 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %19 = call i32 @talloc_free(%struct.ra_hwdec_mapper* %18)
  br label %20

20:                                               ; preds = %8, %1
  %21 = load %struct.ra_hwdec_mapper**, %struct.ra_hwdec_mapper*** %2, align 8
  store %struct.ra_hwdec_mapper* null, %struct.ra_hwdec_mapper** %21, align 8
  ret void
}

declare dso_local i32 @ra_hwdec_mapper_unmap(%struct.ra_hwdec_mapper*) #1

declare dso_local i32 @talloc_free(%struct.ra_hwdec_mapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
