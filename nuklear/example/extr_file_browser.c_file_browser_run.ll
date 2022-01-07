; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_file_browser_run.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_file_browser_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_browser = type { i8*, i8*, i8*, i64, i64, i8**, i8*, i8**, %struct.media* }
%struct.media = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nk_image, %struct.nk_image, %struct.nk_image, %struct.nk_image }
%struct.nk_image = type { i32 }
%struct.nk_context = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { float }
%struct.nk_rect = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"File Browser\00", align 1
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_NO_SCROLLBAR = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@file_browser_run.ratio = internal global [2 x float] [float 2.500000e-01, float 1.280000e+02], align 4
@NK_DYNAMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Special\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@NK_TEXT_CENTERED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"desktop\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"computer\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Content\00", align 1
@MAX_PATH_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_browser*, %struct.nk_context*)* @file_browser_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_browser_run(%struct.file_browser* %0, %struct.nk_context* %1) #0 {
  %3 = alloca %struct.file_browser*, align 8
  %4 = alloca %struct.nk_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.media*, align 8
  %7 = alloca %struct.nk_rect, align 4
  %8 = alloca float, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nk_rect, align 4
  %12 = alloca %struct.nk_image, align 4
  %13 = alloca %struct.nk_image, align 4
  %14 = alloca %struct.nk_image, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.nk_image*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.file_browser* %0, %struct.file_browser** %3, align 8
  store %struct.nk_context* %1, %struct.nk_context** %4, align 8
  store i32 0, i32* %5, align 4
  %28 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %29 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %28, i32 0, i32 8
  %30 = load %struct.media*, %struct.media** %29, align 8
  store %struct.media* %30, %struct.media** %6, align 8
  %31 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %32 = call i32 @nk_rect(i32 50, i32 50, i32 800, i32 600)
  %33 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %34 = load i32, i32* @NK_WINDOW_NO_SCROLLBAR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @nk_begin(%struct.nk_context* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %384

40:                                               ; preds = %2
  %41 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %42 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 4
  store float %46, float* %8, align 4
  %47 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %48 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store float 0.000000e+00, float* %51, align 4
  %52 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %53 = call i32 @nk_menubar_begin(%struct.nk_context* %52)
  %54 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %55 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %10, align 8
  %59 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %60 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %59, i32 25, i32 6)
  br label %61

