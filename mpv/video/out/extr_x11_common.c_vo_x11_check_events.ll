; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_check_events.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_13__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.bstr = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"XEvent: %d\0A\00", align 1
@VO_EVENT_EXPOSE = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"adjusting embedded window position\0A\00", align 1
@MP_KEY_STATE_DOWN = common dso_local global i32 0, align 4
@XLookupChars = common dso_local global i32 0, align 4
@XLookupBoth = common dso_local global i32 0, align 4
@MP_INPUT_RELEASE_ALL = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"_NET_WM_MOVERESIZE\00", align 1
@NotifyNormal = common dso_local global i32 0, align 4
@MP_KEY_MOUSE_LEAVE = common dso_local global i32 0, align 4
@MP_KEY_MOUSE_ENTER = common dso_local global i32 0, align 4
@MP_KEY_MOUSE_BTN_COUNT = common dso_local global i32 0, align 4
@MP_MBTN_BASE = common dso_local global i32 0, align 4
@XEMBED_REQUEST_FOCUS = common dso_local global i64 0, align 8
@MP_KEY_STATE_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Our window was destroyed, exiting\0A\00", align 1
@MP_KEY_CLOSE_WIN = common dso_local global i32 0, align 4
@WM_PROTOCOLS = common dso_local global i32 0, align 4
@WM_DELETE_WINDOW = common dso_local global i32 0, align 4
@_NET_FRAME_EXTENTS = common dso_local global i32 0, align 4
@WM_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"not waiting for MapNotify\0A\00", align 1
@_NET_WM_STATE = common dso_local global i32 0, align 4
@VO_EVENT_WIN_STATE = common dso_local global i32 0, align 4
@VO_EVENT_ICC_PROFILE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_x11_check_events(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_x11_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca [100 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bstr, align 8
  %13 = alloca i32, align 4
  %14 = alloca [5 x i64], align 16
  %15 = alloca [4 x i64], align 16
  store %struct.vo* %0, %struct.vo** %2, align 8
  %16 = load %struct.vo*, %struct.vo** %2, align 8
  %17 = getelementptr inbounds %struct.vo, %struct.vo* %16, i32 0, i32 0
  %18 = load %struct.vo_x11_state*, %struct.vo_x11_state** %17, align 8
  store %struct.vo_x11_state* %18, %struct.vo_x11_state** %3, align 8
  %19 = load %struct.vo*, %struct.vo** %2, align 8
  %20 = getelementptr inbounds %struct.vo, %struct.vo* %19, i32 0, i32 0
  %21 = load %struct.vo_x11_state*, %struct.vo_x11_state** %20, align 8
  %22 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %21, i32 0, i32 13
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %4, align 8
  %24 = load %struct.vo*, %struct.vo** %2, align 8
  %25 = getelementptr inbounds %struct.vo, %struct.vo* %24, i32 0, i32 0
  %26 = load %struct.vo_x11_state*, %struct.vo_x11_state** %25, align 8
  %27 = call i32 @xscreensaver_heartbeat(%struct.vo_x11_state* %26)
  br label %28

28:                                               ; preds = %501, %1
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @XPending(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %502

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @XNextEvent(i32* %33, %struct.TYPE_20__* %5)
  %35 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.vo_x11_state*, i8*, ...) @MP_TRACE(%struct.vo_x11_state* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %470 [
    i32 137, label %41
    i32 140, label %47
    i32 134, label %88
    i32 136, label %170
    i32 135, label %175
    i32 133, label %182
    i32 130, label %185
    i32 132, label %248
    i32 138, label %263
    i32 143, label %276
    i32 142, label %316
    i32 131, label %350
    i32 139, label %359
    i32 141, label %369
    i32 128, label %401
    i32 129, label %405
  ]

41:                                               ; preds = %32
  %42 = load i32, i32* @VO_EVENT_EXPOSE, align 4
  %43 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %44 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %501

47:                                               ; preds = %32
  %48 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %49 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @None, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %501

54:                                               ; preds = %47
  %55 = load %struct.vo*, %struct.vo** %2, align 8
  %56 = call i32 @vo_x11_update_geometry(%struct.vo* %55)
  %57 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %58 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %66 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %61
  %70 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %71 = call i32 (%struct.vo_x11_state*, i8*, ...) @MP_TRACE(%struct.vo_x11_state* %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %73 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %72, i32 0, i32 13
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %76 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %79 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %78, i32 0, i32 18
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @RC_W(i32 %80)
  %82 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %83 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %82, i32 0, i32 18
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @RC_H(i32 %84)
  %86 = call i32 @XMoveResizeWindow(i32* %74, i32 %77, i32 0, i32 0, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %69, %61, %54
  br label %501

88:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @get_mods(i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %94 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %93, i32 0, i32 17
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %88
  %102 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %103 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %102, i32 0, i32 16
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %101
  %107 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %108 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %107, i32 0, i32 16
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 7
  %111 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %112 = call i32 @Xutf8LookupString(i32 %109, %struct.TYPE_13__* %110, i8* %111, i32 100, i32* %7, i32* %9)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @vo_x11_lookupkey(i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %106
  %118 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %119 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @mp_input_put_key(i32 %120, i32 %123)
  br label %149

125:                                              ; preds = %106
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @XLookupChars, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @XLookupBoth, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %129, %125
  %134 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %135 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  store i8* %135, i8** %134, align 8
  %136 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 1
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %136, align 8
  %138 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %139 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %138, i32 0, i32 11
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = bitcast %struct.bstr* %12 to { i8*, i32 }*
  %143 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %142, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @mp_input_put_key_utf8(i32 %140, i32 %141, i8* %144, i32 %146)
  br label %148

148:                                              ; preds = %133, %129
  br label %149

149:                                              ; preds = %148, %117
  br label %169

150:                                              ; preds = %101
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 7
  %152 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %153 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %154 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %153, i32 0, i32 15
  %155 = call i32 @XLookupString(%struct.TYPE_13__* %151, i8* %152, i32 100, i32* %7, i32* %154)
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @vo_x11_lookupkey(i32 %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %150
  %161 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %162 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @mp_input_put_key(i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %160, %150
  br label %169

169:                                              ; preds = %168, %149
  br label %501

170:                                              ; preds = %32
  %171 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %172 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load %struct.vo*, %struct.vo** %2, align 8
  %174 = call i32 @vo_update_cursor(%struct.vo* %173)
  br label %501

175:                                              ; preds = %32
  %176 = load %struct.vo*, %struct.vo** %2, align 8
  %177 = call i32 @release_all_keys(%struct.vo* %176)
  %178 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %179 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load %struct.vo*, %struct.vo** %2, align 8
  %181 = call i32 @vo_update_cursor(%struct.vo* %180)
  br label %501

182:                                              ; preds = %32
  %183 = load %struct.vo*, %struct.vo** %2, align 8
  %184 = call i32 @release_all_keys(%struct.vo* %183)
  br label %501

185:                                              ; preds = %32
  %186 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %187 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %234

190:                                              ; preds = %185
  %191 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %192 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %191, i32 0, i32 14
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %234, label %195

195:                                              ; preds = %190
  %196 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %197 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %196, i32 0, i32 11
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 6
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @mp_input_test_dragging(i32 %198, i32 %201, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %234, label %207

207:                                              ; preds = %195
  %208 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %209 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %208, i32 0, i32 11
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @MP_INPUT_RELEASE_ALL, align 4
  %212 = call i32 @mp_input_put_key(i32 %210, i32 %211)
  %213 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %214 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %213, i32 0, i32 13
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* @CurrentTime, align 4
  %217 = call i32 @XUngrabPointer(i32* %215, i32 %216)
  %218 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  store i64 %222, i64* %218, align 8
  %223 = getelementptr inbounds i64, i64* %218, i64 1
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %223, align 8
  %228 = getelementptr inbounds i64, i64* %223, i64 1
  store i64 8, i64* %228, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 1
  store i64 1, i64* %229, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 1
  store i64 1, i64* %230, align 8
  %231 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %232 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0
  %233 = call i32 @x11_send_ewmh_msg(%struct.vo_x11_state* %231, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %232)
  br label %245

234:                                              ; preds = %195, %190, %185
  %235 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %236 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %235, i32 0, i32 11
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 6
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @mp_input_set_mouse_pos(i32 %237, i32 %240, i32 %243)
  br label %245

245:                                              ; preds = %234, %207
  %246 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %247 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %246, i32 0, i32 1
  store i32 0, i32* %247, align 4
  br label %501

248:                                              ; preds = %32
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 5
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @NotifyNormal, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  br label %501

255:                                              ; preds = %248
  %256 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %257 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %256, i32 0, i32 1
  store i32 0, i32* %257, align 4
  %258 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %259 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %258, i32 0, i32 11
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @MP_KEY_MOUSE_LEAVE, align 4
  %262 = call i32 @mp_input_put_key(i32 %260, i32 %261)
  br label %501

263:                                              ; preds = %32
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @NotifyNormal, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  br label %501

270:                                              ; preds = %263
  %271 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %272 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %271, i32 0, i32 11
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @MP_KEY_MOUSE_ENTER, align 4
  %275 = call i32 @mp_input_put_key(i32 %273, i32 %274)
  br label %501

276:                                              ; preds = %32
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = sub nsw i32 %279, 1
  %281 = load i32, i32* @MP_KEY_MOUSE_BTN_COUNT, align 4
  %282 = icmp sge i32 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  br label %501

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %291 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %290, i32 0, i32 1
  store i32 1, i32* %291, align 4
  br label %292

292:                                              ; preds = %289, %284
  %293 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %294 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %293, i32 0, i32 11
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @MP_MBTN_BASE, align 4
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = add nsw i32 %296, %299
  %301 = sub nsw i32 %300, 1
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @get_mods(i32 %304)
  %306 = or i32 %301, %305
  %307 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  %308 = or i32 %306, %307
  %309 = call i32 @mp_input_put_key(i32 %295, i32 %308)
  %310 = bitcast [4 x i64]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %310, i8 0, i64 32, i1 false)
  %311 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %312 = load i64, i64* @XEMBED_REQUEST_FOCUS, align 8
  store i64 %312, i64* %311, align 8
  %313 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %314 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %315 = call i32 @vo_x11_xembed_send_message(%struct.vo_x11_state* %313, i64* %314)
  br label %501

316:                                              ; preds = %32
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = sub nsw i32 %319, 1
  %321 = load i32, i32* @MP_KEY_MOUSE_BTN_COUNT, align 4
  %322 = icmp sge i32 %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %316
  br label %501

324:                                              ; preds = %316
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %329, label %332

329:                                              ; preds = %324
  %330 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %331 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %330, i32 0, i32 1
  store i32 0, i32* %331, align 4
  br label %332

332:                                              ; preds = %329, %324
  %333 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %334 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %333, i32 0, i32 11
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @MP_MBTN_BASE, align 4
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %336, %339
  %341 = sub nsw i32 %340, 1
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @get_mods(i32 %344)
  %346 = or i32 %341, %345
  %347 = load i32, i32* @MP_KEY_STATE_UP, align 4
  %348 = or i32 %346, %347
  %349 = call i32 @mp_input_put_key(i32 %335, i32 %348)
  br label %501

350:                                              ; preds = %32
  %351 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %352 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %351, i32 0, i32 2
  store i32 0, i32* %352, align 8
  %353 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %354 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %353, i32 0, i32 3
  store i32 1, i32* %354, align 4
  %355 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %356 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %355, i32 0, i32 4
  store i32 -1, i32* %356, align 8
  %357 = load %struct.vo*, %struct.vo** %2, align 8
  %358 = call i32 @vo_x11_update_geometry(%struct.vo* %357)
  br label %501

359:                                              ; preds = %32
  %360 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %361 = call i32 @MP_WARN(%struct.vo_x11_state* %360, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %362 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %363 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %362, i32 0, i32 11
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @MP_KEY_CLOSE_WIN, align 4
  %366 = call i32 @mp_input_put_key(i32 %364, i32 %365)
  %367 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %368 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %367, i32 0, i32 12
  store i32 0, i32* %368, align 8
  br label %501

369:                                              ; preds = %32
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %374 = load i32, i32* @WM_PROTOCOLS, align 4
  %375 = call i32 @XA(%struct.vo_x11_state* %373, i32 %374)
  %376 = icmp eq i32 %372, %375
  br i1 %376, label %377, label %394

377:                                              ; preds = %369
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %385 = load i32, i32* @WM_DELETE_WINDOW, align 4
  %386 = call i32 @XA(%struct.vo_x11_state* %384, i32 %385)
  %387 = icmp eq i32 %383, %386
  br i1 %387, label %388, label %394

388:                                              ; preds = %377
  %389 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %390 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %389, i32 0, i32 11
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @MP_KEY_CLOSE_WIN, align 4
  %393 = call i32 @mp_input_put_key(i32 %391, i32 %392)
  br label %394

394:                                              ; preds = %388, %377, %369
  %395 = load %struct.vo*, %struct.vo** %2, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 3
  %397 = call i32 @vo_x11_dnd_handle_message(%struct.vo* %395, %struct.TYPE_21__* %396)
  %398 = load %struct.vo*, %struct.vo** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 3
  %400 = call i32 @vo_x11_xembed_handle_message(%struct.vo* %398, %struct.TYPE_21__* %399)
  br label %501

401:                                              ; preds = %32
  %402 = load %struct.vo*, %struct.vo** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 2
  %404 = call i32 @vo_x11_dnd_handle_selection(%struct.vo* %402, i32* %403)
  br label %501

405:                                              ; preds = %32
  %406 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %410 = load i32, i32* @_NET_FRAME_EXTENTS, align 4
  %411 = call i32 @XA(%struct.vo_x11_state* %409, i32 %410)
  %412 = icmp eq i32 %408, %411
  br i1 %412, label %421, label %413

413:                                              ; preds = %405
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %418 = load i32, i32* @WM_STATE, align 4
  %419 = call i32 @XA(%struct.vo_x11_state* %417, i32 %418)
  %420 = icmp eq i32 %416, %419
  br i1 %420, label %421, label %437

421:                                              ; preds = %413, %405
  %422 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %423 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %436, label %426

426:                                              ; preds = %421
  %427 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %428 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %427, i32 0, i32 10
  %429 = load i32, i32* %428, align 8
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %436, label %431

431:                                              ; preds = %426
  %432 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %433 = call i32 @MP_VERBOSE(%struct.vo_x11_state* %432, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %434 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %435 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %434, i32 0, i32 3
  store i32 1, i32* %435, align 4
  br label %436

436:                                              ; preds = %431, %426, %421
  br label %469

437:                                              ; preds = %413
  %438 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %442 = load i32, i32* @_NET_WM_STATE, align 4
  %443 = call i32 @XA(%struct.vo_x11_state* %441, i32 %442)
  %444 = icmp eq i32 %440, %443
  br i1 %444, label %445, label %453

445:                                              ; preds = %437
  %446 = load i32, i32* @VO_EVENT_WIN_STATE, align 4
  %447 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %448 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %447, i32 0, i32 8
  %449 = load i32, i32* %448, align 8
  %450 = or i32 %449, %446
  store i32 %450, i32* %448, align 8
  %451 = load %struct.vo*, %struct.vo** %2, align 8
  %452 = call i32 @vo_x11_check_net_wm_state_fullscreen_change(%struct.vo* %451)
  br label %468

453:                                              ; preds = %437
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %458 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %457, i32 0, i32 9
  %459 = load i32, i32* %458, align 4
  %460 = icmp eq i32 %456, %459
  br i1 %460, label %461, label %467

461:                                              ; preds = %453
  %462 = load i32, i32* @VO_EVENT_ICC_PROFILE_CHANGED, align 4
  %463 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %464 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %463, i32 0, i32 8
  %465 = load i32, i32* %464, align 8
  %466 = or i32 %465, %462
  store i32 %466, i32* %464, align 8
  br label %467

467:                                              ; preds = %461, %453
  br label %468

468:                                              ; preds = %467, %445
  br label %469

469:                                              ; preds = %468, %436
  br label %501

470:                                              ; preds = %32
  %471 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %474 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %473, i32 0, i32 5
  %475 = load i32, i32* %474, align 4
  %476 = icmp eq i32 %472, %475
  br i1 %476, label %477, label %488

477:                                              ; preds = %470
  %478 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %479 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 4
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %477
  %483 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %484 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %483, i32 0, i32 7
  %485 = load i32, i32* %484, align 4
  %486 = add nsw i32 %485, -1
  store i32 %486, i32* %484, align 4
  br label %487

487:                                              ; preds = %482, %477
  br label %488

488:                                              ; preds = %487, %470
  %489 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %492 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %491, i32 0, i32 6
  %493 = load i32, i32* %492, align 8
  %494 = icmp eq i32 %490, %493
  br i1 %494, label %495, label %500

495:                                              ; preds = %488
  %496 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %497 = call i32 @xrandr_read(%struct.vo_x11_state* %496)
  %498 = load %struct.vo*, %struct.vo** %2, align 8
  %499 = call i32 @vo_x11_update_geometry(%struct.vo* %498)
  br label %500

500:                                              ; preds = %495, %488
  br label %501

501:                                              ; preds = %500, %469, %401, %394, %359, %350, %332, %323, %292, %283, %270, %269, %255, %254, %245, %182, %175, %170, %169, %87, %53, %41
  br label %28

502:                                              ; preds = %28
  %503 = load %struct.vo*, %struct.vo** %2, align 8
  %504 = call i32 @update_vo_size(%struct.vo* %503)
  ret void
}

declare dso_local i32 @xscreensaver_heartbeat(%struct.vo_x11_state*) #1

declare dso_local i64 @XPending(i32*) #1

declare dso_local i32 @XNextEvent(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @MP_TRACE(%struct.vo_x11_state*, i8*, ...) #1

declare dso_local i32 @vo_x11_update_geometry(%struct.vo*) #1

declare dso_local i32 @XMoveResizeWindow(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RC_W(i32) #1

declare dso_local i32 @RC_H(i32) #1

declare dso_local i32 @get_mods(i32) #1

declare dso_local i32 @Xutf8LookupString(i32, %struct.TYPE_13__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @vo_x11_lookupkey(i32) #1

declare dso_local i32 @mp_input_put_key(i32, i32) #1

declare dso_local i32 @mp_input_put_key_utf8(i32, i32, i8*, i32) #1

declare dso_local i32 @XLookupString(%struct.TYPE_13__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @vo_update_cursor(%struct.vo*) #1

declare dso_local i32 @release_all_keys(%struct.vo*) #1

declare dso_local i32 @mp_input_test_dragging(i32, i32, i32) #1

declare dso_local i32 @XUngrabPointer(i32*, i32) #1

declare dso_local i32 @x11_send_ewmh_msg(%struct.vo_x11_state*, i8*, i64*) #1

declare dso_local i32 @mp_input_set_mouse_pos(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @vo_x11_xembed_send_message(%struct.vo_x11_state*, i64*) #1

declare dso_local i32 @MP_WARN(%struct.vo_x11_state*, i8*) #1

declare dso_local i32 @XA(%struct.vo_x11_state*, i32) #1

declare dso_local i32 @vo_x11_dnd_handle_message(%struct.vo*, %struct.TYPE_21__*) #1

declare dso_local i32 @vo_x11_xembed_handle_message(%struct.vo*, %struct.TYPE_21__*) #1

declare dso_local i32 @vo_x11_dnd_handle_selection(%struct.vo*, i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_x11_state*, i8*) #1

declare dso_local i32 @vo_x11_check_net_wm_state_fullscreen_change(%struct.vo*) #1

declare dso_local i32 @xrandr_read(%struct.vo_x11_state*) #1

declare dso_local i32 @update_vo_size(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
