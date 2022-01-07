; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_keyboard_handle_key.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_keyboard_handle_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_keyboard = type { i32 }
%struct.vo_wayland_state = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WL_KEYBOARD_KEY_STATE_PRESSED = common dso_local global i64 0, align 8
@MP_KEY_STATE_DOWN = common dso_local global i32 0, align 4
@MP_KEY_STATE_UP = common dso_local global i32 0, align 4
@keyboard_handle_key.mod_names = internal global [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* inttoptr (i64 130 to i8*), i8* inttoptr (i64 131 to i8*), i8* inttoptr (i64 129 to i8*), i8* null], align 16
@keyboard_handle_key.mods = internal global [5 x i32] [i32 132, i32 134, i32 135, i32 133, i32 0], align 16
@XKB_STATE_MODS_DEPRESSED = common dso_local global i32 0, align 4
@code = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i64, i64, i64, i64)* @keyboard_handle_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboard_handle_key(i8* %0, %struct.wl_keyboard* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_keyboard*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vo_wayland_state*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [128 x i8], align 16
  store i8* %0, i8** %7, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %22, %struct.vo_wayland_state** %13, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add nsw i64 %23, 8
  store i64 %24, i64* %14, align 8
  store i64 %24, i64* %14, align 8
  %25 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %26 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @xkb_state_key_get_one_sym(i32 %27, i64 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @WL_KEYBOARD_KEY_STATE_PRESSED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  br label %37

35:                                               ; preds = %6
  %36 = load i32, i32* @MP_KEY_STATE_UP, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %77, %37
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* @keyboard_handle_key.mods, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %39
  %46 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %47 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [5 x i8*], [5 x i8*]* @keyboard_handle_key.mod_names, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @xkb_keymap_mod_get_index(i32 %48, i8* %52)
  store i32 %53, i32* %18, align 4
  %54 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %55 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @xkb_state_mod_index_is_consumed(i32 %56, i64 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %45
  %62 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %63 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @XKB_STATE_MODS_DEPRESSED, align 4
  %67 = call i64 @xkb_state_mod_index_is_active(i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* @keyboard_handle_key.mods, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %16, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %69, %61, %45
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %39

80:                                               ; preds = %39
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @lookupkey(i32 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %87 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %16, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @mp_input_put_key(i32 %90, i32 %93)
  br label %111

95:                                               ; preds = %80
  %96 = load i32, i32* %15, align 4
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %98 = call i64 @xkb_keysym_to_utf8(i32 %96, i8* %97, i32 128)
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %102 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %16, align 4
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %108 = call i32 @bstr0(i8* %107)
  %109 = call i32 @mp_input_put_key_utf8(i32 %105, i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %100, %95
  br label %111

111:                                              ; preds = %110, %85
  ret void
}

declare dso_local i32 @xkb_state_key_get_one_sym(i32, i64) #1

declare dso_local i32 @xkb_keymap_mod_get_index(i32, i8*) #1

declare dso_local i32 @xkb_state_mod_index_is_consumed(i32, i64, i32) #1

declare dso_local i64 @xkb_state_mod_index_is_active(i32, i32, i32) #1

declare dso_local i32 @lookupkey(i32) #1

declare dso_local i32 @mp_input_put_key(i32, i32) #1

declare dso_local i64 @xkb_keysym_to_utf8(i32, i8*, i32) #1

declare dso_local i32 @mp_input_put_key_utf8(i32, i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
