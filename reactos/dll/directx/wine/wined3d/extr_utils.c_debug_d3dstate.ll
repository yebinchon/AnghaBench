; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_d3dstate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_d3dstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"STATE_RENDER(%s)\00", align 1
@WINED3D_HIGHEST_TEXTURE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"STATE_TEXTURESTAGE(%#x, %s)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"STATE_SAMPLER(%#x)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"STATE_SHADER(%s)\00", align 1
@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"STATE_CONSTANT_BUFFER(%s)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"STATE_COMPUTE_SHADER_RESOURCE_BINDING\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"STATE_GRAPHICS_SHADER_RESOURCE_BINDING\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"STATE_COMPUTE_UNORDERED_ACCESS_VIEW_BINDING\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"STATE_GRAPHICS_UNORDERED_ACCESS_VIEW_BINDING\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"STATE_TRANSFORM(%s)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"STATE_STREAMSRC\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"STATE_INDEXBUFFER\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"STATE_VDECL\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"STATE_VIEWPORT\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"STATE_LIGHT_TYPE\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"STATE_ACTIVELIGHT(%#x)\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"STATE_SCISSORRECT\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"STATE_CLIPPLANE(%#x)\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"STATE_MATERIAL\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"STATE_FRONTFACE\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"STATE_POINTSPRITECOORDORIGIN\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"STATE_BASEVERTEXINDEX\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"STATE_FRAMEBUFFER\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"STATE_POINT_ENABLE\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"STATE_COLOR_KEY\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"STATE_STREAM_OUTPUT\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"STATE_BLEND\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"UNKNOWN_STATE(%#x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debug_d3dstate(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @STATE_IS_RENDER(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @STATE_RENDER(i32 0)
  %12 = sub nsw i32 %10, %11
  %13 = call i32 @debug_d3drenderstate(i32 %12)
  %14 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i8* %14, i8** %2, align 8
  br label %205

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @STATE_IS_TEXTURESTAGE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @STATE_TEXTURESTAGE(i32 0, i32 0)
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* @WINED3D_HIGHEST_TEXTURE_STATE, align 4
  %24 = add nsw i32 %23, 1
  %25 = sdiv i32 %22, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @STATE_TEXTURESTAGE(i32 %27, i32 0)
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @debug_d3dtexturestate(i32 %31)
  %33 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32)
  store i8* %33, i8** %2, align 8
  br label %205

34:                                               ; preds = %15
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @STATE_IS_SAMPLER(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @STATE_SAMPLER(i32 0)
  %41 = sub nsw i32 %39, %40
  %42 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i8* %42, i8** %2, align 8
  br label %205

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @STATE_IS_COMPUTE_SHADER(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %49 = call i32 @debug_shader_type(i32 %48)
  %50 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  store i8* %50, i8** %2, align 8
  br label %205

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @STATE_IS_GRAPHICS_SHADER(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @STATE_SHADER(i32 0)
  %58 = sub nsw i32 %56, %57
  %59 = call i32 @debug_shader_type(i32 %58)
  %60 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  store i8* %60, i8** %2, align 8
  br label %205

61:                                               ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @STATE_IS_COMPUTE_CONSTANT_BUFFER(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %67 = call i32 @debug_shader_type(i32 %66)
  %68 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  store i8* %68, i8** %2, align 8
  br label %205

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = call i64 @STATE_IS_GRAPHICS_CONSTANT_BUFFER(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @STATE_CONSTANT_BUFFER(i32 0)
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @debug_shader_type(i32 %76)
  %78 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  store i8* %78, i8** %2, align 8
  br label %205

79:                                               ; preds = %69
  %80 = load i32, i32* %3, align 4
  %81 = call i64 @STATE_IS_COMPUTE_SHADER_RESOURCE_BINDING(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %205

84:                                               ; preds = %79
  %85 = load i32, i32* %3, align 4
  %86 = call i64 @STATE_IS_GRAPHICS_SHADER_RESOURCE_BINDING(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %205

89:                                               ; preds = %84
  %90 = load i32, i32* %3, align 4
  %91 = call i64 @STATE_IS_COMPUTE_UNORDERED_ACCESS_VIEW_BINDING(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %205

94:                                               ; preds = %89
  %95 = load i32, i32* %3, align 4
  %96 = call i64 @STATE_IS_GRAPHICS_UNORDERED_ACCESS_VIEW_BINDING(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %205

99:                                               ; preds = %94
  %100 = load i32, i32* %3, align 4
  %101 = call i64 @STATE_IS_TRANSFORM(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @STATE_TRANSFORM(i32 0)
  %106 = sub nsw i32 %104, %105
  %107 = call i32 @debug_d3dtstype(i32 %106)
  %108 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  store i8* %108, i8** %2, align 8
  br label %205

109:                                              ; preds = %99
  %110 = load i32, i32* %3, align 4
  %111 = call i64 @STATE_IS_STREAMSRC(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %205

114:                                              ; preds = %109
  %115 = load i32, i32* %3, align 4
  %116 = call i64 @STATE_IS_INDEXBUFFER(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %205

119:                                              ; preds = %114
  %120 = load i32, i32* %3, align 4
  %121 = call i64 @STATE_IS_VDECL(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %205

124:                                              ; preds = %119
  %125 = load i32, i32* %3, align 4
  %126 = call i64 @STATE_IS_VIEWPORT(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %205

129:                                              ; preds = %124
  %130 = load i32, i32* %3, align 4
  %131 = call i64 @STATE_IS_LIGHT_TYPE(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %205

134:                                              ; preds = %129
  %135 = load i32, i32* %3, align 4
  %136 = call i64 @STATE_IS_ACTIVELIGHT(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @STATE_ACTIVELIGHT(i32 0)
  %141 = sub nsw i32 %139, %140
  %142 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %141)
  store i8* %142, i8** %2, align 8
  br label %205

143:                                              ; preds = %134
  %144 = load i32, i32* %3, align 4
  %145 = call i64 @STATE_IS_SCISSORRECT(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %205

148:                                              ; preds = %143
  %149 = load i32, i32* %3, align 4
  %150 = call i64 @STATE_IS_CLIPPLANE(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @STATE_CLIPPLANE(i32 0)
  %155 = sub nsw i32 %153, %154
  %156 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %155)
  store i8* %156, i8** %2, align 8
  br label %205

157:                                              ; preds = %148
  %158 = load i32, i32* %3, align 4
  %159 = call i64 @STATE_IS_MATERIAL(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %205

162:                                              ; preds = %157
  %163 = load i32, i32* %3, align 4
  %164 = call i64 @STATE_IS_FRONTFACE(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %205

167:                                              ; preds = %162
  %168 = load i32, i32* %3, align 4
  %169 = call i64 @STATE_IS_POINTSPRITECOORDORIGIN(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %205

172:                                              ; preds = %167
  %173 = load i32, i32* %3, align 4
  %174 = call i64 @STATE_IS_BASEVERTEXINDEX(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %205

177:                                              ; preds = %172
  %178 = load i32, i32* %3, align 4
  %179 = call i64 @STATE_IS_FRAMEBUFFER(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %205

182:                                              ; preds = %177
  %183 = load i32, i32* %3, align 4
  %184 = call i64 @STATE_IS_POINT_ENABLE(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %205

187:                                              ; preds = %182
  %188 = load i32, i32* %3, align 4
  %189 = call i64 @STATE_IS_COLOR_KEY(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %205

192:                                              ; preds = %187
  %193 = load i32, i32* %3, align 4
  %194 = call i64 @STATE_IS_STREAM_OUTPUT(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %205

197:                                              ; preds = %192
  %198 = load i32, i32* %3, align 4
  %199 = call i64 @STATE_IS_BLEND(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %205

202:                                              ; preds = %197
  %203 = load i32, i32* %3, align 4
  %204 = call i8* (i8*, i32, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %203)
  store i8* %204, i8** %2, align 8
  br label %205

205:                                              ; preds = %202, %201, %196, %191, %186, %181, %176, %171, %166, %161, %152, %147, %138, %133, %128, %123, %118, %113, %103, %98, %93, %88, %83, %73, %65, %55, %47, %38, %19, %9
  %206 = load i8*, i8** %2, align 8
  ret i8* %206
}

declare dso_local i64 @STATE_IS_RENDER(i32) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i32, ...) #1

declare dso_local i32 @debug_d3drenderstate(i32) #1

declare dso_local i32 @STATE_RENDER(i32) #1

declare dso_local i64 @STATE_IS_TEXTURESTAGE(i32) #1

declare dso_local i32 @STATE_TEXTURESTAGE(i32, i32) #1

declare dso_local i32 @debug_d3dtexturestate(i32) #1

declare dso_local i64 @STATE_IS_SAMPLER(i32) #1

declare dso_local i32 @STATE_SAMPLER(i32) #1

declare dso_local i64 @STATE_IS_COMPUTE_SHADER(i32) #1

declare dso_local i32 @debug_shader_type(i32) #1

declare dso_local i64 @STATE_IS_GRAPHICS_SHADER(i32) #1

declare dso_local i32 @STATE_SHADER(i32) #1

declare dso_local i64 @STATE_IS_COMPUTE_CONSTANT_BUFFER(i32) #1

declare dso_local i64 @STATE_IS_GRAPHICS_CONSTANT_BUFFER(i32) #1

declare dso_local i32 @STATE_CONSTANT_BUFFER(i32) #1

declare dso_local i64 @STATE_IS_COMPUTE_SHADER_RESOURCE_BINDING(i32) #1

declare dso_local i64 @STATE_IS_GRAPHICS_SHADER_RESOURCE_BINDING(i32) #1

declare dso_local i64 @STATE_IS_COMPUTE_UNORDERED_ACCESS_VIEW_BINDING(i32) #1

declare dso_local i64 @STATE_IS_GRAPHICS_UNORDERED_ACCESS_VIEW_BINDING(i32) #1

declare dso_local i64 @STATE_IS_TRANSFORM(i32) #1

declare dso_local i32 @debug_d3dtstype(i32) #1

declare dso_local i32 @STATE_TRANSFORM(i32) #1

declare dso_local i64 @STATE_IS_STREAMSRC(i32) #1

declare dso_local i64 @STATE_IS_INDEXBUFFER(i32) #1

declare dso_local i64 @STATE_IS_VDECL(i32) #1

declare dso_local i64 @STATE_IS_VIEWPORT(i32) #1

declare dso_local i64 @STATE_IS_LIGHT_TYPE(i32) #1

declare dso_local i64 @STATE_IS_ACTIVELIGHT(i32) #1

declare dso_local i32 @STATE_ACTIVELIGHT(i32) #1

declare dso_local i64 @STATE_IS_SCISSORRECT(i32) #1

declare dso_local i64 @STATE_IS_CLIPPLANE(i32) #1

declare dso_local i32 @STATE_CLIPPLANE(i32) #1

declare dso_local i64 @STATE_IS_MATERIAL(i32) #1

declare dso_local i64 @STATE_IS_FRONTFACE(i32) #1

declare dso_local i64 @STATE_IS_POINTSPRITECOORDORIGIN(i32) #1

declare dso_local i64 @STATE_IS_BASEVERTEXINDEX(i32) #1

declare dso_local i64 @STATE_IS_FRAMEBUFFER(i32) #1

declare dso_local i64 @STATE_IS_POINT_ENABLE(i32) #1

declare dso_local i64 @STATE_IS_COLOR_KEY(i32) #1

declare dso_local i64 @STATE_IS_STREAM_OUTPUT(i32) #1

declare dso_local i64 @STATE_IS_BLEND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
