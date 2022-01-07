; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32, %struct.priv_owner* }
%struct.priv_owner = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.ra_hwdec* %0) #0 {
  %2 = alloca %struct.ra_hwdec*, align 8
  %3 = alloca %struct.priv_owner*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %2, align 8
  %4 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %5 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %4, i32 0, i32 1
  %6 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  store %struct.priv_owner* %6, %struct.priv_owner** %3, align 8
  %7 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %8 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %13 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %16 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @hwdec_devices_remove(i32 %14, i32* %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %22 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @va_destroy(%struct.TYPE_2__* %23)
  ret void
}

declare dso_local i32 @hwdec_devices_remove(i32, i32*) #1

declare dso_local i32 @va_destroy(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
