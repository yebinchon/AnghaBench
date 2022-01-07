; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_handle_mouse.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_handle_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i16 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i16, i16 }

@MOUSE_SHOW = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_19__ zeroinitializer, align 2
@Ph_EV_PTR_MOTION_NOBUTTON = common dso_local global i32 0, align 4
@Pt_CONTINUE = common dso_local global i32 0, align 4
@Pk_KM_Shift = common dso_local global i32 0, align 4
@MOUSE_SHIFT = common dso_local global i32 0, align 4
@Pk_KM_Ctrl = common dso_local global i32 0, align 4
@MOUSE_CTRL = common dso_local global i32 0, align 4
@Pk_KM_Alt = common dso_local global i32 0, align 4
@MOUSE_ALT = common dso_local global i32 0, align 4
@Ph_BUTTON_SELECT = common dso_local global i32 0, align 4
@MOUSE_LEFT = common dso_local global i32 0, align 4
@Ph_BUTTON_MENU = common dso_local global i32 0, align 4
@MOUSE_RIGHT = common dso_local global i32 0, align 4
@abs_mouse = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@Ph_BUTTON_ADJUST = common dso_local global i32 0, align 4
@MOUSE_MIDDLE = common dso_local global i32 0, align 4
@Ph_EV_BUT_RELEASE = common dso_local global i32 0, align 4
@MOUSE_RELEASE = common dso_local global i32 0, align 4
@Ph_EV_PTR_MOTION_BUTTON = common dso_local global i32 0, align 4
@MOUSE_DRAG = common dso_local global i32 0, align 4
@Ph_EV_RELEASE_REAL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Ph_EV_BUT_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_16__*)* @gui_ph_handle_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gui_ph_handle_mouse(i32* %0, i8* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = call %struct.TYPE_18__* @PhGetData(%struct.TYPE_13__* %17)
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %8, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = call %struct.TYPE_17__* @PhGetRects(%struct.TYPE_13__* %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %9, align 8
  %23 = load i32, i32* @MOUSE_SHOW, align 4
  %24 = call i32 @gui_mch_mousehide(i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @gui, i32 0, i32 0), align 2
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %29, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %13, align 2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @gui, i32 0, i32 0), align 2
  %40 = sext i16 %39 to i32
  %41 = add nsw i32 %38, %40
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %14, align 2
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @Ph_EV_PTR_MOTION_NOBUTTON, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %3
  %51 = load i16, i16* %13, align 2
  %52 = load i16, i16* %14, align 2
  %53 = call i32 @gui_mouse_moved(i16 signext %51, i16 signext %52)
  %54 = load i32, i32* @Pt_CONTINUE, align 4
  store i32 %54, i32* %4, align 4
  br label %175

55:                                               ; preds = %3
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @Pk_KM_Shift, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @MOUSE_SHIFT, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @Pk_KM_Ctrl, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @MOUSE_CTRL, align 4
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @Pk_KM_Alt, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @MOUSE_ALT, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @Ph_BUTTON_SELECT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @MOUSE_LEFT, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %88
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @Ph_BUTTON_MENU, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load i32, i32* @MOUSE_RIGHT, align 4
  store i32 %105, i32* %10, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @abs_mouse, i32 0, i32 1), align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @abs_mouse, i32 0, i32 0), align 4
  br label %114

114:                                              ; preds = %104, %97
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @Ph_BUTTON_ADJUST, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @MOUSE_MIDDLE, align 4
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %121, %114
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @Ph_EV_BUT_RELEASE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @MOUSE_RELEASE, align 4
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %131, %123
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @Ph_EV_PTR_MOTION_BUTTON, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i32, i32* @MOUSE_DRAG, align 4
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %142, %133
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @MOUSE_RELEASE, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @Ph_EV_RELEASE_REAL, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %148, %144
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp sge i32 %159, 2
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @TRUE, align 4
  br label %165

163:                                              ; preds = %156
  %164 = load i32, i32* @FALSE, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i16, i16* %13, align 2
  %169 = load i16, i16* %14, align 2
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @gui_send_mouse_event(i32 %167, i16 signext %168, i16 signext %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %165, %148
  %174 = load i32, i32* @Pt_CONTINUE, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %173, %50
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_18__* @PhGetData(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_17__* @PhGetRects(%struct.TYPE_13__*) #1

declare dso_local i32 @gui_mch_mousehide(i32) #1

declare dso_local i32 @gui_mouse_moved(i16 signext, i16 signext) #1

declare dso_local i32 @gui_send_mouse_event(i32, i16 signext, i16 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
