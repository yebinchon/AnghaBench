; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_init.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@__const.gui_mch_init.window_size = private unnamed_addr constant %struct.TYPE_5__ { i32 100, i32 100, i32 0 }, align 4
@EVENT_BUFFER_SIZE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"latin1\00", align 1
@charset_translate = common dso_local global i32 0, align 4
@GUI_PH_MARGIN = common dso_local global i32 0, align 4
@Pt_ARG_WINDOW_MANAGED_FLAGS = common dso_local global i32 0, align 4
@Pt_FALSE = common dso_local global i32 0, align 4
@Ph_WM_CLOSE = common dso_local global i32 0, align 4
@Pt_ARG_WINDOW_NOTIFY_FLAGS = common dso_local global i32 0, align 4
@Pt_TRUE = common dso_local global i32 0, align 4
@Ph_WM_RESIZE = common dso_local global i32 0, align 4
@Ph_WM_FOCUS = common dso_local global i32 0, align 4
@Pt_ARG_DIM = common dso_local global i32 0, align 4
@PtWindow = common dso_local global i32 0, align 4
@Pt_CB_WINDOW = common dso_local global i32 0, align 4
@gui_ph_handle_window_cb = common dso_local global i32 0, align 4
@Pt_CB_WINDOW_OPENING = common dso_local global i32 0, align 4
@gui_ph_handle_window_open = common dso_local global i32 0, align 4
@Pt_ARG_ANCHOR_FLAGS = common dso_local global i32 0, align 4
@Pt_ANCHOR_ALL = common dso_local global i32 0, align 4
@Pt_IS_ANCHORED = common dso_local global i32 0, align 4
@Pt_ARG_POS = common dso_local global i32 0, align 4
@Pt_ARG_BASIC_FLAGS = common dso_local global i32 0, align 4
@Pt_ALL = common dso_local global i32 0, align 4
@Pt_ARG_BEVEL_WIDTH = common dso_local global i32 0, align 4
@Pt_ARG_MARGIN_WIDTH = common dso_local global i32 0, align 4
@Pt_ARG_MARGIN_HEIGHT = common dso_local global i32 0, align 4
@Pt_ARG_CONTAINER_FLAGS = common dso_local global i32 0, align 4
@Pt_AUTO_EXTENT = common dso_local global i32 0, align 4
@PtPane = common dso_local global i32 0, align 4
@Pt_CB_RESIZE = common dso_local global i32 0, align 4
@gui_ph_pane_resize = common dso_local global i32 0, align 4
@Pt_ARG_RAW_DRAW_F = common dso_local global i32 0, align 4
@gui_ph_handle_raw_draw = common dso_local global i32 0, align 4
@Pt_ARG_FLAGS = common dso_local global i32 0, align 4
@Pt_GETS_FOCUS = common dso_local global i32 0, align 4
@Pt_HIGHLIGHTED = common dso_local global i32 0, align 4
@Pt_ARG_CURSOR_TYPE = common dso_local global i32 0, align 4
@GUI_PH_MOUSE_TYPE = common dso_local global i32 0, align 4
@Pt_ARG_CURSOR_COLOR = common dso_local global i32 0, align 4
@gui_ph_mouse_color = common dso_local global i32 0, align 4
@PtRaw = common dso_local global i32 0, align 4
@Pt_DFLT_PARENT = common dso_local global i32* null, align 8
@Ph_EV_BUT_PRESS = common dso_local global i32 0, align 4
@Ph_EV_BUT_RELEASE = common dso_local global i32 0, align 4
@Ph_EV_PTR_MOTION_BUTTON = common dso_local global i32 0, align 4
@gui_ph_handle_mouse = common dso_local global i32 0, align 4
@Ph_EV_KEY = common dso_local global i32 0, align 4
@gui_ph_handle_keyboard = common dso_local global i32 0, align 4
@Pt_CB_GOT_FOCUS = common dso_local global i32 0, align 4
@gui_ph_handle_focus = common dso_local global i32 0, align 4
@Pt_CB_LOST_FOCUS = common dso_local global i32 0, align 4
@PtTimer = common dso_local global i32 0, align 4
@gui_ph_timer_cursor = common dso_local global i32* null, align 8
@gui_ph_timer_timeout = common dso_local global i32* null, align 8
@Pt_CB_TIMER_ACTIVATE = common dso_local global i32 0, align 4
@gui_ph_handle_timer_cursor = common dso_local global i32 0, align 4
@gui_ph_handle_timer_timeout = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@GO_MENUS = common dso_local global i32 0, align 4
@GO_TOOLBAR = common dso_local global i32 0, align 4
@PtMenuBar = common dso_local global i32 0, align 4
@PtPanelGroup = common dso_local global i32 0, align 4
@PtToolbar = common dso_local global i32 0, align 4
@PtToolbarGroup = common dso_local global i32 0, align 4
@Pt_ANCHOR_LEFT_RIGHT = common dso_local global i32 0, align 4
@Pt_ARG_PG_PANEL_TITLES = common dso_local global i32 0, align 4
@Pt_ARG_RESIZE_FLAGS = common dso_local global i32 0, align 4
@Pt_ARG_WIDTH = common dso_local global i32 0, align 4
@Pt_CB_PG_PANEL_SWITCHING = common dso_local global i32 0, align 4
@Pt_DELAY_REALIZE = common dso_local global i32 0, align 4
@Pt_RESIZE_Y_AS_REQUIRED = common dso_local global i32 0, align 4
@Pt_TOP_ANCHORED_TOP = common dso_local global i32 0, align 4
@empty_title = common dso_local global i32 0, align 4
@gui_ph_handle_menu_resize = common dso_local global i32 0, align 4
@gui_ph_handle_pg_change = common dso_local global i32 0, align 4
@p_go = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_5__* @__const.gui_mch_init.window_size to i8*), i64 12, i1 false)
  %8 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load i32, i32* @EVENT_BUFFER_SIZE, align 4
  %10 = call i64 @alloc(i32 %9)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 9), align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 9), align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @FAIL, align 4
  store i32 %15, i32* %1, align 4
  br label %229

