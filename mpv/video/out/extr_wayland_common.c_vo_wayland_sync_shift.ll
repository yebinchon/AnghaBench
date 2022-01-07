; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_vo_wayland_sync_shift.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_vo_wayland_sync_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32, %struct.vo_wayland_sync* }
%struct.vo_wayland_sync = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_wayland_sync_shift(%struct.vo_wayland_state* %0) #0 {
  %2 = alloca %struct.vo_wayland_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo_wayland_sync, align 4
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %2, align 8
  %5 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %6 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %14 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %13, i32 0, i32 1
  %15 = load %struct.vo_wayland_sync*, %struct.vo_wayland_sync** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vo_wayland_sync, %struct.vo_wayland_sync* %15, i64 %17
  %19 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %20 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %19, i32 0, i32 1
  %21 = load %struct.vo_wayland_sync*, %struct.vo_wayland_sync** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vo_wayland_sync, %struct.vo_wayland_sync* %21, i64 %24
  %26 = bitcast %struct.vo_wayland_sync* %18 to i8*
  %27 = bitcast %struct.vo_wayland_sync* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 16, i1 false)
  br label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %3, align 4
  br label %9

31:                                               ; preds = %9
  %32 = bitcast %struct.vo_wayland_sync* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 16, i1 false)
  %33 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %34 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %33, i32 0, i32 1
  %35 = load %struct.vo_wayland_sync*, %struct.vo_wayland_sync** %34, align 8
  %36 = getelementptr inbounds %struct.vo_wayland_sync, %struct.vo_wayland_sync* %35, i64 0
  %37 = bitcast %struct.vo_wayland_sync* %36 to i8*
  %38 = bitcast %struct.vo_wayland_sync* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
