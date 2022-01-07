; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_offer_handle_offer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_offer_handle_offer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_data_offer = type { i32 }
%struct.vo_wayland_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Given DND offer with mime type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_data_offer*, i8*)* @data_offer_handle_offer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_offer_handle_offer(i8* %0, %struct.wl_data_offer* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_data_offer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vo_wayland_state*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.wl_data_offer* %1, %struct.wl_data_offer** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %10, %struct.vo_wayland_state** %7, align 8
  %11 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %12 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @mp_event_get_mime_type_score(i32 %15, i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %20 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %26 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %28 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @talloc_free(i32 %29)
  %31 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @talloc_strdup(%struct.vo_wayland_state* %31, i8* %32)
  %34 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %35 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %37 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %38 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %23, %3
  ret void
}

declare dso_local i32 @mp_event_get_mime_type_score(i32, i8*) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @talloc_strdup(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
