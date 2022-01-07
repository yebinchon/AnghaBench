; ModuleID = '/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/extr_node_editor.c_node_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_editor = type { i32, i32, i32, %struct.TYPE_7__, %struct.node*, i32, %struct.node*, %struct.node_link*, %struct.TYPE_6__, %struct.node*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.node_link = type { i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.node*, i8*, i32 }
%struct.node = type { i32, i32, %struct.node*, %struct.nk_rect, i32, %struct.TYPE_10__, i64, i32 }
%struct.nk_rect = type { float, i32, float, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8* }
%struct.nk_context = type { %struct.nk_input }
%struct.nk_input = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.nk_vec2 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nk_vec2 = type { i32, i32 }
%struct.nk_command_buffer = type { i32 }
%struct.nk_panel = type { %struct.nk_rect }
%struct.nk_color = type { i32 }

@nodeEditor = common dso_local global %struct.node_editor zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"NodeEdit\00", align 1
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_NO_SCROLLBAR = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@NK_WINDOW_CLOSABLE = common dso_local global i32 0, align 4
@NK_STATIC = common dso_local global i32 0, align 4
@NK_WINDOW_TITLE = common dso_local global i32 0, align 4
@NK_BUTTON_LEFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"#R:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"#G:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"#B:\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"#A:\00", align 1
@nk_true = common dso_local global i8* null, align 8
@nk_false = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"linking failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Show Grid\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Hide Grid\00", align 1
@__const.node_editor.grid_option = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"New\00", align 1
@NK_TEXT_CENTERED = common dso_local global i32 0, align 4
@NK_BUTTON_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nk_context*)* @node_editor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_editor(%struct.nk_context* %0) #0 {
  %2 = alloca %struct.nk_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nk_rect, align 4
  %5 = alloca %struct.nk_input*, align 8
  %6 = alloca %struct.nk_command_buffer*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node_editor*, align 8
  %9 = alloca %struct.nk_rect, align 4
  %10 = alloca %struct.node*, align 8
  %11 = alloca %struct.nk_rect, align 4
  %12 = alloca %struct.nk_panel*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.nk_color, align 4
  %17 = alloca %struct.nk_rect, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.nk_rect, align 4
  %20 = alloca %struct.nk_rect, align 4
  %21 = alloca %struct.nk_rect, align 4
  %22 = alloca %struct.nk_color, align 4
  %23 = alloca %struct.nk_vec2, align 4
  %24 = alloca %struct.nk_vec2, align 4
  %25 = alloca %struct.nk_color, align 4
  %26 = alloca %struct.nk_rect, align 4
  %27 = alloca %struct.nk_color, align 4
  %28 = alloca %struct.node_link*, align 8
  %29 = alloca %struct.node*, align 8
  %30 = alloca %struct.node*, align 8
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca %struct.nk_vec2, align 4
  %34 = alloca %struct.nk_vec2, align 4
  %35 = alloca %struct.nk_vec2, align 4
  %36 = alloca %struct.nk_vec2, align 4
  %37 = alloca %struct.nk_color, align 4
  %38 = alloca %struct.nk_rect, align 4
  %39 = alloca %struct.nk_rect, align 4
  %40 = alloca %struct.nk_vec2, align 4
  %41 = alloca %struct.nk_rect, align 4
  %42 = alloca [2 x i8*], align 16
  %43 = alloca %struct.nk_color, align 4
  %44 = alloca %struct.nk_rect, align 4
  store %struct.nk_context* %0, %struct.nk_context** %2, align 8
  store i32 0, i32* %3, align 4
  %45 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %46 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %45, i32 0, i32 0
  store %struct.nk_input* %46, %struct.nk_input** %5, align 8
  store %struct.node* null, %struct.node** %7, align 8
  store %struct.node_editor* @nodeEditor, %struct.node_editor** %8, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.node_editor, %struct.node_editor* @nodeEditor, i32 0, i32 0), align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %1
  %50 = call i32 @node_editor_init(%struct.node_editor* @nodeEditor)
  store i32 1, i32* getelementptr inbounds (%struct.node_editor, %struct.node_editor* @nodeEditor, i32 0, i32 0), align 8
  br label %51

51:                                               ; preds = %49, %1
  %52 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %53 = call i32 @nk_rect(i32 0, i32 0, i32 800, i32 600)
  %54 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %55 = load i32, i32* @NK_WINDOW_NO_SCROLLBAR, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @NK_WINDOW_CLOSABLE, align 4
  %60 = or i32 %58, %59
  %61 = call i64 @nk_begin(%struct.nk_context* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %1008

63:                                               ; preds = %51
  %64 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %65 = call %struct.nk_command_buffer* @nk_window_get_canvas(%struct.nk_context* %64)
  store %struct.nk_command_buffer* %65, %struct.nk_command_buffer** %6, align 8
  %66 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %67 = call { i64, i64 } @nk_window_get_content_region(%struct.nk_context* %66)
  %68 = bitcast %struct.nk_rect* %9 to { i64, i64 }*
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 0
  %70 = extractvalue { i64, i64 } %67, 0
  store i64 %70, i64* %69, align 4
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 1
  %72 = extractvalue { i64, i64 } %67, 1
  store i64 %72, i64* %71, align 4
  %73 = bitcast %struct.nk_rect* %4 to i8*
  %74 = bitcast %struct.nk_rect* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 16, i1 false)
  %75 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %76 = load i32, i32* @NK_STATIC, align 4
  %77 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %4, i32 0, i32 0
  %78 = load float, float* %77, align 4
  %79 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %80 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @nk_layout_space_begin(%struct.nk_context* %75, i32 %76, float %78, i32 %81)
  %83 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %84 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %83, i32 0, i32 6
  %85 = load %struct.node*, %struct.node** %84, align 8
  store %struct.node* %85, %struct.node** %10, align 8
  %86 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %87 = call { i64, i64 } @nk_layout_space_bounds(%struct.nk_context* %86)
  %88 = bitcast %struct.nk_rect* %11 to { i64, i64 }*
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 0
  %90 = extractvalue { i64, i64 } %87, 0
  store i64 %90, i64* %89, align 4
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 1
  %92 = extractvalue { i64, i64 } %87, 1
  store i64 %92, i64* %91, align 4
  store %struct.nk_panel* null, %struct.nk_panel** %12, align 8
  %93 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %94 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %188

97:                                               ; preds = %63
  store float 3.200000e+01, float* %15, align 4
  %98 = call i32 @nk_rgb(i32 50, i32 50, i32 50)
  %99 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %16, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %103 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %101, %105
  %107 = call i64 @fmod(i32 %106, float 3.200000e+01)
  %108 = sitofp i64 %107 to float
  store float %108, float* %13, align 4
  br label %109

109:                                              ; preds = %140, %97
  %110 = load float, float* %13, align 4
  %111 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 2
  %112 = load float, float* %111, align 4
  %113 = fcmp olt float %110, %112
  br i1 %113, label %114, label %143

