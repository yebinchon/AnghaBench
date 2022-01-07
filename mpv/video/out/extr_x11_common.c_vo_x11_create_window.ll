; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_create_window.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i64, i64, i32, i32, i64, i64, i64, i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.mp_rect = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@None = common dso_local global i64 0, align 8
@TrueColor = common dso_local global i32 0, align 4
@AllocNone = common dso_local global i32 0, align 4
@CWBorderPixel = common dso_local global i64 0, align 8
@CWColormap = common dso_local global i64 0, align 8
@CopyFromParent = common dso_local global i32 0, align 4
@WM_DELETE_WINDOW = common dso_local global i32 0, align 4
@XNInputStyle = common dso_local global i32 0, align 4
@XIMPreeditNone = common dso_local global i32 0, align 4
@XIMStatusNone = common dso_local global i32 0, align 4
@XNClientWindow = common dso_local global i32 0, align 4
@XNFocusWindow = common dso_local global i32 0, align 4
@_GTK_THEME_VARIANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dark\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.TYPE_9__*, i64)* @vo_x11_create_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_create_window(%struct.vo* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca %struct.mp_rect, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.vo_x11_state*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x i32], align 4
  %14 = bitcast %struct.mp_rect* %4 to i64*
  store i64 %2, i64* %14, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.vo*, %struct.vo** %5, align 8
  %16 = getelementptr inbounds %struct.vo, %struct.vo* %15, i32 0, i32 0
  %17 = load %struct.vo_x11_state*, %struct.vo_x11_state** %16, align 8
  store %struct.vo_x11_state* %17, %struct.vo_x11_state** %7, align 8
  %18 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %19 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @None, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %26 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %3
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %6, align 8
  %35 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %36 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %39 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @XGetWindowAttributes(i32 %37, i64 %40, %struct.TYPE_8__* %9)
  %42 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %43 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %46 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TrueColor, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = call i32 @XMatchVisualInfo(i32 %44, i32 %47, i32 %49, i32 %50, %struct.TYPE_9__* %51)
  br label %53

53:                                               ; preds = %34, %3
  %54 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %55 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @None, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %61 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %64 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AllocNone, align 4
  %70 = call i64 @XCreateColormap(i32 %62, i64 %65, i32 %68, i32 %69)
  %71 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %72 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %59, %53
  %74 = load i64, i64* @CWBorderPixel, align 8
  %75 = load i64, i64* @CWColormap, align 8
  %76 = or i64 %74, %75
  store i64 %76, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %78 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %79 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %77, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 0, i32* %81, align 8
  %82 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %83 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %73
  %88 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %89 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %87, %73
  %92 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %93 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %4, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %4, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = bitcast %struct.mp_rect* %4 to i64*
  %101 = load i64, i64* %100, align 4
  %102 = call i32 @RC_W(i64 %101)
  %103 = bitcast %struct.mp_rect* %4 to i64*
  %104 = load i64, i64* %103, align 4
  %105 = call i32 @RC_H(i64 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CopyFromParent, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @XCreateWindow(i32 %94, i64 %95, i32 %97, i32 %99, i32 %102, i32 %105, i32 0, i32 %108, i32 %109, i32 %112, i64 %113, %struct.TYPE_10__* %11)
  %115 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %116 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %118 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %119 = load i32, i32* @WM_DELETE_WINDOW, align 4
  %120 = call i32 @XA(%struct.vo_x11_state* %118, i32 %119)
  store i32 %120, i32* %117, align 4
  %121 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %122 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %125 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %128 = call i32 @XSetWMProtocols(i32 %123, i64 %126, i32* %127, i32 1)
  %129 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %130 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  %131 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %132 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %131, i32 0, i32 3
  store i32 1, i32* %132, align 4
  %133 = load %struct.vo*, %struct.vo** %5, align 8
  %134 = call i32 @vo_update_cursor(%struct.vo* %133)
  %135 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %136 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %91
  %140 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %141 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @XNInputStyle, align 4
  %144 = load i32, i32* @XIMPreeditNone, align 4
  %145 = load i32, i32* @XIMStatusNone, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @XNClientWindow, align 4
  %148 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %149 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @XNFocusWindow, align 4
  %152 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %153 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @XCreateIC(i64 %142, i32 %143, i32 %146, i32 %147, i64 %150, i32 %151, i64 %154, i32* null)
  %156 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %157 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %156, i32 0, i32 6
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %139, %91
  %159 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %160 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %177, label %163

163:                                              ; preds = %158
  %164 = load %struct.vo*, %struct.vo** %5, align 8
  %165 = call i32 @vo_x11_update_composition_hint(%struct.vo* %164)
  %166 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %167 = call i32 @vo_x11_set_wm_icon(%struct.vo_x11_state* %166)
  %168 = load %struct.vo*, %struct.vo** %5, align 8
  %169 = call i32 @vo_x11_update_window_title(%struct.vo* %168)
  %170 = load %struct.vo*, %struct.vo** %5, align 8
  %171 = call i32 @vo_x11_dnd_init_window(%struct.vo* %170)
  %172 = load %struct.vo*, %struct.vo** %5, align 8
  %173 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %174 = load i32, i32* @_GTK_THEME_VARIANT, align 4
  %175 = call i32 @XA(%struct.vo_x11_state* %173, i32 %174)
  %176 = call i32 @vo_x11_set_property_utf8(%struct.vo* %172, i32 %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %177

177:                                              ; preds = %163, %158
  %178 = load %struct.vo_x11_state*, %struct.vo_x11_state** %7, align 8
  %179 = call i32 @vo_x11_xembed_update(%struct.vo_x11_state* %178, i32 0)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @XGetWindowAttributes(i32, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @XMatchVisualInfo(i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @XCreateColormap(i32, i64, i32, i32) #1

declare dso_local i64 @XCreateWindow(i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @RC_W(i64) #1

declare dso_local i32 @RC_H(i64) #1

declare dso_local i32 @XA(%struct.vo_x11_state*, i32) #1

declare dso_local i32 @XSetWMProtocols(i32, i64, i32*, i32) #1

declare dso_local i32 @vo_update_cursor(%struct.vo*) #1

declare dso_local i64 @XCreateIC(i64, i32, i32, i32, i64, i32, i64, i32*) #1

declare dso_local i32 @vo_x11_update_composition_hint(%struct.vo*) #1

declare dso_local i32 @vo_x11_set_wm_icon(%struct.vo_x11_state*) #1

declare dso_local i32 @vo_x11_update_window_title(%struct.vo*) #1

declare dso_local i32 @vo_x11_dnd_init_window(%struct.vo*) #1

declare dso_local i32 @vo_x11_set_property_utf8(%struct.vo*, i32, i8*) #1

declare dso_local i32 @vo_x11_xembed_update(%struct.vo_x11_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
