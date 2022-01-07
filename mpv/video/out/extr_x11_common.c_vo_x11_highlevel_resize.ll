; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_highlevel_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_highlevel_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, %struct.mp_vo_opts* }
%struct.vo_x11_state = type { i32, i32, %struct.mp_rect }
%struct.mp_rect = type { i64, i64, i64, i64 }
%struct.mp_vo_opts = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.mp_rect*)* @vo_x11_highlevel_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_highlevel_resize(%struct.vo* %0, %struct.mp_rect* byval(%struct.mp_rect) align 8 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.mp_vo_opts*, align 8
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 1
  %9 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %8, align 8
  store %struct.mp_vo_opts* %9, %struct.mp_vo_opts** %4, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 0
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %11, align 8
  store %struct.vo_x11_state* %12, %struct.vo_x11_state** %5, align 8
  %13 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %4, align 8
  %14 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %20 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %19, i32 0, i32 2
  %21 = bitcast %struct.mp_rect* %20 to i8*
  %22 = bitcast %struct.mp_rect* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false)
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %25 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @RC_W(%struct.mp_rect* byval(%struct.mp_rect) align 8 %1)
  %29 = add nsw i64 %27, %28
  %30 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %31 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %31, i32 0, i32 3
  store i64 %29, i64* %32, align 8
  %33 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %34 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @RC_H(%struct.mp_rect* byval(%struct.mp_rect) align 8 %1)
  %38 = add nsw i64 %36, %37
  %39 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %40 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %23, %18
  %43 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %4, align 8
  %44 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %49 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %52 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vo*, %struct.vo** %3, align 8
  %54 = call i32 @vo_x11_sizehint(%struct.vo* %53, %struct.mp_rect* byval(%struct.mp_rect) align 8 %1, i32 0)
  br label %59

55:                                               ; preds = %42
  %56 = load %struct.vo*, %struct.vo** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @vo_x11_move_resize(%struct.vo* %56, i32 %57, i32 1, %struct.mp_rect* byval(%struct.mp_rect) align 8 %1)
  br label %59

59:                                               ; preds = %55, %47
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @RC_W(%struct.mp_rect* byval(%struct.mp_rect) align 8) #2

declare dso_local i64 @RC_H(%struct.mp_rect* byval(%struct.mp_rect) align 8) #2

declare dso_local i32 @vo_x11_sizehint(%struct.vo*, %struct.mp_rect* byval(%struct.mp_rect) align 8, i32) #2

declare dso_local i32 @vo_x11_move_resize(%struct.vo*, i32, i32, %struct.mp_rect* byval(%struct.mp_rect) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