114:                                              ; preds = %109
  %115 = load %struct.nk_command_buffer*, %struct.nk_command_buffer** %6, align 8
  %116 = load float, float* %13, align 4
  %117 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sitofp i32 %118 to float
  %120 = fadd float %116, %119
  %121 = fptosi float %120 to i32
  %122 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load float, float* %13, align 4
  %125 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sitofp i32 %126 to float
  %128 = fadd float %124, %127
  %129 = fptosi float %128 to i32
  %130 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sitofp i32 %131 to float
  %133 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 0
  %134 = load float, float* %133, align 4
  %135 = fadd float %132, %134
  %136 = fptosi float %135 to i32
  %137 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %16, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @nk_stroke_line(%struct.nk_command_buffer* %115, i32 %121, i32 %123, i32 %129, i32 %136, float 1.000000e+00, i32 %138)
  br label %140

140:                                              ; preds = %114
  %141 = load float, float* %13, align 4
  %142 = fadd float %141, 3.200000e+01
  store float %142, float* %13, align 4
  br label %109

143:                                              ; preds = %109
  %144 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %147 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %145, %149
  %151 = call i64 @fmod(i32 %150, float 3.200000e+01)
  %152 = sitofp i64 %151 to float
  store float %152, float* %14, align 4
  br label %153

153:                                              ; preds = %184, %143
  %154 = load float, float* %14, align 4
  %155 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 0
  %156 = load float, float* %155, align 4
  %157 = fcmp olt float %154, %156
  br i1 %157, label %158, label %187

158:                                              ; preds = %153
  %159 = load %struct.nk_command_buffer*, %struct.nk_command_buffer** %6, align 8
  %160 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load float, float* %14, align 4
  %163 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = sitofp i32 %164 to float
  %166 = fadd float %162, %165
  %167 = fptosi float %166 to i32
  %168 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sitofp i32 %169 to float
  %171 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 2
  %172 = load float, float* %171, align 4
  %173 = fadd float %170, %172
  %174 = fptosi float %173 to i32
  %175 = load float, float* %14, align 4
  %176 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sitofp i32 %177 to float
  %179 = fadd float %175, %178
  %180 = fptosi float %179 to i32
  %181 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %16, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @nk_stroke_line(%struct.nk_command_buffer* %159, i32 %161, i32 %167, i32 %174, i32 %180, float 1.000000e+00, i32 %182)
  br label %184

184:                                              ; preds = %158
  %185 = load float, float* %14, align 4
  %186 = fadd float %185, 3.200000e+01
  store float %186, float* %14, align 4
  br label %153

187:                                              ; preds = %153
  br label %188

188:                                              ; preds = %187, %63
  br label %189

189:                                              ; preds = %622, %188
  %190 = load %struct.node*, %struct.node** %10, align 8
  %191 = icmp ne %struct.node* %190, null
  br i1 %191, label %192, label %626