16:                                               ; preds = %0
  %17 = call i32 @PxTranslateSet(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* @charset_translate, align 4
  %18 = load i32, i32* @GUI_PH_MARGIN, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 1), align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %22
  %24 = load i32, i32* @Pt_ARG_WINDOW_MANAGED_FLAGS, align 4
  %25 = load i32, i32* @Pt_FALSE, align 4
  %26 = load i32, i32* @Ph_WM_CLOSE, align 4
  %27 = call i32 (i32*, i32, ...) @PtSetArg(i32* %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %30
  %32 = load i32, i32* @Pt_ARG_WINDOW_NOTIFY_FLAGS, align 4
  %33 = load i32, i32* @Pt_TRUE, align 4
  %34 = load i32, i32* @Ph_WM_CLOSE, align 4
  %35 = load i32, i32* @Ph_WM_RESIZE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @Ph_WM_FOCUS, align 4
  %38 = or i32 %36, %37
  %39 = call i32 (i32*, i32, ...) @PtSetArg(i32* %31, i32 %32, i32 %33, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %42
  %44 = load i32, i32* @Pt_ARG_DIM, align 4
  %45 = call i32 (i32*, i32, ...) @PtSetArg(i32* %43, i32 %44, %struct.TYPE_5__* %5, i32 0)
  %46 = load i32, i32* @PtWindow, align 4
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %49 = call i8* @PtCreateWidget(i32 %46, i32* null, i32 %47, i32* %48)
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 5), align 8
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 5), align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %16
  %54 = load i32, i32* @FAIL, align 4
  store i32 %54, i32* %1, align 4
  br label %229

