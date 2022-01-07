; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_update_fixed_function_usage_map.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_update_fixed_function_usage_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i64 }
%struct.wined3d_state = type { i32** }

@MAX_TEXTURES = common dso_local global i64 0, align 8
@WINED3D_TSS_COLOR_OP = common dso_local global i64 0, align 8
@WINED3D_TSS_ALPHA_OP = common dso_local global i64 0, align 8
@WINED3D_TSS_COLOR_ARG1 = common dso_local global i64 0, align 8
@WINED3DTA_SELECTMASK = common dso_local global i64 0, align 8
@WINED3D_TSS_COLOR_ARG2 = common dso_local global i64 0, align 8
@WINED3D_TSS_COLOR_ARG0 = common dso_local global i64 0, align 8
@WINED3D_TSS_ALPHA_ARG1 = common dso_local global i64 0, align 8
@WINED3D_TSS_ALPHA_ARG2 = common dso_local global i64 0, align 8
@WINED3D_TSS_ALPHA_ARG0 = common dso_local global i64 0, align 8
@WINED3D_TOP_DISABLE = common dso_local global i32 0, align 4
@WINED3DTA_TEXTURE = common dso_local global i64 0, align 8
@WINED3D_TOP_SELECT_ARG2 = common dso_local global i32 0, align 4
@WINED3D_TOP_SELECT_ARG1 = common dso_local global i32 0, align 4
@WINED3D_TOP_MULTIPLY_ADD = common dso_local global i32 0, align 4
@WINED3D_TOP_LERP = common dso_local global i32 0, align 4
@WINED3D_TOP_BUMPENVMAP = common dso_local global i32 0, align 4
@WINED3D_TOP_BUMPENVMAP_LUMINANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*)* @context_update_fixed_function_usage_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_update_fixed_function_usage_map(%struct.wined3d_context* %0, %struct.wined3d_state* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %4, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %204, %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MAX_TEXTURES, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %207

22:                                               ; preds = %18
  %23 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %24 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @WINED3D_TSS_COLOR_OP, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %33 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @WINED3D_TSS_ALPHA_OP, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %42 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @WINED3D_TSS_COLOR_ARG1, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @WINED3DTA_SELECTMASK, align 8
  %52 = and i64 %50, %51
  store i64 %52, i64* %10, align 8
  %53 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %54 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @WINED3D_TSS_COLOR_ARG2, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @WINED3DTA_SELECTMASK, align 8
  %64 = and i64 %62, %63
  store i64 %64, i64* %11, align 8
  %65 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %66 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @WINED3D_TSS_COLOR_ARG0, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @WINED3DTA_SELECTMASK, align 8
  %76 = and i64 %74, %75
  store i64 %76, i64* %12, align 8
  %77 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %78 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @WINED3D_TSS_ALPHA_ARG1, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @WINED3DTA_SELECTMASK, align 8
  %88 = and i64 %86, %87
  store i64 %88, i64* %13, align 8
  %89 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %90 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds i32*, i32** %91, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @WINED3D_TSS_ALPHA_ARG2, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @WINED3DTA_SELECTMASK, align 8
  %100 = and i64 %98, %99
  store i64 %100, i64* %14, align 8
  %101 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %102 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @WINED3D_TSS_ALPHA_ARG0, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @WINED3DTA_SELECTMASK, align 8
  %112 = and i64 %110, %111
  store i64 %112, i64* %15, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @WINED3D_TOP_DISABLE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %22
  br label %207

117:                                              ; preds = %22
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @WINED3D_TOP_SELECT_ARG2, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %173, label %125

125:                                              ; preds = %121, %117
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @WINED3D_TOP_SELECT_ARG1, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %173, label %133

133:                                              ; preds = %129, %125
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @WINED3D_TOP_MULTIPLY_ADD, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %173, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @WINED3D_TOP_LERP, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %173, label %145

145:                                              ; preds = %141, %133
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @WINED3D_TOP_SELECT_ARG2, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %173, label %153

153:                                              ; preds = %149, %145
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @WINED3D_TOP_SELECT_ARG1, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %173, label %161

161:                                              ; preds = %157, %153
  %162 = load i64, i64* %15, align 8
  %163 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %161
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @WINED3D_TOP_MULTIPLY_ADD, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @WINED3D_TOP_LERP, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %169, %165, %157, %149, %141, %137, %129, %121
  %174 = load i64, i64* %5, align 8
  %175 = trunc i64 %174 to i32
  %176 = shl i32 1, %175
  %177 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %178 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %173, %169, %161
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @WINED3D_TOP_BUMPENVMAP, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @WINED3D_TOP_BUMPENVMAP_LUMINANCE, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %185, %181
  %190 = load i64, i64* %5, align 8
  %191 = load i64, i64* @MAX_TEXTURES, align 8
  %192 = sub i64 %191, 1
  %193 = icmp ult i64 %190, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = load i64, i64* %5, align 8
  %196 = add i64 %195, 1
  %197 = trunc i64 %196 to i32
  %198 = shl i32 1, %197
  %199 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %200 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %194, %189, %185
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %5, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %5, align 8
  br label %18

207:                                              ; preds = %116, %18
  %208 = load i64, i64* %5, align 8
  %209 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %210 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ult i64 %208, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i64, i64* %5, align 8
  store i64 %214, i64* %6, align 8
  %215 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %216 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %7, align 8
  br label %223

218:                                              ; preds = %207
  %219 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %220 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %6, align 8
  %222 = load i64, i64* %5, align 8
  store i64 %222, i64* %7, align 8
  br label %223

223:                                              ; preds = %218, %213
  %224 = load i64, i64* %5, align 8
  %225 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %226 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load i64, i64* %6, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %5, align 8
  br label %229

229:                                              ; preds = %239, %223
  %230 = load i64, i64* %5, align 8
  %231 = load i64, i64* %7, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %233, label %242

233:                                              ; preds = %229
  %234 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %235 = load i64, i64* %5, align 8
  %236 = load i64, i64* @WINED3D_TSS_COLOR_OP, align 8
  %237 = call i32 @STATE_TEXTURESTAGE(i64 %235, i64 %236)
  %238 = call i32 @context_invalidate_state(%struct.wined3d_context* %234, i32 %237)
  br label %239

239:                                              ; preds = %233
  %240 = load i64, i64* %5, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %5, align 8
  br label %229

242:                                              ; preds = %229
  ret void
}

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_TEXTURESTAGE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