192:                                              ; preds = %189
  %193 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %194 = load %struct.node*, %struct.node** %10, align 8
  %195 = getelementptr inbounds %struct.node, %struct.node* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %199 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %197, %201
  %203 = load %struct.node*, %struct.node** %10, align 8
  %204 = getelementptr inbounds %struct.node, %struct.node* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %208 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %206, %210
  %212 = load %struct.node*, %struct.node** %10, align 8
  %213 = getelementptr inbounds %struct.node, %struct.node* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %213, i32 0, i32 2
  %215 = load float, float* %214, align 8
  %216 = fptosi float %215 to i32
  %217 = load %struct.node*, %struct.node** %10, align 8
  %218 = getelementptr inbounds %struct.node, %struct.node* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %218, i32 0, i32 0
  %220 = load float, float* %219, align 8
  %221 = fptosi float %220 to i32
  %222 = call i32 @nk_rect(i32 %202, i32 %211, i32 %216, i32 %221)
  %223 = call i32 @nk_layout_space_push(%struct.nk_context* %193, i32 %222)
  %224 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %225 = load %struct.node*, %struct.node** %10, align 8
  %226 = getelementptr inbounds %struct.node, %struct.node* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %229 = load i32, i32* @NK_WINDOW_NO_SCROLLBAR, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @NK_WINDOW_TITLE, align 4
  %234 = or i32 %232, %233
  %235 = call i64 @nk_group_begin(%struct.nk_context* %224, i32 %227, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %337

237:                                              ; preds = %192
  %238 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %239 = call %struct.nk_panel* @nk_window_get_panel(%struct.nk_context* %238)
  store %struct.nk_panel* %239, %struct.nk_panel** %12, align 8
  %240 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %241 = load i32, i32* @NK_BUTTON_LEFT, align 4
  %242 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %243 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %242, i32 0, i32 0
  %244 = bitcast %struct.nk_rect* %243 to { i64, i64 }*
  %245 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 4
  %247 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %244, i32 0, i32 1
  %248 = load i64, i64* %247, align 4
  %249 = call i64 @nk_input_mouse_clicked(%struct.nk_input* %240, i32 %241, i64 %246, i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %288

251:                                              ; preds = %237
  %252 = load %struct.node*, %struct.node** %10, align 8
  %253 = getelementptr inbounds %struct.node, %struct.node* %252, i32 0, i32 6
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %280

256:                                              ; preds = %251
  %257 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %258 = load i32, i32* @NK_BUTTON_LEFT, align 4
  %259 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %260 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %261 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %260, i32 0, i32 0
  %262 = bitcast %struct.nk_rect* %261 to { i64, i64 }*
  %263 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 4
  %265 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %262, i32 0, i32 1
  %266 = load i64, i64* %265, align 4
  %267 = call { i64, i64 } @nk_layout_space_rect_to_screen(%struct.nk_context* %259, i64 %264, i64 %266)
  %268 = bitcast %struct.nk_rect* %17 to { i64, i64 }*
  %269 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %268, i32 0, i32 0
  %270 = extractvalue { i64, i64 } %267, 0
  store i64 %270, i64* %269, align 4
  %271 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %268, i32 0, i32 1
  %272 = extractvalue { i64, i64 } %267, 1
  store i64 %272, i64* %271, align 4
  %273 = bitcast %struct.nk_rect* %17 to { i64, i64 }*
  %274 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 4
  %276 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %273, i32 0, i32 1
  %277 = load i64, i64* %276, align 4
  %278 = call i64 @nk_input_mouse_clicked(%struct.nk_input* %257, i32 %258, i64 %275, i64 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %288, label %280

280:                                              ; preds = %256, %251
  %281 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %282 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %281, i32 0, i32 9
  %283 = load %struct.node*, %struct.node** %282, align 8
  %284 = load %struct.node*, %struct.node** %10, align 8
  %285 = icmp ne %struct.node* %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load %struct.node*, %struct.node** %10, align 8
  store %struct.node* %287, %struct.node** %7, align 8
  br label %288

288:                                              ; preds = %286, %280, %256, %237
  %289 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %290 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %289, i32 25, i32 1)
  %291 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %292 = load %struct.node*, %struct.node** %10, align 8
  %293 = getelementptr inbounds %struct.node, %struct.node* %292, i32 0, i32 5
  %294 = call i32 @nk_button_color(%struct.nk_context* %291, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %293)
  %295 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %296 = load %struct.node*, %struct.node** %10, align 8
  %297 = getelementptr inbounds %struct.node, %struct.node* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 3
  %299 = load i8*, i8** %298, align 8
  %300 = call i64 @nk_propertyi(%struct.nk_context* %295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %299, i32 255, i32 1, i32 1)
  %301 = inttoptr i64 %300 to i8*
  %302 = load %struct.node*, %struct.node** %10, align 8
  %303 = getelementptr inbounds %struct.node, %struct.node* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 3
  store i8* %301, i8** %304, align 8
  %305 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %306 = load %struct.node*, %struct.node** %10, align 8
  %307 = getelementptr inbounds %struct.node, %struct.node* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = call i64 @nk_propertyi(%struct.nk_context* %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* %309, i32 255, i32 1, i32 1)
  %311 = inttoptr i64 %310 to i8*
  %312 = load %struct.node*, %struct.node** %10, align 8
  %313 = getelementptr inbounds %struct.node, %struct.node* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 2
  store i8* %311, i8** %314, align 8
  %315 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %316 = load %struct.node*, %struct.node** %10, align 8
  %317 = getelementptr inbounds %struct.node, %struct.node* %316, i32 0, i32 5
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 1
  %319 = load i8*, i8** %318, align 8
  %320 = call i64 @nk_propertyi(%struct.nk_context* %315, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* %319, i32 255, i32 1, i32 1)
  %321 = inttoptr i64 %320 to i8*
  %322 = load %struct.node*, %struct.node** %10, align 8
  %323 = getelementptr inbounds %struct.node, %struct.node* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 1
  store i8* %321, i8** %324, align 8
  %325 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %326 = load %struct.node*, %struct.node** %10, align 8
  %327 = getelementptr inbounds %struct.node, %struct.node* %326, i32 0, i32 5
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = call i64 @nk_propertyi(%struct.nk_context* %325, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 0, i8* %329, i32 255, i32 1, i32 1)
  %331 = inttoptr i64 %330 to i8*
  %332 = load %struct.node*, %struct.node** %10, align 8
  %333 = getelementptr inbounds %struct.node, %struct.node* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  store i8* %331, i8** %334, align 8
  %335 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %336 = call i32 @nk_group_end(%struct.nk_context* %335)
  br label %337

337:                                              ; preds = %288, %192
  %338 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %339 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %340 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %339, i32 0, i32 0
  %341 = bitcast %struct.nk_rect* %340 to { i64, i64 }*
  %342 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 4
  %344 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %341, i32 0, i32 1
  %345 = load i64, i64* %344, align 4
  %346 = call { i64, i64 } @nk_layout_space_rect_to_local(%struct.nk_context* %338, i64 %343, i64 %345)
  %347 = bitcast %struct.nk_rect* %20 to { i64, i64 }*
  %348 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %347, i32 0, i32 0
  %349 = extractvalue { i64, i64 } %346, 0
  store i64 %349, i64* %348, align 4
  %350 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %347, i32 0, i32 1
  %351 = extractvalue { i64, i64 } %346, 1
  store i64 %351, i64* %350, align 4
  %352 = bitcast %struct.nk_rect* %19 to i8*
  %353 = bitcast %struct.nk_rect* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %352, i8* align 4 %353, i64 16, i1 false)
  %354 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %355 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %19, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 %359, %357
  store i32 %360, i32* %358, align 4
  %361 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %362 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %19, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %366, %364
  store i32 %367, i32* %365, align 4
  %368 = load %struct.node*, %struct.node** %10, align 8
  %369 = getelementptr inbounds %struct.node, %struct.node* %368, i32 0, i32 3
  %370 = bitcast %struct.nk_rect* %369 to i8*
  %371 = bitcast %struct.nk_rect* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %370, i8* align 4 %371, i64 16, i1 false)
  %372 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %373 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %373, i32 0, i32 0
  %375 = load float, float* %374, align 4
  %376 = load %struct.node*, %struct.node** %10, align 8
  %377 = getelementptr inbounds %struct.node, %struct.node* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = add nsw i32 %378, 1
  %380 = sitofp i32 %379 to float
  %381 = fdiv float %375, %380
  store float %381, float* %18, align 4
  store i32 0, i32* %3, align 4
  br label %382

382:                                              ; preds = %520, %337
  %383 = load i32, i32* %3, align 4
  %384 = load %struct.node*, %struct.node** %10, align 8
  %385 = getelementptr inbounds %struct.node, %struct.node* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = icmp slt i32 %383, %386
  br i1 %387, label %388, label %523

388:                                              ; preds = %382
  %389 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %390 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = sitofp i32 %392 to float
  %394 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %395 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %395, i32 0, i32 2
  %397 = load float, float* %396, align 4
  %398 = fadd float %393, %397
  %399 = fsub float %398, 4.000000e+00
  %400 = fptosi float %399 to i32
  %401 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %21, i32 0, i32 1
  store i32 %400, i32* %401, align 4
  %402 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %403 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 4
  %406 = sitofp i32 %405 to float
  %407 = load float, float* %18, align 4
  %408 = load i32, i32* %3, align 4
  %409 = add nsw i32 %408, 1
  %410 = sitofp i32 %409 to float
  %411 = fmul float %407, %410
  %412 = fadd float %406, %411
  %413 = fptosi float %412 to i32
  %414 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %21, i32 0, i32 3
  store i32 %413, i32* %414, align 4
  %415 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %21, i32 0, i32 2
  store float 8.000000e+00, float* %415, align 4
  %416 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %21, i32 0, i32 0
  store float 8.000000e+00, float* %416, align 4
  %417 = load %struct.nk_command_buffer*, %struct.nk_command_buffer** %6, align 8
  %418 = call i32 @nk_rgb(i32 100, i32 100, i32 100)
  %419 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %22, i32 0, i32 0
  store i32 %418, i32* %419, align 4
  %420 = bitcast %struct.nk_rect* %21 to { i64, i64 }*
  %421 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 4
  %423 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %420, i32 0, i32 1
  %424 = load i64, i64* %423, align 4
  %425 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %22, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @nk_fill_circle(%struct.nk_command_buffer* %417, i64 %422, i64 %424, i32 %426)
  %428 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %429 = load i32, i32* @NK_BUTTON_LEFT, align 4
  %430 = load i8*, i8** @nk_true, align 8
  %431 = bitcast %struct.nk_rect* %21 to { i64, i64 }*
  %432 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 4
  %434 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %431, i32 0, i32 1
  %435 = load i64, i64* %434, align 4
  %436 = call i64 @nk_input_has_mouse_click_down_in_rect(%struct.nk_input* %428, i32 %429, i64 %433, i64 %435, i8* %430)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %457

