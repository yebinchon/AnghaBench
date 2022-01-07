; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_set_res.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_set_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpgl_osd = type { %struct.mp_osd_res }
%struct.mp_osd_res = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpgl_osd*, i64, i32)* @set_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_res(%struct.mpgl_osd* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mp_osd_res, align 4
  %5 = alloca %struct.mpgl_osd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = bitcast %struct.mp_osd_res* %4 to i64*
  store i64 %1, i64* %8, align 4
  store %struct.mpgl_osd* %0, %struct.mpgl_osd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %11 = call i32 @get_3d_side_by_side(i32 %9, i32* %10)
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mpgl_osd*, %struct.mpgl_osd** %5, align 8
  %23 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %22, i32 0, i32 0
  %24 = bitcast %struct.mp_osd_res* %23 to i8*
  %25 = bitcast %struct.mp_osd_res* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 8, i1 false)
  ret void
}

declare dso_local i32 @get_3d_side_by_side(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
