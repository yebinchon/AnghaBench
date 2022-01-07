; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_check_for_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_check_for_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32, i64, i64, i64 }

@XDG_TOPLEVEL_RESIZE_EDGE_LEFT = common dso_local global i32 0, align 4
@XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT = common dso_local global i32 0, align 4
@XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT = common dso_local global i32 0, align 4
@XDG_TOPLEVEL_RESIZE_EDGE_RIGHT = common dso_local global i32 0, align 4
@XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT = common dso_local global i32 0, align 4
@XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT = common dso_local global i32 0, align 4
@XDG_TOPLEVEL_RESIZE_EDGE_TOP = common dso_local global i32 0, align 4
@XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_wayland_state*, i32, i32, i32*)* @check_for_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_resize(%struct.vo_wayland_state* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vo_wayland_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %22 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %27 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20, %4
  store i32 0, i32* %5, align 4
  br label %119

31:                                               ; preds = %25
  store i32 64, i32* %10, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @wl_fixed_to_double(i32 %33)
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds i32, i32* %32, i64 1
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @wl_fixed_to_double(i32 %36)
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 64
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 64
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %49 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mp_rect_w(i32 %50)
  %52 = sub nsw i32 %51, 64
  %53 = icmp sgt i32 %47, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %58 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @mp_rect_h(i32 %59)
  %61 = sub nsw i32 %60, 64
  %62 = icmp sgt i32 %56, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %31
  %67 = load i32, i32* @XDG_TOPLEVEL_RESIZE_EDGE_LEFT, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %81

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %71
  br label %118

82:                                               ; preds = %31
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load i32, i32* @XDG_TOPLEVEL_RESIZE_EDGE_RIGHT, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  br label %100

93:                                               ; preds = %85
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %90
  br label %117

101:                                              ; preds = %82
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @XDG_TOPLEVEL_RESIZE_EDGE_TOP, align 4
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  br label %116

107:                                              ; preds = %101
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  br label %115

113:                                              ; preds = %107
  %114 = load i32*, i32** %9, align 8
  store i32 0, i32* %114, align 4
  store i32 0, i32* %5, align 4
  br label %119

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115, %104
  br label %117

117:                                              ; preds = %116, %100
  br label %118

118:                                              ; preds = %117, %81
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %113, %30
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @wl_fixed_to_double(i32) #1

declare dso_local i32 @mp_rect_w(i32) #1

declare dso_local i32 @mp_rect_h(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