438:                                              ; preds = %388
  %439 = load i8*, i8** @nk_true, align 8
  %440 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %441 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %440, i32 0, i32 8
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 2
  store i8* %439, i8** %442, align 8
  %443 = load %struct.node*, %struct.node** %10, align 8
  %444 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %445 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %444, i32 0, i32 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 1
  store %struct.node* %443, %struct.node** %446, align 8
  %447 = load %struct.node*, %struct.node** %10, align 8
  %448 = getelementptr inbounds %struct.node, %struct.node* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %451 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %450, i32 0, i32 8
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 3
  store i32 %449, i32* %452, align 8
  %453 = load i32, i32* %3, align 4
  %454 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %455 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %454, i32 0, i32 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 0
  store i32 %453, i32* %456, align 8
  br label %457

457:                                              ; preds = %438, %388
  %458 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %459 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %458, i32 0, i32 8
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 2
  %461 = load i8*, i8** %460, align 8
  %462 = icmp ne i8* %461, null
  br i1 %462, label %463, label %519

463:                                              ; preds = %457
  %464 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %465 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %464, i32 0, i32 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 1
  %467 = load %struct.node*, %struct.node** %466, align 8
  %468 = load %struct.node*, %struct.node** %10, align 8
  %469 = icmp eq %struct.node* %467, %468
  br i1 %469, label %470, label %519

470:                                              ; preds = %463
  %471 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %472 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %471, i32 0, i32 8
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* %3, align 4
  %476 = icmp eq i32 %474, %475
  br i1 %476, label %477, label %519

477:                                              ; preds = %470
  %478 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %21, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = add nsw i32 %479, 3
  %481 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %21, i32 0, i32 3
  %482 = load i32, i32* %481, align 4
  %483 = add nsw i32 %482, 3
  %484 = call i64 @nk_vec2(i32 %480, i32 %483)
  %485 = bitcast %struct.nk_vec2* %23 to i64*
  store i64 %484, i64* %485, align 4
  %486 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %487 = getelementptr inbounds %struct.nk_input, %struct.nk_input* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %487, i32 0, i32 1
  %489 = bitcast %struct.nk_vec2* %24 to i8*
  %490 = bitcast %struct.nk_vec2* %488 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %489, i8* align 4 %490, i64 8, i1 false)
  %491 = load %struct.nk_command_buffer*, %struct.nk_command_buffer** %6, align 8
  %492 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %23, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %23, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %23, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = sitofp i32 %497 to float
  %499 = fadd float %498, 5.000000e+01
  %500 = fptosi float %499 to i32
  %501 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %23, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %24, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = sitofp i32 %504 to float
  %506 = fsub float %505, 5.000000e+01
  %507 = fptosi float %506 to i32
  %508 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %24, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %24, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %24, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @nk_rgb(i32 100, i32 100, i32 100)
  %515 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %25, i32 0, i32 0
  store i32 %514, i32* %515, align 4
  %516 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %25, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = call i32 @nk_stroke_curve(%struct.nk_command_buffer* %491, i32 %493, i32 %495, i32 %500, i32 %502, i32 %507, i32 %509, i32 %511, i32 %513, float 1.000000e+00, i32 %517)
  br label %519

519:                                              ; preds = %477, %470, %463, %457
  br label %520

520:                                              ; preds = %519
  %521 = load i32, i32* %3, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %3, align 4
  br label %382

523:                                              ; preds = %382
  %524 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %525 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %525, i32 0, i32 0
  %527 = load float, float* %526, align 4
  %528 = load %struct.node*, %struct.node** %10, align 8
  %529 = getelementptr inbounds %struct.node, %struct.node* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = add nsw i32 %530, 1
  %532 = sitofp i32 %531 to float
  %533 = fdiv float %527, %532
  store float %533, float* %18, align 4
  store i32 0, i32* %3, align 4
  br label %534

534:                                              ; preds = %619, %523
  %535 = load i32, i32* %3, align 4
  %536 = load %struct.node*, %struct.node** %10, align 8
  %537 = getelementptr inbounds %struct.node, %struct.node* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = icmp slt i32 %535, %538
  br i1 %539, label %540, label %622

