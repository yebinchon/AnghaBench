; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_cache_glyphs.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_cache_glyphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { float, float, float, float, i32, i32, i32, i64, i64 }
%struct.ft2_source = type { i64, i64, i64, i32*, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32* }
%struct.TYPE_9__ = type { i32 }

@src_glyph = common dso_local global %struct.TYPE_12__* null, align 8
@FT_LOAD_DEFAULT = common dso_local global i32 0, align 4
@FT_RENDER_MODE_NORMAL = common dso_local global i32 0, align 4
@texbuf_w = common dso_local global i64 0, align 8
@texbuf_h = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Out of space trying to render glyphs\00", align 1
@glyph_pos = common dso_local global i64 0, align 8
@buf_pos = common dso_local global i64 0, align 8
@GS_A8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_glyphs(%struct.ft2_source* %0, i32* %1) #0 {
  %3 = alloca %struct.ft2_source*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.ft2_source* %0, %struct.ft2_source** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %18 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %17, i32 0, i32 5
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %2
  br label %244

25:                                               ; preds = %21
  %26 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %27 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %26, i32 0, i32 5
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %5, align 8
  %31 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %32 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %35 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @wcslen(i32* %37)
  store i64 %38, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %208, %25
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %211

43:                                               ; preds = %39
  %44 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %45 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %44, i32 0, i32 5
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @FT_Get_Char_Index(%struct.TYPE_13__* %46, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %207

55:                                               ; preds = %43
  %56 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %57 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %56, i32 0, i32 5
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @FT_LOAD_DEFAULT, align 4
  %61 = call i32 @FT_Load_Glyph(%struct.TYPE_13__* %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = load i32, i32* @FT_RENDER_MODE_NORMAL, align 4
  %64 = call i32 @FT_Render_Glyph(%struct.TYPE_11__* %62, i32 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %13, align 8
  %73 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %74 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %55
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %81 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %55
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* @texbuf_w, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  store i64 0, i64* %7, align 8
  %89 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %90 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %8, align 8
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %13, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i64, i64* @texbuf_h, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @LOG_WARNING, align 4
  %103 = call i32 @blog(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %211

104:                                              ; preds = %95
  %105 = call %struct.TYPE_12__* @bzalloc(i32 4)
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** @src_glyph, align 8
  %106 = load i64, i64* %7, align 8
  %107 = sitofp i64 %106 to float
  %108 = load i64, i64* @texbuf_w, align 8
  %109 = sitofp i64 %108 to float
  %110 = fdiv float %107, %109
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store float %110, float* %112, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %12, align 8
  %115 = add nsw i64 %113, %114
  %116 = sitofp i64 %115 to float
  %117 = load i64, i64* @texbuf_w, align 8
  %118 = sitofp i64 %117 to float
  %119 = fdiv float %116, %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  store float %119, float* %121, align 4
  %122 = load i64, i64* %8, align 8
  %123 = sitofp i64 %122 to float
  %124 = load i64, i64* @texbuf_h, align 8
  %125 = sitofp i64 %124 to float
  %126 = fdiv float %123, %125
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  store float %126, float* %128, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %13, align 8
  %131 = add nsw i64 %129, %130
  %132 = sitofp i64 %131 to float
  %133 = load i64, i64* @texbuf_h, align 8
  %134 = sitofp i64 %133 to float
  %135 = fdiv float %132, %134
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  store float %135, float* %137, align 4
  %138 = load i64, i64* %12, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 8
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 7
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = ashr i32 %157, 6
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @src_glyph, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  store i64 0, i64* %14, align 8
  br label %161

161:                                              ; preds = %187, %104
  %162 = load i64, i64* %14, align 8
  %163 = load i64, i64* %13, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %190

165:                                              ; preds = %161
  store i64 0, i64* %15, align 8
  br label %166

166:                                              ; preds = %183, %165
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* %12, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %166
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @glyph_pos, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %179 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @buf_pos, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32 %177, i32* %182, align 4
  br label %183

183:                                              ; preds = %170
  %184 = load i64, i64* %15, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %15, align 8
  br label %166

186:                                              ; preds = %166
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %14, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %14, align 8
  br label %161

190:                                              ; preds = %161
  %191 = load i64, i64* %12, align 8
  %192 = add nsw i64 %191, 1
  %193 = load i64, i64* %7, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %7, align 8
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* @texbuf_w, align 8
  %197 = icmp sge i64 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %190
  store i64 0, i64* %7, align 8
  %199 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %200 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %8, align 8
  %203 = add nsw i64 %202, %201
  store i64 %203, i64* %8, align 8
  br label %204

204:                                              ; preds = %198, %190
  %205 = load i64, i64* %9, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %9, align 8
  br label %207

207:                                              ; preds = %204, %54
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %11, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %11, align 8
  br label %39

211:                                              ; preds = %101, %39
  %212 = load i64, i64* %7, align 8
  %213 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %214 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %217 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  %218 = load i64, i64* %9, align 8
  %219 = icmp sgt i64 %218, 0
  br i1 %219, label %220, label %244

220:                                              ; preds = %211
  %221 = call i32 (...) @obs_enter_graphics()
  %222 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %223 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %220
  store i32* null, i32** %16, align 8
  %227 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %228 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %227, i32 0, i32 4
  %229 = load i32*, i32** %228, align 8
  store i32* %229, i32** %16, align 8
  %230 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %231 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %230, i32 0, i32 4
  store i32* null, i32** %231, align 8
  %232 = load i32*, i32** %16, align 8
  %233 = call i32 @gs_texture_destroy(i32* %232)
  br label %234

234:                                              ; preds = %226, %220
  %235 = load i64, i64* @texbuf_w, align 8
  %236 = load i64, i64* @texbuf_h, align 8
  %237 = load i32, i32* @GS_A8, align 4
  %238 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %239 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %238, i32 0, i32 3
  %240 = call i32* @gs_texture_create(i64 %235, i64 %236, i32 %237, i32 1, i32** %239, i32 0)
  %241 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %242 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %241, i32 0, i32 4
  store i32* %240, i32** %242, align 8
  %243 = call i32 (...) @obs_leave_graphics()
  br label %244

244:                                              ; preds = %24, %234, %211
  ret void
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @FT_Get_Char_Index(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @FT_Load_Glyph(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @FT_Render_Glyph(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @bzalloc(i32) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texture_destroy(i32*) #1

declare dso_local i32* @gs_texture_create(i64, i64, i32, i32, i32**, i32) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
