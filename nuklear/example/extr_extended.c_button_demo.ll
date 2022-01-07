; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_extended.c_button_demo.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_extended.c_button_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }
%struct.media = type { %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@button_demo.option = internal global i32 1, align 4
@button_demo.toggle0 = internal global i32 1, align 4
@button_demo.toggle1 = internal global i32 0, align 4
@button_demo.toggle2 = internal global i32 1, align 4
@.str = private unnamed_addr constant [12 x i8] c"Button Demo\00", align 1
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@NK_WINDOW_TITLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Music\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Play\00", align 1
@NK_TEXT_RIGHT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Stop\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Pause\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Next\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Prev\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Push buttons\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Push me\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"pushed!\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Styled\00", align 1
@NK_TEXT_CENTERED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"rocket!\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Repeater\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Press me\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"pressed!\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Toggle buttons\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@NK_TEXT_LEFT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"Radio buttons\00", align 1
@NK_SYMBOL_CIRCLE_OUTLINE = common dso_local global i32 0, align 4
@NK_SYMBOL_CIRCLE_SOLID = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@NK_WINDOW_NO_SCROLLBAR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"Clone\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"pressed clone!\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"pressed delete!\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Convert\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"pressed convert!\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Edit\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"pressed edit!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_context*, %struct.media*)* @button_demo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @button_demo(%struct.nk_context* %0, %struct.media* %1) #0 {
  %3 = alloca %struct.nk_context*, align 8
  %4 = alloca %struct.media*, align 8
  store %struct.nk_context* %0, %struct.nk_context** %3, align 8
  store %struct.media* %1, %struct.media** %4, align 8
  %5 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %6 = load %struct.media*, %struct.media** %4, align 8
  %7 = getelementptr inbounds %struct.media, %struct.media* %6, i32 0, i32 17
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @nk_style_set_font(%struct.nk_context* %5, i32* %9)
  %11 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %12 = call i32 @nk_rect(i32 50, i32 50, i32 255, i32 610)
  %13 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %14 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @NK_WINDOW_TITLE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @nk_begin(%struct.nk_context* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17)
  %19 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %20 = call i32 @nk_menubar_begin(%struct.nk_context* %19)
  %21 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %22 = call i32 @nk_layout_row_static(%struct.nk_context* %21, i32 40, i32 40, i32 4)
  %23 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %24 = load %struct.media*, %struct.media** %4, align 8
  %25 = getelementptr inbounds %struct.media, %struct.media* %24, i32 0, i32 16
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @nk_vec2(i32 110, i32 120)
  %28 = call i64 @nk_menu_begin_image(%struct.nk_context* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %2
  %31 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %32 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %31, i32 25, i32 1)
  %33 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %34 = load %struct.media*, %struct.media** %4, align 8
  %35 = getelementptr inbounds %struct.media, %struct.media* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %38 = call i32 @nk_menu_item_image_label(%struct.nk_context* %33, i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %40 = load %struct.media*, %struct.media** %4, align 8
  %41 = getelementptr inbounds %struct.media, %struct.media* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %44 = call i32 @nk_menu_item_image_label(%struct.nk_context* %39, i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %46 = load %struct.media*, %struct.media** %4, align 8
  %47 = getelementptr inbounds %struct.media, %struct.media* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %50 = call i32 @nk_menu_item_image_label(%struct.nk_context* %45, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %52 = load %struct.media*, %struct.media** %4, align 8
  %53 = getelementptr inbounds %struct.media, %struct.media* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %56 = call i32 @nk_menu_item_image_label(%struct.nk_context* %51, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %58 = load %struct.media*, %struct.media** %4, align 8
  %59 = getelementptr inbounds %struct.media, %struct.media* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %62 = call i32 @nk_menu_item_image_label(%struct.nk_context* %57, i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %64 = call i32 @nk_menu_end(%struct.nk_context* %63)
  br label %65

65:                                               ; preds = %30, %2
  %66 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %67 = load %struct.media*, %struct.media** %4, align 8
  %68 = getelementptr inbounds %struct.media, %struct.media* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nk_button_image(%struct.nk_context* %66, i32 %69)
  %71 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %72 = load %struct.media*, %struct.media** %4, align 8
  %73 = getelementptr inbounds %struct.media, %struct.media* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @nk_button_image(%struct.nk_context* %71, i32 %74)
  %76 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %77 = load %struct.media*, %struct.media** %4, align 8
  %78 = getelementptr inbounds %struct.media, %struct.media* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nk_button_image(%struct.nk_context* %76, i32 %79)
  %81 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %82 = call i32 @nk_menubar_end(%struct.nk_context* %81)
  %83 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %84 = load %struct.media*, %struct.media** %4, align 8
  %85 = call i32 @ui_header(%struct.nk_context* %83, %struct.media* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %86 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %87 = load %struct.media*, %struct.media** %4, align 8
  %88 = call i32 @ui_widget(%struct.nk_context* %86, %struct.media* %87, i32 35)
  %89 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %90 = call i64 @nk_button_label(%struct.nk_context* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %65
  %93 = load i32, i32* @stdout, align 4
  %94 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %65
  %96 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %97 = load %struct.media*, %struct.media** %4, align 8
  %98 = call i32 @ui_widget(%struct.nk_context* %96, %struct.media* %97, i32 35)
  %99 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %100 = load %struct.media*, %struct.media** %4, align 8
  %101 = getelementptr inbounds %struct.media, %struct.media* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NK_TEXT_CENTERED, align 4
  %104 = call i64 @nk_button_image_label(%struct.nk_context* %99, i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 @fprintf(i32 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %95
  %110 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %111 = load %struct.media*, %struct.media** %4, align 8
  %112 = call i32 @ui_header(%struct.nk_context* %110, %struct.media* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %113 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %114 = load %struct.media*, %struct.media** %4, align 8
  %115 = call i32 @ui_widget(%struct.nk_context* %113, %struct.media* %114, i32 35)
  %116 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %117 = call i64 @nk_button_label(%struct.nk_context* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* @stdout, align 4
  %121 = call i32 @fprintf(i32 %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %109
  %123 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %124 = load %struct.media*, %struct.media** %4, align 8
  %125 = call i32 @ui_header(%struct.nk_context* %123, %struct.media* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %126 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %127 = load %struct.media*, %struct.media** %4, align 8
  %128 = call i32 @ui_widget(%struct.nk_context* %126, %struct.media* %127, i32 35)
  %129 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %130 = load i32, i32* @button_demo.toggle0, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load %struct.media*, %struct.media** %4, align 8
  %134 = getelementptr inbounds %struct.media, %struct.media* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  br label %140

136:                                              ; preds = %122
  %137 = load %struct.media*, %struct.media** %4, align 8
  %138 = getelementptr inbounds %struct.media, %struct.media* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi i32 [ %135, %132 ], [ %139, %136 ]
  %142 = load i32, i32* @NK_TEXT_LEFT, align 4
  %143 = call i64 @nk_button_image_label(%struct.nk_context* %129, i32 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i32, i32* @button_demo.toggle0, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  store i32 %149, i32* @button_demo.toggle0, align 4
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %152 = load %struct.media*, %struct.media** %4, align 8
  %153 = call i32 @ui_widget(%struct.nk_context* %151, %struct.media* %152, i32 35)
  %154 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %155 = load i32, i32* @button_demo.toggle1, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load %struct.media*, %struct.media** %4, align 8
  %159 = getelementptr inbounds %struct.media, %struct.media* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  br label %165

161:                                              ; preds = %150
  %162 = load %struct.media*, %struct.media** %4, align 8
  %163 = getelementptr inbounds %struct.media, %struct.media* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  br label %165

165:                                              ; preds = %161, %157
  %166 = phi i32 [ %160, %157 ], [ %164, %161 ]
  %167 = load i32, i32* @NK_TEXT_LEFT, align 4
  %168 = call i64 @nk_button_image_label(%struct.nk_context* %154, i32 %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load i32, i32* @button_demo.toggle1, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  store i32 %174, i32* @button_demo.toggle1, align 4
  br label %175

175:                                              ; preds = %170, %165
  %176 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %177 = load %struct.media*, %struct.media** %4, align 8
  %178 = call i32 @ui_widget(%struct.nk_context* %176, %struct.media* %177, i32 35)
  %179 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %180 = load i32, i32* @button_demo.toggle2, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load %struct.media*, %struct.media** %4, align 8
  %184 = getelementptr inbounds %struct.media, %struct.media* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  br label %190

186:                                              ; preds = %175
  %187 = load %struct.media*, %struct.media** %4, align 8
  %188 = getelementptr inbounds %struct.media, %struct.media* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  br label %190

190:                                              ; preds = %186, %182
  %191 = phi i32 [ %185, %182 ], [ %189, %186 ]
  %192 = load i32, i32* @NK_TEXT_LEFT, align 4
  %193 = call i64 @nk_button_image_label(%struct.nk_context* %179, i32 %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load i32, i32* @button_demo.toggle2, align 4
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  store i32 %199, i32* @button_demo.toggle2, align 4
  br label %200

200:                                              ; preds = %195, %190
  %201 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %202 = load %struct.media*, %struct.media** %4, align 8
  %203 = call i32 @ui_header(%struct.nk_context* %201, %struct.media* %202, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %204 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %205 = load %struct.media*, %struct.media** %4, align 8
  %206 = call i32 @ui_widget(%struct.nk_context* %204, %struct.media* %205, i32 35)
  %207 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %208 = load i32, i32* @button_demo.option, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = load i32, i32* @NK_SYMBOL_CIRCLE_OUTLINE, align 4
  br label %214

212:                                              ; preds = %200
  %213 = load i32, i32* @NK_SYMBOL_CIRCLE_SOLID, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  %216 = load i32, i32* @NK_TEXT_LEFT, align 4
  %217 = call i64 @nk_button_symbol_label(%struct.nk_context* %207, i32 %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 0, i32* @button_demo.option, align 4
  br label %220

220:                                              ; preds = %219, %214
  %221 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %222 = load %struct.media*, %struct.media** %4, align 8
  %223 = call i32 @ui_widget(%struct.nk_context* %221, %struct.media* %222, i32 35)
  %224 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %225 = load i32, i32* @button_demo.option, align 4
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %229

227:                                              ; preds = %220
  %228 = load i32, i32* @NK_SYMBOL_CIRCLE_OUTLINE, align 4
  br label %231

229:                                              ; preds = %220
  %230 = load i32, i32* @NK_SYMBOL_CIRCLE_SOLID, align 4
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  %233 = load i32, i32* @NK_TEXT_LEFT, align 4
  %234 = call i64 @nk_button_symbol_label(%struct.nk_context* %224, i32 %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  store i32 1, i32* @button_demo.option, align 4
  br label %237

237:                                              ; preds = %236, %231
  %238 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %239 = load %struct.media*, %struct.media** %4, align 8
  %240 = call i32 @ui_widget(%struct.nk_context* %238, %struct.media* %239, i32 35)
  %241 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %242 = load i32, i32* @button_demo.option, align 4
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = load i32, i32* @NK_SYMBOL_CIRCLE_OUTLINE, align 4
  br label %248

246:                                              ; preds = %237
  %247 = load i32, i32* @NK_SYMBOL_CIRCLE_SOLID, align 4
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i32 [ %245, %244 ], [ %247, %246 ]
  %250 = load i32, i32* @NK_TEXT_LEFT, align 4
  %251 = call i64 @nk_button_symbol_label(%struct.nk_context* %241, i32 %249, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store i32 2, i32* @button_demo.option, align 4
  br label %254

254:                                              ; preds = %253, %248
  %255 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %256 = load %struct.media*, %struct.media** %4, align 8
  %257 = getelementptr inbounds %struct.media, %struct.media* %256, i32 0, i32 5
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = call i32 @nk_style_set_font(%struct.nk_context* %255, i32* %259)
  %261 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %262 = load i32, i32* @NK_WINDOW_NO_SCROLLBAR, align 4
  %263 = call i32 @nk_vec2(i32 150, i32 300)
  %264 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %265 = call i32 @nk_window_get_bounds(%struct.nk_context* %264)
  %266 = call i64 @nk_contextual_begin(%struct.nk_context* %261, i32 %262, i32 %263, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %317

268:                                              ; preds = %254
  %269 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %270 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %269, i32 30, i32 1)
  %271 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %272 = load %struct.media*, %struct.media** %4, align 8
  %273 = getelementptr inbounds %struct.media, %struct.media* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %276 = call i64 @nk_contextual_item_image_label(%struct.nk_context* %271, i32 %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %268
  %279 = load i32, i32* @stdout, align 4
  %280 = call i32 @fprintf(i32 %279, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  br label %281

281:                                              ; preds = %278, %268
  %282 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %283 = load %struct.media*, %struct.media** %4, align 8
  %284 = getelementptr inbounds %struct.media, %struct.media* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %287 = call i64 @nk_contextual_item_image_label(%struct.nk_context* %282, i32 %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %281
  %290 = load i32, i32* @stdout, align 4
  %291 = call i32 @fprintf(i32 %290, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %281
  %293 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %294 = load %struct.media*, %struct.media** %4, align 8
  %295 = getelementptr inbounds %struct.media, %struct.media* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %298 = call i64 @nk_contextual_item_image_label(%struct.nk_context* %293, i32 %296, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %292
  %301 = load i32, i32* @stdout, align 4
  %302 = call i32 @fprintf(i32 %301, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %292
  %304 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %305 = load %struct.media*, %struct.media** %4, align 8
  %306 = getelementptr inbounds %struct.media, %struct.media* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %309 = call i64 @nk_contextual_item_image_label(%struct.nk_context* %304, i32 %307, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %303
  %312 = load i32, i32* @stdout, align 4
  %313 = call i32 @fprintf(i32 %312, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  br label %314

314:                                              ; preds = %311, %303
  %315 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %316 = call i32 @nk_contextual_end(%struct.nk_context* %315)
  br label %317

317:                                              ; preds = %314, %254
  %318 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %319 = load %struct.media*, %struct.media** %4, align 8
  %320 = getelementptr inbounds %struct.media, %struct.media* %319, i32 0, i32 0
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = call i32 @nk_style_set_font(%struct.nk_context* %318, i32* %322)
  %324 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %325 = call i32 @nk_end(%struct.nk_context* %324)
  ret void
}

declare dso_local i32 @nk_style_set_font(%struct.nk_context*, i32*) #1

declare dso_local i32 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_menubar_begin(%struct.nk_context*) #1

declare dso_local i32 @nk_layout_row_static(%struct.nk_context*, i32, i32, i32) #1

declare dso_local i64 @nk_menu_begin_image(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_vec2(i32, i32) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i32 @nk_menu_item_image_label(%struct.nk_context*, i32, i8*, i32) #1

declare dso_local i32 @nk_menu_end(%struct.nk_context*) #1

declare dso_local i32 @nk_button_image(%struct.nk_context*, i32) #1

declare dso_local i32 @nk_menubar_end(%struct.nk_context*) #1

declare dso_local i32 @ui_header(%struct.nk_context*, %struct.media*, i8*) #1

declare dso_local i32 @ui_widget(%struct.nk_context*, %struct.media*, i32) #1

declare dso_local i64 @nk_button_label(%struct.nk_context*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @nk_button_image_label(%struct.nk_context*, i32, i8*, i32) #1

declare dso_local i64 @nk_button_symbol_label(%struct.nk_context*, i32, i8*, i32) #1

declare dso_local i64 @nk_contextual_begin(%struct.nk_context*, i32, i32, i32) #1

declare dso_local i32 @nk_window_get_bounds(%struct.nk_context*) #1

declare dso_local i64 @nk_contextual_item_image_label(%struct.nk_context*, i32, i8*, i32) #1

declare dso_local i32 @nk_contextual_end(%struct.nk_context*) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