540:                                              ; preds = %534
  %541 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %542 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = sub nsw i32 %544, 4
  %546 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %26, i32 0, i32 1
  store i32 %545, i32* %546, align 4
  %547 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %548 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %548, i32 0, i32 3
  %550 = load i32, i32* %549, align 4
  %551 = sitofp i32 %550 to float
  %552 = load float, float* %18, align 4
  %553 = load i32, i32* %3, align 4
  %554 = add nsw i32 %553, 1
  %555 = sitofp i32 %554 to float
  %556 = fmul float %552, %555
  %557 = fadd float %551, %556
  %558 = fptosi float %557 to i32
  %559 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %26, i32 0, i32 3
  store i32 %558, i32* %559, align 4
  %560 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %26, i32 0, i32 2
  store float 8.000000e+00, float* %560, align 4
  %561 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %26, i32 0, i32 0
  store float 8.000000e+00, float* %561, align 4
  %562 = load %struct.nk_command_buffer*, %struct.nk_command_buffer** %6, align 8
  %563 = call i32 @nk_rgb(i32 100, i32 100, i32 100)
  %564 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %27, i32 0, i32 0
  store i32 %563, i32* %564, align 4
  %565 = bitcast %struct.nk_rect* %26 to { i64, i64 }*
  %566 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %565, i32 0, i32 0
  %567 = load i64, i64* %566, align 4
  %568 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %565, i32 0, i32 1
  %569 = load i64, i64* %568, align 4
  %570 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %27, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @nk_fill_circle(%struct.nk_command_buffer* %562, i64 %567, i64 %569, i32 %571)
  %573 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %574 = load i32, i32* @NK_BUTTON_LEFT, align 4
  %575 = call i64 @nk_input_is_mouse_released(%struct.nk_input* %573, i32 %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %618

577:                                              ; preds = %540
  %578 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %579 = bitcast %struct.nk_rect* %26 to { i64, i64 }*
  %580 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 4
  %582 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %579, i32 0, i32 1
  %583 = load i64, i64* %582, align 4
  %584 = call i64 @nk_input_is_mouse_hovering_rect(%struct.nk_input* %578, i64 %581, i64 %583)
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %618

586:                                              ; preds = %577
  %587 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %588 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %587, i32 0, i32 8
  %589 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %588, i32 0, i32 2
  %590 = load i8*, i8** %589, align 8
  %591 = icmp ne i8* %590, null
  br i1 %591, label %592, label %618

592:                                              ; preds = %586
  %593 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %594 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %593, i32 0, i32 8
  %595 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %594, i32 0, i32 1
  %596 = load %struct.node*, %struct.node** %595, align 8
  %597 = load %struct.node*, %struct.node** %10, align 8
  %598 = icmp ne %struct.node* %596, %597
  br i1 %598, label %599, label %618

599:                                              ; preds = %592
  %600 = load i8*, i8** @nk_false, align 8
  %601 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %602 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %601, i32 0, i32 8
  %603 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %602, i32 0, i32 2
  store i8* %600, i8** %603, align 8
  %604 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %605 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %606 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %605, i32 0, i32 8
  %607 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %606, i32 0, i32 3
  %608 = load i32, i32* %607, align 8
  %609 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %610 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %609, i32 0, i32 8
  %611 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load %struct.node*, %struct.node** %10, align 8
  %614 = getelementptr inbounds %struct.node, %struct.node* %613, i32 0, i32 4
  %615 = load i32, i32* %614, align 8
  %616 = load i32, i32* %3, align 4
  %617 = call i32 @node_editor_link(%struct.node_editor* %604, i32 %608, i32 %612, i32 %615, i32 %616)
  br label %618

618:                                              ; preds = %599, %592, %586, %577, %540
  br label %619

619:                                              ; preds = %618
  %620 = load i32, i32* %3, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %3, align 4
  br label %534

622:                                              ; preds = %534
  %623 = load %struct.node*, %struct.node** %10, align 8
  %624 = getelementptr inbounds %struct.node, %struct.node* %623, i32 0, i32 2
  %625 = load %struct.node*, %struct.node** %624, align 8
  store %struct.node* %625, %struct.node** %10, align 8
  br label %189

626:                                              ; preds = %189
  %627 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %628 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %627, i32 0, i32 8
  %629 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %628, i32 0, i32 2
  %630 = load i8*, i8** %629, align 8
  %631 = icmp ne i8* %630, null
  br i1 %631, label %632, label %647

632:                                              ; preds = %626
  %633 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %634 = load i32, i32* @NK_BUTTON_LEFT, align 4
  %635 = call i64 @nk_input_is_mouse_released(%struct.nk_input* %633, i32 %634)
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %647

637:                                              ; preds = %632
  %638 = load i8*, i8** @nk_false, align 8
  %639 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %640 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %639, i32 0, i32 8
  %641 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %640, i32 0, i32 2
  store i8* %638, i8** %641, align 8
  %642 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %643 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %642, i32 0, i32 8
  %644 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %643, i32 0, i32 1
  store %struct.node* null, %struct.node** %644, align 8
  %645 = load i32, i32* @stdout, align 4
  %646 = call i32 @fprintf(i32 %645, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %647

647:                                              ; preds = %637, %632, %626
  store i32 0, i32* %3, align 4
  br label %648

648:                                              ; preds = %806, %647
  %649 = load i32, i32* %3, align 4
  %650 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %651 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %650, i32 0, i32 2
  %652 = load i32, i32* %651, align 8
  %653 = icmp slt i32 %649, %652
  br i1 %653, label %654, label %809

654:                                              ; preds = %648
  %655 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %656 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %655, i32 0, i32 7
  %657 = load %struct.node_link*, %struct.node_link** %656, align 8
  %658 = load i32, i32* %3, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds %struct.node_link, %struct.node_link* %657, i64 %659
  store %struct.node_link* %660, %struct.node_link** %28, align 8
  %661 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %662 = load %struct.node_link*, %struct.node_link** %28, align 8
  %663 = getelementptr inbounds %struct.node_link, %struct.node_link* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 4
  %665 = call %struct.node* @node_editor_find(%struct.node_editor* %661, i32 %664)
  store %struct.node* %665, %struct.node** %29, align 8
  %666 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %667 = load %struct.node_link*, %struct.node_link** %28, align 8
  %668 = getelementptr inbounds %struct.node_link, %struct.node_link* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 8
  %670 = call %struct.node* @node_editor_find(%struct.node_editor* %666, i32 %669)
  store %struct.node* %670, %struct.node** %30, align 8
  %671 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %672 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %671, i32 0, i32 0
  %673 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %672, i32 0, i32 0
  %674 = load float, float* %673, align 4
  %675 = load %struct.node*, %struct.node** %29, align 8
  %676 = getelementptr inbounds %struct.node, %struct.node* %675, i32 0, i32 0
  %677 = load i32, i32* %676, align 8
  %678 = add nsw i32 %677, 1
  %679 = sitofp i32 %678 to float
  %680 = fdiv float %674, %679
  store float %680, float* %31, align 4
  %681 = load %struct.nk_panel*, %struct.nk_panel** %12, align 8
  %682 = getelementptr inbounds %struct.nk_panel, %struct.nk_panel* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %682, i32 0, i32 0
  %684 = load float, float* %683, align 4
  %685 = load %struct.node*, %struct.node** %30, align 8
  %686 = getelementptr inbounds %struct.node, %struct.node* %685, i32 0, i32 1
  %687 = load i32, i32* %686, align 4
  %688 = add nsw i32 %687, 1
  %689 = sitofp i32 %688 to float
  %690 = fdiv float %684, %689
  store float %690, float* %32, align 4
  %691 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %692 = load %struct.node*, %struct.node** %29, align 8
  %693 = getelementptr inbounds %struct.node, %struct.node* %692, i32 0, i32 3
  %694 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %693, i32 0, i32 1
  %695 = load i32, i32* %694, align 4
  %696 = sitofp i32 %695 to float
  %697 = load %struct.node*, %struct.node** %29, align 8
  %698 = getelementptr inbounds %struct.node, %struct.node* %697, i32 0, i32 3
  %699 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %698, i32 0, i32 2
  %700 = load float, float* %699, align 8
  %701 = fadd float %696, %700
  %702 = fptosi float %701 to i32
  %703 = load %struct.node*, %struct.node** %29, align 8
  %704 = getelementptr inbounds %struct.node, %struct.node* %703, i32 0, i32 3
  %705 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %704, i32 0, i32 3
  %706 = load i32, i32* %705, align 4
  %707 = sitofp i32 %706 to float
  %708 = fadd float 3.000000e+00, %707
  %709 = load float, float* %31, align 4
  %710 = load %struct.node_link*, %struct.node_link** %28, align 8
  %711 = getelementptr inbounds %struct.node_link, %struct.node_link* %710, i32 0, i32 1
  %712 = load i64, i64* %711, align 8
  %713 = add nsw i64 %712, 1
  %714 = sitofp i64 %713 to float
  %715 = fmul float %709, %714
  %716 = fadd float %708, %715
  %717 = fptosi float %716 to i32
  %718 = call i64 @nk_vec2(i32 %702, i32 %717)
  %719 = bitcast %struct.nk_vec2* %34 to i64*
  store i64 %718, i64* %719, align 4
  %720 = bitcast %struct.nk_vec2* %34 to i64*
  %721 = load i64, i64* %720, align 4
  %722 = call i64 @nk_layout_space_to_screen(%struct.nk_context* %691, i64 %721)
  %723 = bitcast %struct.nk_vec2* %33 to i64*
  store i64 %722, i64* %723, align 4
  %724 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %725 = load %struct.node*, %struct.node** %30, align 8
  %726 = getelementptr inbounds %struct.node, %struct.node* %725, i32 0, i32 3
  %727 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 4
  %729 = load %struct.node*, %struct.node** %30, align 8
  %730 = getelementptr inbounds %struct.node, %struct.node* %729, i32 0, i32 3
  %731 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %730, i32 0, i32 3
  %732 = load i32, i32* %731, align 4
  %733 = sitofp i32 %732 to float
  %734 = fadd float 3.000000e+00, %733
  %735 = load float, float* %32, align 4
  %736 = load %struct.node_link*, %struct.node_link** %28, align 8
  %737 = getelementptr inbounds %struct.node_link, %struct.node_link* %736, i32 0, i32 0
  %738 = load i64, i64* %737, align 8
  %739 = add nsw i64 %738, 1
  %740 = sitofp i64 %739 to float
  %741 = fmul float %735, %740
  %742 = fadd float %734, %741
  %743 = fptosi float %742 to i32
  %744 = call i64 @nk_vec2(i32 %728, i32 %743)
  %745 = bitcast %struct.nk_vec2* %36 to i64*
  store i64 %744, i64* %745, align 4
  %746 = bitcast %struct.nk_vec2* %36 to i64*
  %747 = load i64, i64* %746, align 4
  %748 = call i64 @nk_layout_space_to_screen(%struct.nk_context* %724, i64 %747)
  %749 = bitcast %struct.nk_vec2* %35 to i64*
  store i64 %748, i64* %749, align 4
  %750 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %751 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %750, i32 0, i32 3
  %752 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %751, i32 0, i32 0
  %753 = load i32, i32* %752, align 4
  %754 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %33, i32 0, i32 0
  %755 = load i32, i32* %754, align 4
  %756 = sub nsw i32 %755, %753
  store i32 %756, i32* %754, align 4
  %757 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %758 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %757, i32 0, i32 3
  %759 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %758, i32 0, i32 1
  %760 = load i32, i32* %759, align 4
  %761 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %33, i32 0, i32 1
  %762 = load i32, i32* %761, align 4
  %763 = sub nsw i32 %762, %760
  store i32 %763, i32* %761, align 4
  %764 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %765 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %764, i32 0, i32 3
  %766 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %765, i32 0, i32 0
  %767 = load i32, i32* %766, align 4
  %768 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %35, i32 0, i32 0
  %769 = load i32, i32* %768, align 4
  %770 = sub nsw i32 %769, %767
  store i32 %770, i32* %768, align 4
  %771 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %772 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %771, i32 0, i32 3
  %773 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %772, i32 0, i32 1
  %774 = load i32, i32* %773, align 4
  %775 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %35, i32 0, i32 1
  %776 = load i32, i32* %775, align 4
  %777 = sub nsw i32 %776, %774
  store i32 %777, i32* %775, align 4
  %778 = load %struct.nk_command_buffer*, %struct.nk_command_buffer** %6, align 8
  %779 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %33, i32 0, i32 0
  %780 = load i32, i32* %779, align 4
  %781 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %33, i32 0, i32 1
  %782 = load i32, i32* %781, align 4
  %783 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %33, i32 0, i32 0
  %784 = load i32, i32* %783, align 4
  %785 = sitofp i32 %784 to float
  %786 = fadd float %785, 5.000000e+01
  %787 = fptosi float %786 to i32
  %788 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %33, i32 0, i32 1
  %789 = load i32, i32* %788, align 4
  %790 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %35, i32 0, i32 0
  %791 = load i32, i32* %790, align 4
  %792 = sitofp i32 %791 to float
  %793 = fsub float %792, 5.000000e+01
  %794 = fptosi float %793 to i32
  %795 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %35, i32 0, i32 1
  %796 = load i32, i32* %795, align 4
  %797 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %35, i32 0, i32 0
  %798 = load i32, i32* %797, align 4
  %799 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %35, i32 0, i32 1
  %800 = load i32, i32* %799, align 4
  %801 = call i32 @nk_rgb(i32 100, i32 100, i32 100)
  %802 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %37, i32 0, i32 0
  store i32 %801, i32* %802, align 4
  %803 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %37, i32 0, i32 0
  %804 = load i32, i32* %803, align 4
  %805 = call i32 @nk_stroke_curve(%struct.nk_command_buffer* %778, i32 %780, i32 %782, i32 %787, i32 %789, i32 %794, i32 %796, i32 %798, i32 %800, float 1.000000e+00, i32 %804)
  br label %806

806:                                              ; preds = %654
  %807 = load i32, i32* %3, align 4
  %808 = add nsw i32 %807, 1
  store i32 %808, i32* %3, align 4
  br label %648

809:                                              ; preds = %648
  %810 = load %struct.node*, %struct.node** %7, align 8
  %811 = icmp ne %struct.node* %810, null
  br i1 %811, label %812, label %819

812:                                              ; preds = %809
  %813 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %814 = load %struct.node*, %struct.node** %7, align 8
  %815 = call i32 @node_editor_pop(%struct.node_editor* %813, %struct.node* %814)
  %816 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %817 = load %struct.node*, %struct.node** %7, align 8
  %818 = call i32 @node_editor_push(%struct.node_editor* %816, %struct.node* %817)
  br label %819

819:                                              ; preds = %812, %809
  %820 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %821 = load i32, i32* @NK_BUTTON_LEFT, align 4
  %822 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %823 = call { i64, i64 } @nk_layout_space_bounds(%struct.nk_context* %822)
  %824 = bitcast %struct.nk_rect* %38 to { i64, i64 }*
  %825 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %824, i32 0, i32 0
  %826 = extractvalue { i64, i64 } %823, 0
  store i64 %826, i64* %825, align 4
  %827 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %824, i32 0, i32 1
  %828 = extractvalue { i64, i64 } %823, 1
  store i64 %828, i64* %827, align 4
  %829 = bitcast %struct.nk_rect* %38 to { i64, i64 }*
  %830 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %829, i32 0, i32 0
  %831 = load i64, i64* %830, align 4
  %832 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %829, i32 0, i32 1
  %833 = load i64, i64* %832, align 4
  %834 = call i64 @nk_input_mouse_clicked(%struct.nk_input* %820, i32 %821, i64 %831, i64 %833)
  %835 = icmp ne i64 %834, 0
  br i1 %835, label %836, label %904

836:                                              ; preds = %819
  %837 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %838 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %837, i32 0, i32 6
  %839 = load %struct.node*, %struct.node** %838, align 8
  store %struct.node* %839, %struct.node** %10, align 8
  %840 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %841 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %840, i32 0, i32 4
  store %struct.node* null, %struct.node** %841, align 8
  %842 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %843 = getelementptr inbounds %struct.nk_input, %struct.nk_input* %842, i32 0, i32 0
  %844 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %843, i32 0, i32 1
  %845 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 4
  %847 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %848 = getelementptr inbounds %struct.nk_input, %struct.nk_input* %847, i32 0, i32 0
  %849 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %848, i32 0, i32 1
  %850 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %849, i32 0, i32 1
  %851 = load i32, i32* %850, align 4
  %852 = call i32 @nk_rect(i32 %846, i32 %851, i32 100, i32 200)
  %853 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %854 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %853, i32 0, i32 5
  store i32 %852, i32* %854, align 8
  br label %855

855:                                              ; preds = %899, %836
  %856 = load %struct.node*, %struct.node** %10, align 8
  %857 = icmp ne %struct.node* %856, null
  br i1 %857, label %858, label %903

858:                                              ; preds = %855
  %859 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %860 = load %struct.node*, %struct.node** %10, align 8
  %861 = getelementptr inbounds %struct.node, %struct.node* %860, i32 0, i32 3
  %862 = bitcast %struct.nk_rect* %861 to { i64, i64 }*
  %863 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %862, i32 0, i32 0
  %864 = load i64, i64* %863, align 8
  %865 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %862, i32 0, i32 1
  %866 = load i64, i64* %865, align 8
  %867 = call { i64, i64 } @nk_layout_space_rect_to_screen(%struct.nk_context* %859, i64 %864, i64 %866)
  %868 = bitcast %struct.nk_rect* %39 to { i64, i64 }*
  %869 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %868, i32 0, i32 0
  %870 = extractvalue { i64, i64 } %867, 0
  store i64 %870, i64* %869, align 4
  %871 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %868, i32 0, i32 1
  %872 = extractvalue { i64, i64 } %867, 1
  store i64 %872, i64* %871, align 4
  %873 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %874 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %873, i32 0, i32 3
  %875 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %874, i32 0, i32 0
  %876 = load i32, i32* %875, align 4
  %877 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %39, i32 0, i32 1
  %878 = load i32, i32* %877, align 4
  %879 = sub nsw i32 %878, %876
  store i32 %879, i32* %877, align 4
  %880 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %881 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %880, i32 0, i32 3
  %882 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %881, i32 0, i32 1
  %883 = load i32, i32* %882, align 4
  %884 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %39, i32 0, i32 3
  %885 = load i32, i32* %884, align 4
  %886 = sub nsw i32 %885, %883
  store i32 %886, i32* %884, align 4
  %887 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %888 = bitcast %struct.nk_rect* %39 to { i64, i64 }*
  %889 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %888, i32 0, i32 0
  %890 = load i64, i64* %889, align 4
  %891 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %888, i32 0, i32 1
  %892 = load i64, i64* %891, align 4
  %893 = call i64 @nk_input_is_mouse_hovering_rect(%struct.nk_input* %887, i64 %890, i64 %892)
  %894 = icmp ne i64 %893, 0
  br i1 %894, label %895, label %899

895:                                              ; preds = %858
  %896 = load %struct.node*, %struct.node** %10, align 8
  %897 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %898 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %897, i32 0, i32 4
  store %struct.node* %896, %struct.node** %898, align 8
  br label %899

899:                                              ; preds = %895, %858
  %900 = load %struct.node*, %struct.node** %10, align 8
  %901 = getelementptr inbounds %struct.node, %struct.node* %900, i32 0, i32 2
  %902 = load %struct.node*, %struct.node** %901, align 8
  store %struct.node* %902, %struct.node** %10, align 8
  br label %855

903:                                              ; preds = %855
  br label %904

904:                                              ; preds = %903, %819
  %905 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %906 = call i64 @nk_vec2(i32 100, i32 220)
  %907 = bitcast %struct.nk_vec2* %40 to i64*
  store i64 %906, i64* %907, align 4
  %908 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %909 = call { i64, i64 } @nk_window_get_bounds(%struct.nk_context* %908)
  %910 = bitcast %struct.nk_rect* %41 to { i64, i64 }*
  %911 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %910, i32 0, i32 0
  %912 = extractvalue { i64, i64 } %909, 0
  store i64 %912, i64* %911, align 4
  %913 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %910, i32 0, i32 1
  %914 = extractvalue { i64, i64 } %909, 1
  store i64 %914, i64* %913, align 4
  %915 = bitcast %struct.nk_vec2* %40 to i64*
  %916 = load i64, i64* %915, align 4
  %917 = bitcast %struct.nk_rect* %41 to { i64, i64 }*
  %918 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %917, i32 0, i32 0
  %919 = load i64, i64* %918, align 4
  %920 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %917, i32 0, i32 1
  %921 = load i64, i64* %920, align 4
  %922 = call i64 @nk_contextual_begin(%struct.nk_context* %905, i32 0, i64 %916, i64 %919, i64 %921)
  %923 = icmp ne i64 %922, 0
  br i1 %923, label %924, label %963

924:                                              ; preds = %904
  %925 = bitcast [2 x i8*]* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %925, i8* align 16 bitcast ([2 x i8*]* @__const.node_editor.grid_option to i8*), i64 16, i1 false)
  %926 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %927 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %926, i32 25, i32 1)
  %928 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %929 = load i32, i32* @NK_TEXT_CENTERED, align 4
  %930 = call i64 @nk_contextual_item_label(%struct.nk_context* %928, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %929)
  %931 = icmp ne i64 %930, 0
  br i1 %931, label %932, label %940