55:                                               ; preds = %16
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 5), align 8
  %57 = load i32, i32* @Pt_CB_WINDOW, align 4
  %58 = load i32, i32* @gui_ph_handle_window_cb, align 4
  %59 = call i32 @PtAddCallback(i32* %56, i32 %57, i32 %58, i32* null)
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 5), align 8
  %61 = load i32, i32* @Pt_CB_WINDOW_OPENING, align 4
  %62 = load i32, i32* @gui_ph_handle_window_open, align 4
  %63 = call i32 @PtAddCallback(i32* %60, i32 %61, i32 %62, i32* null)
  store i32 0, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %66
  %68 = load i32, i32* @Pt_ARG_ANCHOR_FLAGS, align 4
  %69 = load i32, i32* @Pt_ANCHOR_ALL, align 4
  %70 = load i32, i32* @Pt_IS_ANCHORED, align 4
  %71 = call i32 (i32*, i32, ...) @PtSetArg(i32* %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %74
  %76 = load i32, i32* @Pt_ARG_DIM, align 4
  %77 = call i32 (i32*, i32, ...) @PtSetArg(i32* %75, i32 %76, %struct.TYPE_5__* %5, i32 0)
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %80
  %82 = load i32, i32* @Pt_ARG_POS, align 4
  %83 = call i32 (i32*, i32, ...) @PtSetArg(i32* %81, i32 %82, %struct.TYPE_4__* %6, i32 0)
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %86
  %88 = load i32, i32* @Pt_ARG_BASIC_FLAGS, align 4
  %89 = load i32, i32* @Pt_FALSE, align 4
  %90 = load i32, i32* @Pt_ALL, align 4
  %91 = call i32 (i32*, i32, ...) @PtSetArg(i32* %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %94
  %96 = load i32, i32* @Pt_ARG_BEVEL_WIDTH, align 4
  %97 = call i32 (i32*, i32, ...) @PtSetArg(i32* %95, i32 %96, i32 0, i32 0)
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %100
  %102 = load i32, i32* @Pt_ARG_MARGIN_WIDTH, align 4
  %103 = call i32 (i32*, i32, ...) @PtSetArg(i32* %101, i32 %102, i32 0, i32 0)
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %106
  %108 = load i32, i32* @Pt_ARG_MARGIN_HEIGHT, align 4
  %109 = call i32 (i32*, i32, ...) @PtSetArg(i32* %107, i32 %108, i32 0, i32 0)
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %112
  %114 = load i32, i32* @Pt_ARG_CONTAINER_FLAGS, align 4
  %115 = load i32, i32* @Pt_TRUE, align 4
  %116 = load i32, i32* @Pt_AUTO_EXTENT, align 4
  %117 = call i32 (i32*, i32, ...) @PtSetArg(i32* %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* @PtPane, align 4
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 5), align 8
  %120 = load i32, i32* %4, align 4
  %121 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %122 = call i8* @PtCreateWidget(i32 %118, i32* %119, i32 %120, i32* %121)
  %123 = bitcast i8* %122 to i32*
  store i32* %123, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 7), align 8
  %124 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 7), align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %55
  %127 = load i32, i32* @FAIL, align 4
  store i32 %127, i32* %1, align 4
  br label %229

128:                                              ; preds = %55
  %129 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 7), align 8
  %130 = load i32, i32* @Pt_CB_RESIZE, align 4
  %131 = load i32, i32* @gui_ph_pane_resize, align 4
  %132 = call i32 @PtAddCallback(i32* %129, i32 %130, i32 %131, i32* null)
  store i32 0, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %135
  %137 = load i32, i32* @Pt_ARG_RAW_DRAW_F, align 4
  %138 = load i32, i32* @gui_ph_handle_raw_draw, align 4
  %139 = call i32 (i32*, i32, ...) @PtSetArg(i32* %136, i32 %137, i32 %138, i32 1)
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %142
  %144 = load i32, i32* @Pt_ARG_BEVEL_WIDTH, align 4
  %145 = load i32, i32* @GUI_PH_MARGIN, align 4
  %146 = call i32 (i32*, i32, ...) @PtSetArg(i32* %143, i32 %144, i32 %145, i32 0)
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %149
  %151 = load i32, i32* @Pt_ARG_FLAGS, align 4
  %152 = load i32, i32* @Pt_TRUE, align 4
  %153 = load i32, i32* @Pt_GETS_FOCUS, align 4
  %154 = load i32, i32* @Pt_HIGHLIGHTED, align 4
  %155 = or i32 %153, %154
  %156 = call i32 (i32*, i32, ...) @PtSetArg(i32* %150, i32 %151, i32 %152, i32 %155)
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %159
  %161 = load i32, i32* @Pt_ARG_CURSOR_TYPE, align 4
  %162 = load i32, i32* @GUI_PH_MOUSE_TYPE, align 4
  %163 = call i32 (i32*, i32, ...) @PtSetArg(i32* %160, i32 %161, i32 %162, i32 0)
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %166
  %168 = load i32, i32* @Pt_ARG_CURSOR_COLOR, align 4
  %169 = load i32, i32* @gui_ph_mouse_color, align 4
  %170 = call i32 (i32*, i32, ...) @PtSetArg(i32* %167, i32 %168, i32 %169, i32 0)
  %171 = load i32, i32* @PtRaw, align 4
  %172 = load i32*, i32** @Pt_DFLT_PARENT, align 8
  %173 = load i32, i32* %4, align 4
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %175 = call i8* @PtCreateWidget(i32 %171, i32* %172, i32 %173, i32* %174)
  %176 = bitcast i8* %175 to i32*
  store i32* %176, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 6), align 8
  %177 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 6), align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %128
  %180 = load i32, i32* @FAIL, align 4
  store i32 %180, i32* %1, align 4
  br label %229