61:                                               ; preds = %90, %40
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  %64 = load i8, i8* %62, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  store i8 0, i8* %72, align 1
  %73 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 @nk_button_label(%struct.nk_context* %73, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 47, i8* %78, align 1
  %80 = load i8*, i8** %9, align 8
  store i8 0, i8* %80, align 1
  %81 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %82 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %83 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @file_browser_reload_directory_content(%struct.file_browser* %81, i8* %84)
  br label %91

86:                                               ; preds = %71
  %87 = load i8*, i8** %9, align 8
  store i8 47, i8* %87, align 1
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %10, align 8
  br label %90

90:                                               ; preds = %86, %66
  br label %61

91:                                               ; preds = %77, %61
  %92 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %93 = call i32 @nk_menubar_end(%struct.nk_context* %92)
  %94 = load float, float* %8, align 4
  %95 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %96 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store float %94, float* %99, align 4
  %100 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %101 = call i32 @nk_window_get_content_region(%struct.nk_context* %100)
  %102 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = bitcast %struct.nk_rect* %7 to i8*
  %104 = bitcast %struct.nk_rect* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 4, i1 false)
  %105 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %106 = load i32, i32* @NK_DYNAMIC, align 4
  %107 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %7, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @nk_layout_row(%struct.nk_context* %105, i32 %106, i32 %108, i32 2, float* getelementptr inbounds ([2 x float], [2 x float]* @file_browser_run.ratio, i64 0, i64 0))
  %110 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %111 = load i32, i32* @NK_WINDOW_NO_SCROLLBAR, align 4
  %112 = call i32 @nk_group_begin(%struct.nk_context* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.media*, %struct.media** %6, align 8
  %114 = getelementptr inbounds %struct.media, %struct.media* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = bitcast %struct.nk_image* %12 to i8*
  %117 = bitcast %struct.nk_image* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  %118 = load %struct.media*, %struct.media** %6, align 8
  %119 = getelementptr inbounds %struct.media, %struct.media* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = bitcast %struct.nk_image* %13 to i8*
  %122 = bitcast %struct.nk_image* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 4, i1 false)
  %123 = load %struct.media*, %struct.media** %6, align 8
  %124 = getelementptr inbounds %struct.media, %struct.media* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = bitcast %struct.nk_image* %14 to i8*
  %127 = bitcast %struct.nk_image* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 %127, i64 4, i1 false)
  %128 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %129 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %128, i32 40, i32 1)
  %130 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %131 = load i32, i32* @NK_TEXT_CENTERED, align 4
  %132 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %12, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @nk_button_image_label(%struct.nk_context* %130, i32 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %91
  %137 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %138 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %139 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @file_browser_reload_directory_content(%struct.file_browser* %137, i8* %140)
  br label %142

142:                                              ; preds = %136, %91
  %143 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %144 = load i32, i32* @NK_TEXT_CENTERED, align 4
  %145 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %13, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @nk_button_image_label(%struct.nk_context* %143, i32 %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %151 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %152 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @file_browser_reload_directory_content(%struct.file_browser* %150, i8* %153)
  br label %155

155:                                              ; preds = %149, %142
  %156 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %157 = load i32, i32* @NK_TEXT_CENTERED, align 4
  %158 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %14, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @nk_button_image_label(%struct.nk_context* %156, i32 %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %164 = call i32 @file_browser_reload_directory_content(%struct.file_browser* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %155
  %166 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %167 = call i32 @nk_group_end(%struct.nk_context* %166)
  %168 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %169 = call i32 @nk_group_begin(%struct.nk_context* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i32 -1, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %170 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %171 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %174 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %172, %175
  store i64 %176, i64* %21, align 8
  store i64 4, i64* %20, align 8
  %177 = load i64, i64* %21, align 8
  %178 = load i64, i64* %20, align 8
  %179 = udiv i64 %177, %178
  store i64 %179, i64* %19, align 8
  store i64 0, i64* %16, align 8
  br label %180

180:                                              ; preds = %328, %165
  %181 = load i64, i64* %16, align 8
  %182 = load i64, i64* %19, align 8
  %183 = icmp ule i64 %181, %182
  br i1 %183, label %184, label %331

184:                                              ; preds = %180
  %185 = load i64, i64* %17, align 8
  %186 = load i64, i64* %20, align 8
  %187 = add i64 %185, %186
  store i64 %187, i64* %22, align 8
  %188 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %189 = load i64, i64* %20, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %188, i32 135, i32 %190)
  br label %192

192:                                              ; preds = %271, %184
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* %21, align 8
  %195 = icmp ult i64 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i64, i64* %17, align 8
  %198 = load i64, i64* %22, align 8
  %199 = icmp ult i64 %197, %198
  br label %200

200:                                              ; preds = %196, %192
  %201 = phi i1 [ false, %192 ], [ %199, %196 ]
  br i1 %201, label %202, label %274

202:                                              ; preds = %200
  %203 = load i64, i64* %17, align 8
  %204 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %205 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ult i64 %203, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %202
  %209 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %210 = load %struct.media*, %struct.media** %6, align 8
  %211 = getelementptr inbounds %struct.media, %struct.media* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @nk_button_image(%struct.nk_context* %209, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %208
  %218 = load i64, i64* %17, align 8
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %15, align 4
  br label %220

220:                                              ; preds = %217, %208
  br label %270

221:                                              ; preds = %202
  %222 = load i64, i64* %17, align 8
  %223 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %224 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = sub i64 %222, %225
  store i64 %226, i64* %24, align 8
  %227 = load %struct.media*, %struct.media** %6, align 8
  %228 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %229 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %228, i32 0, i32 5
  %230 = load i8**, i8*** %229, align 8
  %231 = load i64, i64* %24, align 8
  %232 = getelementptr inbounds i8*, i8** %230, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = call %struct.nk_image* @media_icon_for_file(%struct.media* %227, i8* %233)
  store %struct.nk_image* %234, %struct.nk_image** %23, align 8
  %235 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %236 = load %struct.nk_image*, %struct.nk_image** %23, align 8
  %237 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @nk_button_image(%struct.nk_context* %235, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %269

241:                                              ; preds = %221
  %242 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %243 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %242, i32 0, i32 6
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %246 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = load i64, i64* @MAX_PATH_LEN, align 8
  %249 = call i32 @strncpy(i8* %244, i8* %247, i64 %248)
  %250 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %251 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %250, i32 0, i32 6
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 @strlen(i8* %252)
  store i64 %253, i64* %22, align 8
  %254 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %255 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %254, i32 0, i32 6
  %256 = load i8*, i8** %255, align 8
  %257 = load i64, i64* %22, align 8
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  %259 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %260 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %259, i32 0, i32 5
  %261 = load i8**, i8*** %260, align 8
  %262 = load i64, i64* %24, align 8
  %263 = getelementptr inbounds i8*, i8** %261, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = load i64, i64* @MAX_PATH_LEN, align 8
  %266 = load i64, i64* %22, align 8
  %267 = sub i64 %265, %266
  %268 = call i32 @strncpy(i8* %258, i8* %264, i64 %267)
  store i32 1, i32* %5, align 4
  br label %269

269:                                              ; preds = %241, %221
  br label %270

270:                                              ; preds = %269, %220
  br label %271

271:                                              ; preds = %270
  %272 = load i64, i64* %17, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %17, align 8
  br label %192

274:                                              ; preds = %200
  %275 = load i64, i64* %18, align 8
  %276 = load i64, i64* %20, align 8
  %277 = add i64 %275, %276
  store i64 %277, i64* %25, align 8
  %278 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %279 = load i64, i64* %20, align 8
  %280 = trunc i64 %279 to i32
  %281 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %278, i32 20, i32 %280)
  br label %282

282:                                              ; preds = %324, %274
  %283 = load i64, i64* %18, align 8
  %284 = load i64, i64* %21, align 8
  %285 = icmp ult i64 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %282
  %287 = load i64, i64* %18, align 8
  %288 = load i64, i64* %25, align 8
  %289 = icmp ult i64 %287, %288
  br label %290

290:                                              ; preds = %286, %282
  %291 = phi i1 [ false, %282 ], [ %289, %286 ]
  br i1 %291, label %292, label %327

292:                                              ; preds = %290
  %293 = load i64, i64* %18, align 8
  %294 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %295 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = icmp ult i64 %293, %296
  br i1 %297, label %298, label %308

298:                                              ; preds = %292
  %299 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %300 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %301 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %300, i32 0, i32 7
  %302 = load i8**, i8*** %301, align 8
  %303 = load i64, i64* %18, align 8
  %304 = getelementptr inbounds i8*, i8** %302, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = load i32, i32* @NK_TEXT_CENTERED, align 4
  %307 = call i32 @nk_label(%struct.nk_context* %299, i8* %305, i32 %306)
  br label %323

308:                                              ; preds = %292
  %309 = load i64, i64* %18, align 8
  %310 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %311 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = sub i64 %309, %312
  store i64 %313, i64* %26, align 8
  %314 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %315 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %316 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %315, i32 0, i32 5
  %317 = load i8**, i8*** %316, align 8
  %318 = load i64, i64* %26, align 8
  %319 = getelementptr inbounds i8*, i8** %317, i64 %318
  %320 = load i8*, i8** %319, align 8
  %321 = load i32, i32* @NK_TEXT_CENTERED, align 4
  %322 = call i32 @nk_label(%struct.nk_context* %314, i8* %320, i32 %321)
  br label %323

323:                                              ; preds = %308, %298
  br label %324

324:                                              ; preds = %323
  %325 = load i64, i64* %18, align 8
  %326 = add i64 %325, 1
  store i64 %326, i64* %18, align 8
  br label %282

327:                                              ; preds = %290
  br label %328

328:                                              ; preds = %327
  %329 = load i64, i64* %16, align 8
  %330 = add i64 %329, 1
  store i64 %330, i64* %16, align 8
  br label %180

331:                                              ; preds = %180
  %332 = load i32, i32* %15, align 4
  %333 = icmp ne i32 %332, -1
  br i1 %333, label %334, label %381

334:                                              ; preds = %331
  %335 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %336 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %335, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = call i64 @strlen(i8* %337)
  store i64 %338, i64* %27, align 8
  %339 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %340 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %339, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = load i64, i64* %27, align 8
  %343 = getelementptr inbounds i8, i8* %341, i64 %342
  %344 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %345 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %344, i32 0, i32 7
  %346 = load i8**, i8*** %345, align 8
  %347 = load i32, i32* %15, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8*, i8** %346, i64 %348
  %350 = load i8*, i8** %349, align 8
  %351 = load i64, i64* @MAX_PATH_LEN, align 8
  %352 = load i64, i64* %27, align 8
  %353 = sub i64 %351, %352
  %354 = call i32 @strncpy(i8* %343, i8* %350, i64 %353)
  %355 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %356 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = call i64 @strlen(i8* %357)
  store i64 %358, i64* %27, align 8
  %359 = load i64, i64* %27, align 8
  %360 = load i64, i64* @MAX_PATH_LEN, align 8
  %361 = sub i64 %360, 1
  %362 = icmp ult i64 %359, %361
  br i1 %362, label %363, label %375

363:                                              ; preds = %334
  %364 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %365 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %364, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = load i64, i64* %27, align 8
  %368 = getelementptr inbounds i8, i8* %366, i64 %367
  store i8 47, i8* %368, align 1
  %369 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %370 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %369, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = load i64, i64* %27, align 8
  %373 = add i64 %372, 1
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  store i8 0, i8* %374, align 1
  br label %375

375:                                              ; preds = %363, %334
  %376 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %377 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %378 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %377, i32 0, i32 0
  %379 = load i8*, i8** %378, align 8
  %380 = call i32 @file_browser_reload_directory_content(%struct.file_browser* %376, i8* %379)
  br label %381

381:                                              ; preds = %375, %331
  %382 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %383 = call i32 @nk_group_end(%struct.nk_context* %382)
  br label %384

384:                                              ; preds = %381, %2
  %385 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %386 = call i32 @nk_end(%struct.nk_context* %385)
  %387 = load i32, i32* %5, align 4
  ret i32 %387
}

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_menubar_begin(%struct.nk_context*) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i64 @nk_button_label(%struct.nk_context*, i8*) #1

declare dso_local i32 @file_browser_reload_directory_content(%struct.file_browser*, i8*) #1

declare dso_local i32 @nk_menubar_end(%struct.nk_context*) #1

declare dso_local i32 @nk_window_get_content_region(%struct.nk_context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nk_layout_row(%struct.nk_context*, i32, i32, i32, float*) #1

declare dso_local i32 @nk_group_begin(%struct.nk_context*, i8*, i32) #1

declare dso_local i64 @nk_button_image_label(%struct.nk_context*, i32, i8*, i32) #1

declare dso_local i32 @nk_group_end(%struct.nk_context*) #1

declare dso_local i64 @nk_button_image(%struct.nk_context*, i32) #1

declare dso_local %struct.nk_image* @media_icon_for_file(%struct.media*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @nk_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