932:                                              ; preds = %924
  %933 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %934 = call i32 @nk_rect(i32 400, i32 260, i32 180, i32 220)
  %935 = call i32 @nk_rgb(i32 255, i32 255, i32 255)
  %936 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %43, i32 0, i32 0
  store i32 %935, i32* %936, align 4
  %937 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %43, i32 0, i32 0
  %938 = load i32, i32* %937, align 4
  %939 = call i32 @node_editor_add(%struct.node_editor* %933, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %934, i32 %938, i32 1, i32 2)
  br label %940

940:                                              ; preds = %932, %924
  %941 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %942 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %943 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %942, i32 0, i32 1
  %944 = load i32, i32* %943, align 4
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds [2 x i8*], [2 x i8*]* %42, i64 0, i64 %945
  %947 = load i8*, i8** %946, align 8
  %948 = load i32, i32* @NK_TEXT_CENTERED, align 4
  %949 = call i64 @nk_contextual_item_label(%struct.nk_context* %941, i8* %947, i32 %948)
  %950 = icmp ne i64 %949, 0
  br i1 %950, label %951, label %960

951:                                              ; preds = %940
  %952 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %953 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %952, i32 0, i32 1
  %954 = load i32, i32* %953, align 4
  %955 = icmp ne i32 %954, 0
  %956 = xor i1 %955, true
  %957 = zext i1 %956 to i32
  %958 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %959 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %958, i32 0, i32 1
  store i32 %957, i32* %959, align 4
  br label %960

