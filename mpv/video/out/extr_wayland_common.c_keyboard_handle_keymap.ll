; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_keyboard_handle_keymap.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_keyboard_handle_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_keyboard = type { i32 }
%struct.vo_wayland_state = type { i32*, i32, i32 }

@WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@XKB_KEYMAP_FORMAT_TEXT_V1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to compile keymap\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to create XKB state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i64, i32, i64)* @keyboard_handle_keymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboard_handle_keymap(i8* %0, %struct.wl_keyboard* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_keyboard*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.vo_wayland_state*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %14, %struct.vo_wayland_state** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @close(i32 %19)
  br label %74

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @MAP_SHARED, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i8* @mmap(i32* null, i64 %22, i32 %23, i32 %24, i32 %25, i32 0)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** @MAP_FAILED, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @close(i32 %31)
  br label %74

33:                                               ; preds = %21
  %34 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %35 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @XKB_KEYMAP_FORMAT_TEXT_V1, align 4
  %39 = call i32* @xkb_keymap_new_from_string(i32 %36, i8* %37, i32 %38, i32 0)
  %40 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %41 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @munmap(i8* %42, i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %48 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %33
  %52 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %53 = call i32 @MP_ERR(%struct.vo_wayland_state* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %74

54:                                               ; preds = %33
  %55 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %56 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @xkb_state_new(i32* %57)
  %59 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %60 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %62 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %54
  %66 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %67 = call i32 @MP_ERR(%struct.vo_wayland_state* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %69 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @xkb_keymap_unref(i32* %70)
  %72 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %73 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %18, %30, %51, %65, %54
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32* @xkb_keymap_new_from_string(i32, i8*, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @MP_ERR(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32 @xkb_state_new(i32*) #1

declare dso_local i32 @xkb_keymap_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
