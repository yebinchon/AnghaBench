; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_set_params.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { %struct.mp_image_params }
%struct.mp_image_params = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_image_set_params(%struct.mp_image* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.mp_image_params*, align 8
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %4, align 8
  %5 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %6 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %7 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mp_image_setfmt(%struct.mp_image* %5, i32 %8)
  %10 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %11 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %12 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %15 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mp_image_set_size(%struct.mp_image* %10, i32 %13, i32 %16)
  %18 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %19 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %18, i32 0, i32 0
  %20 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %21 = bitcast %struct.mp_image_params* %19 to i8*
  %22 = bitcast %struct.mp_image_params* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  ret void
}

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