960:                                              ; preds = %951, %940
  %961 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %962 = call i32 @nk_contextual_end(%struct.nk_context* %961)
  br label %963

963:                                              ; preds = %960, %904
  %964 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %965 = call i32 @nk_layout_space_end(%struct.nk_context* %964)
  %966 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %967 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %968 = call { i64, i64 } @nk_window_get_bounds(%struct.nk_context* %967)
  %969 = bitcast %struct.nk_rect* %44 to { i64, i64 }*
  %970 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %969, i32 0, i32 0
  %971 = extractvalue { i64, i64 } %968, 0
  store i64 %971, i64* %970, align 4
  %972 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %969, i32 0, i32 1
  %973 = extractvalue { i64, i64 } %968, 1
  store i64 %973, i64* %972, align 4
  %974 = bitcast %struct.nk_rect* %44 to { i64, i64 }*
  %975 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %974, i32 0, i32 0
  %976 = load i64, i64* %975, align 4
  %977 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %974, i32 0, i32 1
  %978 = load i64, i64* %977, align 4
  %979 = call i64 @nk_input_is_mouse_hovering_rect(%struct.nk_input* %966, i64 %976, i64 %978)
  %980 = icmp ne i64 %979, 0
  br i1 %980, label %981, label %1007

981:                                              ; preds = %963
  %982 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %983 = load i32, i32* @NK_BUTTON_MIDDLE, align 4
  %984 = call i64 @nk_input_is_mouse_down(%struct.nk_input* %982, i32 %983)
  %985 = icmp ne i64 %984, 0
  br i1 %985, label %986, label %1007