181:                                              ; preds = %128
  %182 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 6), align 8
  %183 = load i32, i32* @Ph_EV_BUT_PRESS, align 4
  %184 = load i32, i32* @Ph_EV_BUT_RELEASE, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @Ph_EV_PTR_MOTION_BUTTON, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @gui_ph_handle_mouse, align 4
  %189 = call i32 @PtAddEventHandler(i32* %182, i32 %187, i32 %188, i32* null)
  %190 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 6), align 8
  %191 = load i32, i32* @Ph_EV_KEY, align 4
  %192 = load i32, i32* @gui_ph_handle_keyboard, align 4
  %193 = call i32 @PtAddEventHandler(i32* %190, i32 %191, i32 %192, i32* null)
  %194 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 6), align 8
  %195 = load i32, i32* @Pt_CB_GOT_FOCUS, align 4
  %196 = load i32, i32* @gui_ph_handle_focus, align 4
  %197 = call i32 @PtAddCallback(i32* %194, i32 %195, i32 %196, i32* null)
  %198 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 6), align 8
  %199 = load i32, i32* @Pt_CB_LOST_FOCUS, align 4
  %200 = load i32, i32* @gui_ph_handle_focus, align 4
  %201 = call i32 @PtAddCallback(i32* %198, i32 %199, i32 %200, i32* null)
  %202 = load i32, i32* @PtTimer, align 4
  %203 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 5), align 8
  %204 = call i8* @PtCreateWidget(i32 %202, i32* %203, i32 0, i32* null)
  %205 = bitcast i8* %204 to i32*
  store i32* %205, i32** @gui_ph_timer_cursor, align 8
  %206 = load i32*, i32** @gui_ph_timer_cursor, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %181
  %209 = load i32, i32* @FAIL, align 4
  store i32 %209, i32* %1, align 4
  br label %229

210:                                              ; preds = %181
  %211 = load i32, i32* @PtTimer, align 4
  %212 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 5), align 8
  %213 = call i8* @PtCreateWidget(i32 %211, i32* %212, i32 0, i32* null)
  %214 = bitcast i8* %213 to i32*
  store i32* %214, i32** @gui_ph_timer_timeout, align 8
  %215 = load i32*, i32** @gui_ph_timer_timeout, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = load i32, i32* @FAIL, align 4
  store i32 %218, i32* %1, align 4
  br label %229

219:                                              ; preds = %210
  %220 = load i32*, i32** @gui_ph_timer_cursor, align 8
  %221 = load i32, i32* @Pt_CB_TIMER_ACTIVATE, align 4
  %222 = load i32, i32* @gui_ph_handle_timer_cursor, align 4
  %223 = call i32 @PtAddCallback(i32* %220, i32 %221, i32 %222, i32* null)
  %224 = load i32*, i32** @gui_ph_timer_timeout, align 8
  %225 = load i32, i32* @Pt_CB_TIMER_ACTIVATE, align 4
  %226 = load i32, i32* @gui_ph_handle_timer_timeout, align 4
  %227 = call i32 @PtAddCallback(i32* %224, i32 %225, i32 %226, i32* null)
  %228 = load i32, i32* @OK, align 4
  store i32 %228, i32* %1, align 4
  br label %229

229:                                              ; preds = %219, %217, %208, %179, %126, %53, %14
  %230 = load i32, i32* %1, align 4
  ret i32 %230
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @alloc(i32) #2

declare dso_local i32 @PxTranslateSet(i32*, i8*) #2

declare dso_local i32 @PtSetArg(i32*, i32, ...) #2

declare dso_local i8* @PtCreateWidget(i32, i32*, i32, i32*) #2

declare dso_local i32 @PtAddCallback(i32*, i32, i32, i32*) #2

declare dso_local i32 @PtAddEventHandler(i32*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
