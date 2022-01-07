; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_reconfig.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mp_image_params }
%struct.mp_image_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, %struct.mp_image_params*)* @reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfig(%struct.vo* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.mp_image_params*, align 8
  %6 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %4, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %5, align 8
  %7 = load %struct.vo*, %struct.vo** %4, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %6, align 8
  %10 = load %struct.priv*, %struct.priv** %6, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 1
  %12 = call i32 @mp_image_unrefp(i32* %11)
  %13 = load %struct.priv*, %struct.priv** %6, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %18 = bitcast %struct.mp_image_params* %16 to i8*
  %19 = bitcast %struct.mp_image_params* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.vo*, %struct.vo** %4, align 8
  %21 = call i32 @vo_x11_config_vo_window(%struct.vo* %20)
  %22 = load %struct.vo*, %struct.vo** %4, align 8
  %23 = call i32 @resize(%struct.vo* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @mp_image_unrefp(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vo_x11_config_vo_window(%struct.vo*) #1

declare dso_local i32 @resize(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