986:                                              ; preds = %981
  %987 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %988 = getelementptr inbounds %struct.nk_input, %struct.nk_input* %987, i32 0, i32 0
  %989 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %988, i32 0, i32 0
  %990 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %989, i32 0, i32 0
  %991 = load i32, i32* %990, align 4
  %992 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %993 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %992, i32 0, i32 3
  %994 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %993, i32 0, i32 0
  %995 = load i32, i32* %994, align 4
  %996 = add nsw i32 %995, %991
  store i32 %996, i32* %994, align 4
  %997 = load %struct.nk_input*, %struct.nk_input** %5, align 8
  %998 = getelementptr inbounds %struct.nk_input, %struct.nk_input* %997, i32 0, i32 0
  %999 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %998, i32 0, i32 0
  %1000 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %999, i32 0, i32 1
  %1001 = load i32, i32* %1000, align 4
  %1002 = load %struct.node_editor*, %struct.node_editor** %8, align 8
  %1003 = getelementptr inbounds %struct.node_editor, %struct.node_editor* %1002, i32 0, i32 3
  %1004 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1003, i32 0, i32 1
  %1005 = load i32, i32* %1004, align 4
  %1006 = add nsw i32 %1005, %1001
  store i32 %1006, i32* %1004, align 4
  br label %1007

1007:                                             ; preds = %986, %981, %963
  br label %1008

1008:                                             ; preds = %1007, %51
  %1009 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %1010 = call i32 @nk_end(%struct.nk_context* %1009)
  %1011 = load %struct.nk_context*, %struct.nk_context** %2, align 8
  %1012 = call i32 @nk_window_is_closed(%struct.nk_context* %1011, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %1013 = icmp ne i32 %1012, 0
  %1014 = xor i1 %1013, true
  %1015 = zext i1 %1014 to i32
  ret i32 %1015
}

declare dso_local i32 @node_editor_init(%struct.node_editor*) #1

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local %struct.nk_command_buffer* @nk_window_get_canvas(%struct.nk_context*) #1

declare dso_local { i64, i64 } @nk_window_get_content_region(%struct.nk_context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nk_layout_space_begin(%struct.nk_context*, i32, float, i32) #1

declare dso_local { i64, i64 } @nk_layout_space_bounds(%struct.nk_context*) #1

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

declare dso_local i64 @fmod(i32, float) #1

declare dso_local i32 @nk_stroke_line(%struct.nk_command_buffer*, i32, i32, i32, i32, float, i32) #1

declare dso_local i32 @nk_layout_space_push(%struct.nk_context*, i32) #1

declare dso_local i64 @nk_group_begin(%struct.nk_context*, i32, i32) #1

declare dso_local %struct.nk_panel* @nk_window_get_panel(%struct.nk_context*) #1

declare dso_local i64 @nk_input_mouse_clicked(%struct.nk_input*, i32, i64, i64) #1

declare dso_local { i64, i64 } @nk_layout_space_rect_to_screen(%struct.nk_context*, i64, i64) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i32 @nk_button_color(%struct.nk_context*, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i64 @nk_propertyi(%struct.nk_context*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nk_group_end(%struct.nk_context*) #1

declare dso_local { i64, i64 } @nk_layout_space_rect_to_local(%struct.nk_context*, i64, i64) #1

declare dso_local i32 @nk_fill_circle(%struct.nk_command_buffer*, i64, i64, i32) #1

declare dso_local i64 @nk_input_has_mouse_click_down_in_rect(%struct.nk_input*, i32, i64, i64, i8*) #1

declare dso_local i64 @nk_vec2(i32, i32) #1

declare dso_local i32 @nk_stroke_curve(%struct.nk_command_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, float, i32) #1

declare dso_local i64 @nk_input_is_mouse_released(%struct.nk_input*, i32) #1

declare dso_local i64 @nk_input_is_mouse_hovering_rect(%struct.nk_input*, i64, i64) #1

declare dso_local i32 @node_editor_link(%struct.node_editor*, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.node* @node_editor_find(%struct.node_editor*, i32) #1

declare dso_local i64 @nk_layout_space_to_screen(%struct.nk_context*, i64) #1

declare dso_local i32 @node_editor_pop(%struct.node_editor*, %struct.node*) #1

declare dso_local i32 @node_editor_push(%struct.node_editor*, %struct.node*) #1

declare dso_local i64 @nk_contextual_begin(%struct.nk_context*, i32, i64, i64, i64) #1

declare dso_local { i64, i64 } @nk_window_get_bounds(%struct.nk_context*) #1

declare dso_local i64 @nk_contextual_item_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @node_editor_add(%struct.node_editor*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nk_contextual_end(%struct.nk_context*) #1

declare dso_local i32 @nk_layout_space_end(%struct.nk_context*) #1

declare dso_local i64 @nk_input_is_mouse_down(%struct.nk_input*, i32) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

declare dso_local i32 @nk_window_is_closed(%struct.nk_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
