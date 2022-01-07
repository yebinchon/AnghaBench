; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_mapper_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_mapper_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv_owner* }
%struct.priv_owner = type { i32 (%struct.ra_hwdec_mapper*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*)* @mapper_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_uninit(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.priv_owner*, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %4 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %5 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.priv_owner*, %struct.priv_owner** %7, align 8
  store %struct.priv_owner* %8, %struct.priv_owner** %3, align 8
  %9 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %10 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %9, i32 0, i32 0
  %11 = load i32 (%struct.ra_hwdec_mapper*)*, i32 (%struct.ra_hwdec_mapper*)** %10, align 8
  %12 = icmp ne i32 (%struct.ra_hwdec_mapper*)* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %15 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %14, i32 0, i32 0
  %16 = load i32 (%struct.ra_hwdec_mapper*)*, i32 (%struct.ra_hwdec_mapper*)** %15, align 8
  %17 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %18 = call i32 %16(%struct.ra_hwdec_mapper* %17)
  br label %19

19:                                               ; preds = %13, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
