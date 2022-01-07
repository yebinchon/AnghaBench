; ModuleID = '/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_buffer_svg.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_buffer_svg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@COLOR_STRING_SIZE = common dso_local global i32 0, align 4
@VALUE_STRING_SIZE = common dso_local global i32 0, align 4
@LABEL_STRING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"#555\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"#999\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"#4c1\00", align 1
@RRDR_OPTION_DISPLAY_ABS = common dso_local global i32 0, align 4
@BADGE_HORIZONTAL_PADDING = common dso_local global i32 0, align 4
@CT_IMAGE_SVG_XML = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [462 x i8] c"<svg xmlns=\22http://www.w3.org/2000/svg\22 xmlns:xlink=\22http://www.w3.org/1999/xlink\22 width=\22%0.2f\22 height=\22%0.2f\22><linearGradient id=\22smooth\22 x2=\220\22 y2=\22100%%\22><stop offset=\220\22 stop-color=\22#bbb\22 stop-opacity=\22.1\22/><stop offset=\221\22 stop-opacity=\22.1\22/></linearGradient><mask id=\22round\22><rect class=\22bdge-ttl-width\22 width=\22%0.2f\22 height=\22%0.2f\22 rx=\22%0.2f\22 fill=\22#fff\22/></mask><g mask=\22url(#round)\22><rect class=\22bdge-rect-lbl\22 width=\22%0.2f\22 height=\22%0.2f\22 fill=\22%s\22/>\00", align 1
@.str.4 = private unnamed_addr constant [94 x i8] c"<clipPath id=\22lbl-rect\22><rect class=\22bdge-rect-lbl\22 width=\22%0.2f\22 height=\22%0.2f\22/></clipPath>\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"<rect class=\22bdge-rect-val\22 x=\22%0.2f\22 width=\22%0.2f\22 height=\22%0.2f\22 fill=\22%s\22/>\00", align 1
@.str.6 = private unnamed_addr constant [104 x i8] c"<clipPath id=\22val-rect\22><rect class=\22bdge-rect-val\22 x=\22%0.2f\22 width=\22%0.2f\22 height=\22%0.2f\22/></clipPath>\00", align 1
@.str.7 = private unnamed_addr constant [592 x i8] c"<rect class=\22bdge-ttl-width\22 width=\22%0.2f\22 height=\22%0.2f\22 fill=\22url(#smooth)\22/></g><g fill=\22#fff\22 text-anchor=\22middle\22 font-family=\22DejaVu Sans,Verdana,Geneva,sans-serif\22 font-size=\22%0.2f\22><text class=\22bdge-lbl-lbl\22 x=\22%0.2f\22 y=\22%0.0f\22 fill=\22#010101\22 fill-opacity=\22.3\22 clip-path=\22url(#lbl-rect)\22>%s</text><text class=\22bdge-lbl-lbl\22 x=\22%0.2f\22 y=\22%0.0f\22 clip-path=\22url(#lbl-rect)\22>%s</text><text class=\22bdge-lbl-val\22 x=\22%0.2f\22 y=\22%0.0f\22 fill=\22#010101\22 fill-opacity=\22.3\22 clip-path=\22url(#val-rect)\22>%s</text><text class=\22bdge-lbl-val\22 x=\22%0.2f\22 y=\22%0.0f\22 clip-path=\22url(#val-rect)\22>%s</text></g>\00", align 1
@.str.8 = private unnamed_addr constant [1162 x i8] c"<script type=\22text/javascript\22>var bdg_horiz_padding = %d;function netdata_bdge_each(list, attr, value){Array.prototype.forEach.call(list, function(el){el.setAttribute(attr, value);});};var this_svg = document.currentScript.closest(\22svg\22);var elem_lbl = this_svg.getElementsByClassName(\22bdge-lbl-lbl\22);var elem_val = this_svg.getElementsByClassName(\22bdge-lbl-val\22);var lbl_size = elem_lbl[0].getBBox();var val_size = elem_val[0].getBBox();var width_total = lbl_size.width + bdg_horiz_padding*2;this_svg.getElementsByClassName(\22bdge-rect-lbl\22)[0].setAttribute(\22width\22, width_total);netdata_bdge_each(elem_lbl, \22x\22, (lbl_size.width / 2) + bdg_horiz_padding);netdata_bdge_each(elem_val, \22x\22, width_total + (val_size.width / 2) + bdg_horiz_padding);var val_rect = this_svg.getElementsByClassName(\22bdge-rect-val\22)[0];val_rect.setAttribute(\22width\22, val_size.width + bdg_horiz_padding*2);val_rect.setAttribute(\22x\22, width_total);width_total += val_size.width + bdg_horiz_padding*2;var width_update_elems = this_svg.getElementsByClassName(\22bdge-ttl-width\22);netdata_bdge_each(width_update_elems, \22width\22, width_total);this_svg.setAttribute(\22width\22, width_total);</script>\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"</svg>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_svg(%struct.TYPE_4__* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %37 = load i32, i32* @COLOR_STRING_SIZE, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %23, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %24, align 8
  %42 = load i32, i32* @VALUE_STRING_SIZE, align 4
  %43 = add nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %25, align 8
  %46 = load i32, i32* @LABEL_STRING_SIZE, align 4
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %26, align 8
  %50 = load i32, i32* @VALUE_STRING_SIZE, align 4
  %51 = add nsw i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %27, align 8
  %54 = load i32, i32* @COLOR_STRING_SIZE, align 4
  %55 = add nsw i32 %54, 1
  %56 = zext i32 %55 to i64
  %57 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %28, align 8
  %58 = load i32, i32* @COLOR_STRING_SIZE, align 4
  %59 = add nsw i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %29, align 8
  %62 = load i32, i32* %21, align 4
  %63 = sitofp i32 %62 to double
  store double %63, double* %30, align 8
  %64 = load i32, i32* %22, align 4
  %65 = sitofp i32 %64 to double
  store double %65, double* %31, align 8
  store double 2.000000e+01, double* %33, align 8
  store double 1.100000e+01, double* %34, align 8
  store double 5.800000e+00, double* %35, align 8
  store double 3.000000e+00, double* %36, align 8
  %66 = load i32, i32* %19, align 4
  %67 = icmp slt i32 %66, 100
  br i1 %67, label %68, label %69

68:                                               ; preds = %11
  store i32 100, i32* %19, align 4
  br label %69

69:                                               ; preds = %68, %11
  %70 = load i8*, i8** %16, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8*, i8** %16, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi i1 [ true, %69 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i8*, i8** %17, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i8*, i8** %17, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i1 [ true, %83 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i32, i32* %14, align 4
  %98 = call i64 @isnan(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %14, align 4
  %102 = call i64 @isinf(i32 %101)
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i1 [ true, %96 ], [ %103, %100 ]
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  store i8* %107, i8** %17, align 8
  br label %108

108:                                              ; preds = %104, %91
  %109 = load i8*, i8** %17, align 8
  %110 = load i32, i32* @COLOR_STRING_SIZE, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @calc_colorz(i8* %109, i8* %41, i32 %110, i32 %111)
  %113 = load i32, i32* @VALUE_STRING_SIZE, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* @RRDR_OPTION_DISPLAY_ABS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @calculated_number_fabs(i32 %119)
  br label %123

121:                                              ; preds = %108
  %122 = load i32, i32* %14, align 4
  br label %123

123:                                              ; preds = %121, %118
  %124 = phi i32 [ %120, %118 ], [ %122, %121 ]
  %125 = load i8*, i8** %15, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @format_value_and_unit(i8* %45, i32 %113, i32 %124, i8* %125, i32 %126)
  %128 = load i32, i32* %21, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %22, align 4
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %130, %123
  %134 = load i8*, i8** %13, align 8
  %135 = load double, double* %34, align 8
  %136 = call i32 @verdana11_width(i8* %134, double %135)
  %137 = load i32, i32* @BADGE_HORIZONTAL_PADDING, align 4
  %138 = mul nsw i32 %137, 2
  %139 = add nsw i32 %136, %138
  %140 = sitofp i32 %139 to double
  store double %140, double* %30, align 8
  %141 = load double, double* %34, align 8
  %142 = call i32 @verdana11_width(i8* %45, double %141)
  %143 = load i32, i32* @BADGE_HORIZONTAL_PADDING, align 4
  %144 = mul nsw i32 %143, 2
  %145 = add nsw i32 %142, %144
  %146 = sitofp i32 %145 to double
  store double %146, double* %31, align 8
  br label %147

147:                                              ; preds = %133, %130
  %148 = load double, double* %30, align 8
  %149 = load double, double* %31, align 8
  %150 = fadd double %148, %149
  store double %150, double* %32, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i32, i32* @LABEL_STRING_SIZE, align 4
  %153 = call i32 @escape_xmlz(i8* %49, i8* %151, i32 %152)
  %154 = load i32, i32* @VALUE_STRING_SIZE, align 4
  %155 = call i32 @escape_xmlz(i8* %53, i8* %45, i32 %154)
  %156 = load i8*, i8** %16, align 8
  %157 = call i8* @color_map(i8* %156)
  %158 = load i32, i32* @COLOR_STRING_SIZE, align 4
  %159 = call i32 @escape_xmlz(i8* %57, i8* %157, i32 %158)
  %160 = call i8* @color_map(i8* %41)
  %161 = load i32, i32* @COLOR_STRING_SIZE, align 4
  %162 = call i32 @escape_xmlz(i8* %61, i8* %160, i32 %161)
  %163 = load i32, i32* @CT_IMAGE_SVG_XML, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load double, double* %32, align 8
  %167 = load i32, i32* %19, align 4
  %168 = sitofp i32 %167 to double
  %169 = fmul double %166, %168
  %170 = fdiv double %169, 1.000000e+02
  store double %170, double* %32, align 8
  %171 = load double, double* %33, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sitofp i32 %172 to double
  %174 = fmul double %171, %173
  %175 = fdiv double %174, 1.000000e+02
  store double %175, double* %33, align 8
  %176 = load double, double* %34, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sitofp i32 %177 to double
  %179 = fmul double %176, %178
  %180 = fdiv double %179, 1.000000e+02
  store double %180, double* %34, align 8
  %181 = load double, double* %35, align 8
  %182 = load i32, i32* %19, align 4
  %183 = sitofp i32 %182 to double
  %184 = fmul double %181, %183
  %185 = fdiv double %184, 1.000000e+02
  store double %185, double* %35, align 8
  %186 = load double, double* %30, align 8
  %187 = load i32, i32* %19, align 4
  %188 = sitofp i32 %187 to double
  %189 = fmul double %186, %188
  %190 = fdiv double %189, 1.000000e+02
  store double %190, double* %30, align 8
  %191 = load double, double* %31, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sitofp i32 %192 to double
  %194 = fmul double %191, %193
  %195 = fdiv double %194, 1.000000e+02
  store double %195, double* %31, align 8
  %196 = load double, double* %36, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sitofp i32 %197 to double
  %199 = fmul double %196, %198
  %200 = fdiv double %199, 1.000000e+02
  store double %200, double* %36, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %202 = load double, double* %32, align 8
  %203 = load double, double* %33, align 8
  %204 = load double, double* %32, align 8
  %205 = load double, double* %33, align 8
  %206 = load double, double* %36, align 8
  %207 = load double, double* %30, align 8
  %208 = load double, double* %33, align 8
  %209 = call i32 (%struct.TYPE_4__*, i8*, ...) @buffer_sprintf(%struct.TYPE_4__* %201, i8* getelementptr inbounds ([462 x i8], [462 x i8]* @.str.3, i64 0, i64 0), double %202, double %203, double %204, double %205, double %206, double %207, double %208, i8* %57)
  %210 = load i32, i32* %21, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %147
  %213 = load i32, i32* %22, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %217 = load double, double* %30, align 8
  %218 = load double, double* %33, align 8
  %219 = call i32 (%struct.TYPE_4__*, i8*, ...) @buffer_sprintf(%struct.TYPE_4__* %216, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.4, i64 0, i64 0), double %217, double %218)
  br label %220

220:                                              ; preds = %215, %212, %147
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %222 = load double, double* %30, align 8
  %223 = load double, double* %31, align 8
  %224 = load double, double* %33, align 8
  %225 = call i32 (%struct.TYPE_4__*, i8*, ...) @buffer_sprintf(%struct.TYPE_4__* %221, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), double %222, double %223, double %224, i8* %61)
  %226 = load i32, i32* %21, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %220
  %229 = load i32, i32* %22, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %233 = load double, double* %30, align 8
  %234 = load double, double* %31, align 8
  %235 = load double, double* %33, align 8
  %236 = call i32 (%struct.TYPE_4__*, i8*, ...) @buffer_sprintf(%struct.TYPE_4__* %232, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), double %233, double %234, double %235)
  br label %237

237:                                              ; preds = %231, %228, %220
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %239 = load double, double* %32, align 8
  %240 = load double, double* %33, align 8
  %241 = load double, double* %34, align 8
  %242 = load double, double* %30, align 8
  %243 = fdiv double %242, 2.000000e+00
  %244 = load double, double* %33, align 8
  %245 = load double, double* %35, align 8
  %246 = fsub double %244, %245
  %247 = call i32 @ceil(double %246)
  %248 = load double, double* %30, align 8
  %249 = fdiv double %248, 2.000000e+00
  %250 = load double, double* %33, align 8
  %251 = load double, double* %35, align 8
  %252 = fsub double %250, %251
  %253 = fsub double %252, 1.000000e+00
  %254 = call i32 @ceil(double %253)
  %255 = load double, double* %30, align 8
  %256 = load double, double* %31, align 8
  %257 = fdiv double %256, 2.000000e+00
  %258 = fadd double %255, %257
  %259 = fsub double %258, 1.000000e+00
  %260 = load double, double* %33, align 8
  %261 = load double, double* %35, align 8
  %262 = fsub double %260, %261
  %263 = call i32 @ceil(double %262)
  %264 = load double, double* %30, align 8
  %265 = load double, double* %31, align 8
  %266 = fdiv double %265, 2.000000e+00
  %267 = fadd double %264, %266
  %268 = fsub double %267, 1.000000e+00
  %269 = load double, double* %33, align 8
  %270 = load double, double* %35, align 8
  %271 = fsub double %269, %270
  %272 = fsub double %271, 1.000000e+00
  %273 = call i32 @ceil(double %272)
  %274 = call i32 (%struct.TYPE_4__*, i8*, ...) @buffer_sprintf(%struct.TYPE_4__* %238, i8* getelementptr inbounds ([592 x i8], [592 x i8]* @.str.7, i64 0, i64 0), double %239, double %240, double %241, double %243, i32 %247, i8* %49, double %249, i32 %254, i8* %49, double %259, i32 %263, i8* %53, double %268, i32 %273, i8* %53)
  %275 = load i32, i32* %21, align 4
  %276 = icmp sle i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %237
  %278 = load i32, i32* %22, align 4
  %279 = icmp sle i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277, %237
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %282 = load i32, i32* @BADGE_HORIZONTAL_PADDING, align 4
  %283 = call i32 (%struct.TYPE_4__*, i8*, ...) @buffer_sprintf(%struct.TYPE_4__* %281, i8* getelementptr inbounds ([1162 x i8], [1162 x i8]* @.str.8, i64 0, i64 0), i32 %282)
  br label %284

284:                                              ; preds = %280, %277
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %286 = call i32 (%struct.TYPE_4__*, i8*, ...) @buffer_sprintf(%struct.TYPE_4__* %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %287 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %287)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @isnan(i32) #2

declare dso_local i64 @isinf(i32) #2

declare dso_local i32 @calc_colorz(i8*, i8*, i32, i32) #2

declare dso_local i32 @format_value_and_unit(i8*, i32, i32, i8*, i32) #2

declare dso_local i32 @calculated_number_fabs(i32) #2

declare dso_local i32 @verdana11_width(i8*, double) #2

declare dso_local i32 @escape_xmlz(i8*, i8*, i32) #2

declare dso_local i8* @color_map(i8*) #2

declare dso_local i32 @buffer_sprintf(%struct.TYPE_4__*, i8*, ...) #2

declare dso_local i32 @ceil(double) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
