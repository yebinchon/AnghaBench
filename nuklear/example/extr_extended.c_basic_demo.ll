; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_extended.c_basic_demo.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_extended.c_basic_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_vec2 = type { i32 }
%struct.nk_context = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nk_vec2 }
%struct.media = type { %struct.TYPE_7__*, i32*, i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nk_panel = type { i32 }

@basic_demo.image_active = internal global i32 0, align 4
@basic_demo.check0 = internal global i32 1, align 4
@basic_demo.check1 = internal global i32 0, align 4
@basic_demo.prog = internal global i64 80, align 8
@basic_demo.selected_item = internal global i32 0, align 4
@basic_demo.selected_image = internal global i32 3, align 4
@basic_demo.selected_icon = internal global i32 0, align 4
@basic_demo.items = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"Item 0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"item 1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"item 2\00", align 1
@basic_demo.piemenu_active = internal global i32 0, align 4
@basic_demo.piemenu_pos = internal global %struct.nk_vec2 zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Basic Demo\00", align 1
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@NK_WINDOW_TITLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Popup & Scrollbar & Images\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Images\00", align 1
@NK_TEXT_CENTERED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"Selected Image\00", align 1
@NK_POPUP_STATIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"Image Popup\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Combo box\00", align 1
@NK_TEXT_LEFT = common dso_local global i32 0, align 4
@NK_TEXT_RIGHT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"Checkbox\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Flag 1\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Flag 2\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Progressbar\00", align 1
@nk_true = common dso_local global i32 0, align 4
@NK_BUTTON_RIGHT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"piemenu selected: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_context*, %struct.media*)* @basic_demo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basic_demo(%struct.nk_context* %0, %struct.media* %1) #0 {
  %3 = alloca %struct.nk_context*, align 8
  %4 = alloca %struct.media*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nk_panel, align 4
  %7 = alloca i32, align 4
  store %struct.nk_context* %0, %struct.nk_context** %3, align 8
  store %struct.media* %1, %struct.media** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %9 = load %struct.media*, %struct.media** %4, align 8
  %10 = getelementptr inbounds %struct.media, %struct.media* %9, i32 0, i32 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @nk_style_set_font(%struct.nk_context* %8, i32* %12)
  %14 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %15 = call i32 @nk_rect(i32 320, i32 50, i32 275, i32 610)
  %16 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %17 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NK_WINDOW_TITLE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @nk_begin(%struct.nk_context* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %15, i32 %20)
  %22 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %23 = load %struct.media*, %struct.media** %4, align 8
  %24 = call i32 @ui_header(%struct.nk_context* %22, %struct.media* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %25 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %26 = load %struct.media*, %struct.media** %4, align 8
  %27 = call i32 @ui_widget(%struct.nk_context* %25, %struct.media* %26, i32 35)
  %28 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %29 = load %struct.media*, %struct.media** %4, align 8
  %30 = getelementptr inbounds %struct.media, %struct.media* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NK_TEXT_CENTERED, align 4
  %33 = call i64 @nk_button_image_label(%struct.nk_context* %28, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load i32, i32* @basic_demo.image_active, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* @basic_demo.image_active, align 4
  br label %40

40:                                               ; preds = %35, %2
  %41 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %42 = load %struct.media*, %struct.media** %4, align 8
  %43 = call i32 @ui_header(%struct.nk_context* %41, %struct.media* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %44 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %45 = load %struct.media*, %struct.media** %4, align 8
  %46 = call i32 @ui_widget_centered(%struct.nk_context* %44, %struct.media* %45, i32 100)
  %47 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %48 = load %struct.media*, %struct.media** %4, align 8
  %49 = getelementptr inbounds %struct.media, %struct.media* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @basic_demo.selected_image, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nk_image(%struct.nk_context* %47, i32 %54)
  %56 = load i32, i32* @basic_demo.image_active, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %40
  %59 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %60 = load i32, i32* @NK_POPUP_STATIC, align 4
  %61 = call i32 @nk_rect(i32 265, i32 0, i32 320, i32 220)
  %62 = call i64 @nk_popup_begin(%struct.nk_context* %59, i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  %65 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %66 = call i32 @nk_layout_row_static(%struct.nk_context* %65, i32 82, i32 82, i32 3)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %86, %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 9
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %72 = load %struct.media*, %struct.media** %4, align 8
  %73 = getelementptr inbounds %struct.media, %struct.media* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @nk_button_image(%struct.nk_context* %71, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* @basic_demo.selected_image, align 4
  store i32 0, i32* @basic_demo.image_active, align 4
  %83 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %84 = call i32 @nk_popup_close(%struct.nk_context* %83)
  br label %85

85:                                               ; preds = %81, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %67

89:                                               ; preds = %67
  %90 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %91 = call i32 @nk_popup_end(%struct.nk_context* %90)
  br label %92

92:                                               ; preds = %89, %58
  br label %93

93:                                               ; preds = %92, %40
  %94 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %95 = load %struct.media*, %struct.media** %4, align 8
  %96 = call i32 @ui_header(%struct.nk_context* %94, %struct.media* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %97 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %98 = load %struct.media*, %struct.media** %4, align 8
  %99 = call i32 @ui_widget(%struct.nk_context* %97, %struct.media* %98, i32 40)
  %100 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %101 = load i32, i32* @basic_demo.selected_item, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i8*], [3 x i8*]* @basic_demo.items, i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %106 = call i32 @nk_widget_width(%struct.nk_context* %105)
  %107 = call i32 @nk_vec2(i32 %106, i32 200)
  %108 = call i64 @nk_combo_begin_label(%struct.nk_context* %100, i8* %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %93
  %111 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %112 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %111, i32 35, i32 1)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %128, %110
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x i8*], [3 x i8*]* @basic_demo.items, i64 0, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @NK_TEXT_LEFT, align 4
  %123 = call i64 @nk_combo_item_label(%struct.nk_context* %117, i8* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* @basic_demo.selected_item, align 4
  br label %127

127:                                              ; preds = %125, %116
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %113

131:                                              ; preds = %113
  %132 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %133 = call i32 @nk_combo_end(%struct.nk_context* %132)
  br label %134

134:                                              ; preds = %131, %93
  %135 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %136 = load %struct.media*, %struct.media** %4, align 8
  %137 = call i32 @ui_widget(%struct.nk_context* %135, %struct.media* %136, i32 40)
  %138 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %139 = load i32, i32* @basic_demo.selected_icon, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i8*], [3 x i8*]* @basic_demo.items, i64 0, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.media*, %struct.media** %4, align 8
  %144 = getelementptr inbounds %struct.media, %struct.media* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @basic_demo.selected_icon, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %151 = call i32 @nk_widget_width(%struct.nk_context* %150)
  %152 = call i32 @nk_vec2(i32 %151, i32 200)
  %153 = call i64 @nk_combo_begin_image_label(%struct.nk_context* %138, i8* %142, i32 %149, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %186

155:                                              ; preds = %134
  %156 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %157 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %156, i32 35, i32 1)
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %180, %155
  %159 = load i32, i32* %5, align 4
  %160 = icmp slt i32 %159, 3
  br i1 %160, label %161, label %183

161:                                              ; preds = %158
  %162 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %163 = load %struct.media*, %struct.media** %4, align 8
  %164 = getelementptr inbounds %struct.media, %struct.media* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x i8*], [3 x i8*]* @basic_demo.items, i64 0, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %175 = call i64 @nk_combo_item_image_label(%struct.nk_context* %162, i32 %169, i8* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %161
  %178 = load i32, i32* %5, align 4
  store i32 %178, i32* @basic_demo.selected_icon, align 4
  br label %179

179:                                              ; preds = %177, %161
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %158

183:                                              ; preds = %158
  %184 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %185 = call i32 @nk_combo_end(%struct.nk_context* %184)
  br label %186

186:                                              ; preds = %183, %134
  %187 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %188 = load %struct.media*, %struct.media** %4, align 8
  %189 = call i32 @ui_header(%struct.nk_context* %187, %struct.media* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %190 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %191 = load %struct.media*, %struct.media** %4, align 8
  %192 = call i32 @ui_widget(%struct.nk_context* %190, %struct.media* %191, i32 30)
  %193 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %194 = call i32 @nk_checkbox_label(%struct.nk_context* %193, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* @basic_demo.check0)
  %195 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %196 = load %struct.media*, %struct.media** %4, align 8
  %197 = call i32 @ui_widget(%struct.nk_context* %195, %struct.media* %196, i32 30)
  %198 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %199 = call i32 @nk_checkbox_label(%struct.nk_context* %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32* @basic_demo.check1)
  %200 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %201 = load %struct.media*, %struct.media** %4, align 8
  %202 = call i32 @ui_header(%struct.nk_context* %200, %struct.media* %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %203 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %204 = load %struct.media*, %struct.media** %4, align 8
  %205 = call i32 @ui_widget(%struct.nk_context* %203, %struct.media* %204, i32 35)
  %206 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %207 = load i32, i32* @nk_true, align 4
  %208 = call i32 @nk_progress(%struct.nk_context* %206, i64* @basic_demo.prog, i32 100, i32 %207)
  %209 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %210 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %209, i32 0, i32 0
  %211 = load i32, i32* @NK_BUTTON_RIGHT, align 4
  %212 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %213 = call i32 @nk_window_get_bounds(%struct.nk_context* %212)
  %214 = load i32, i32* @nk_true, align 4
  %215 = call i64 @nk_input_is_mouse_click_down_in_rect(%struct.TYPE_8__* %210, i32 %211, i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %186
  %218 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %219 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = bitcast %struct.nk_vec2* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.nk_vec2* @basic_demo.piemenu_pos to i8*), i8* align 4 %222, i64 4, i1 false)
  store i32 1, i32* @basic_demo.piemenu_active, align 4
  br label %223

223:                                              ; preds = %217, %186
  %224 = load i32, i32* @basic_demo.piemenu_active, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %223
  %227 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %228 = load %struct.media*, %struct.media** %4, align 8
  %229 = getelementptr inbounds %struct.media, %struct.media* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* getelementptr inbounds (%struct.nk_vec2, %struct.nk_vec2* @basic_demo.piemenu_pos, i32 0, i32 0), align 4
  %233 = call i32 @ui_piemenu(%struct.nk_context* %227, i32 %232, i32 140, i32* %231, i32 6)
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %7, align 4
  %235 = icmp eq i32 %234, -2
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  store i32 0, i32* @basic_demo.piemenu_active, align 4
  br label %237

237:                                              ; preds = %236, %226
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, -1
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load i32, i32* @stdout, align 4
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @fprintf(i32 %241, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %242)
  store i32 0, i32* @basic_demo.piemenu_active, align 4
  br label %244

244:                                              ; preds = %240, %237
  br label %245

245:                                              ; preds = %244, %223
  %246 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %247 = load %struct.media*, %struct.media** %4, align 8
  %248 = getelementptr inbounds %struct.media, %struct.media* %247, i32 0, i32 0
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = call i32 @nk_style_set_font(%struct.nk_context* %246, i32* %250)
  %252 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %253 = call i32 @nk_end(%struct.nk_context* %252)
  ret void
}

declare dso_local i32 @nk_style_set_font(%struct.nk_context*, i32*) #1

declare dso_local i32 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @ui_header(%struct.nk_context*, %struct.media*, i8*) #1

declare dso_local i32 @ui_widget(%struct.nk_context*, %struct.media*, i32) #1

declare dso_local i64 @nk_button_image_label(%struct.nk_context*, i32, i8*, i32) #1

declare dso_local i32 @ui_widget_centered(%struct.nk_context*, %struct.media*, i32) #1

declare dso_local i32 @nk_image(%struct.nk_context*, i32) #1

declare dso_local i64 @nk_popup_begin(%struct.nk_context*, i32, i8*, i32, i32) #1

declare dso_local i32 @nk_layout_row_static(%struct.nk_context*, i32, i32, i32) #1

declare dso_local i64 @nk_button_image(%struct.nk_context*, i32) #1

declare dso_local i32 @nk_popup_close(%struct.nk_context*) #1

declare dso_local i32 @nk_popup_end(%struct.nk_context*) #1

declare dso_local i64 @nk_combo_begin_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_vec2(i32, i32) #1

declare dso_local i32 @nk_widget_width(%struct.nk_context*) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i64 @nk_combo_item_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_combo_end(%struct.nk_context*) #1

declare dso_local i64 @nk_combo_begin_image_label(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i64 @nk_combo_item_image_label(%struct.nk_context*, i32, i8*, i32) #1

declare dso_local i32 @nk_checkbox_label(%struct.nk_context*, i8*, i32*) #1

declare dso_local i32 @nk_progress(%struct.nk_context*, i64*, i32, i32) #1

declare dso_local i64 @nk_input_is_mouse_click_down_in_rect(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @nk_window_get_bounds(%struct.nk_context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ui_piemenu(%struct.nk_context*, i32, i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
