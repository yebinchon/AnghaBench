; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_add_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_add_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DSP_REGTYPE_MASK2 = common dso_local global i32 0, align 4
@D3DSP_REGTYPE_SHIFT2 = common dso_local global i32 0, align 4
@D3DSP_REGTYPE_MASK = common dso_local global i32 0, align 4
@D3DSP_REGTYPE_SHIFT = common dso_local global i32 0, align 4
@D3DSP_REGNUM_MASK = common dso_local global i32 0, align 4
@D3DSPR_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"v%d\00", align 1
@D3DSPR_CONST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"c%d\00", align 1
@D3DSPR_TEMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@D3DSPR_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@D3DSPR_SAMPLER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"s%d\00", align 1
@D3DSPR_RASTOUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"oPos\00", align 1
@D3DSPR_COLOROUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"oC%d\00", align 1
@D3DSPR_TEXCRDOUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"oT%d\00", align 1
@D3DSPR_ATTROUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"oD%d\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"? (%d)\00", align 1
@D3DSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c".%s%s%s%s\00", align 1
@D3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@D3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@D3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@D3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@D3DVS_SWIZZLE_MASK = common dso_local global i32 0, align 4
@D3DVS_NOSWIZZLE = common dso_local global i32 0, align 4
@D3DSP_SWIZZLE_MASK = common dso_local global i32 0, align 4
@D3DVS_X_X = common dso_local global i32 0, align 4
@D3DVS_Y_X = common dso_local global i32 0, align 4
@D3DVS_Z_X = common dso_local global i32 0, align 4
@D3DVS_W_X = common dso_local global i32 0, align 4
@D3DVS_X_Y = common dso_local global i32 0, align 4
@D3DVS_Y_Y = common dso_local global i32 0, align 4
@D3DVS_Z_Y = common dso_local global i32 0, align 4
@D3DVS_W_Y = common dso_local global i32 0, align 4
@D3DVS_X_Z = common dso_local global i32 0, align 4
@D3DVS_Y_Z = common dso_local global i32 0, align 4
@D3DVS_Z_Z = common dso_local global i32 0, align 4
@D3DVS_W_Z = common dso_local global i32 0, align 4
@D3DVS_X_W = common dso_local global i32 0, align 4
@D3DVS_Y_W = common dso_local global i32 0, align 4
@D3DVS_Z_W = common dso_local global i32 0, align 4
@D3DVS_W_W = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c".%c\00", align 1
@D3DVS_SWIZZLE_SHIFT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c".%c%c%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64)* @add_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_register(i8* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @D3DSP_REGTYPE_MASK2, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @D3DSP_REGTYPE_SHIFT2, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @D3DSP_REGTYPE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @D3DSP_REGTYPE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = or i32 %17, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @D3DSP_REGNUM_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @D3DSPR_INPUT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %9, align 8
  br label %143

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @D3DSPR_CONST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %9, align 8
  br label %142

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @D3DSPR_TEMP, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %9, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %9, align 8
  br label %141

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @D3DSPR_ADDR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %68, i32 %69)
  %71 = load i8*, i8** %9, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %9, align 8
  br label %140

74:                                               ; preds = %59
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @D3DSPR_SAMPLER, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %9, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %9, align 8
  br label %139

85:                                               ; preds = %74
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @D3DSPR_RASTOUT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %92 = load i8*, i8** %9, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %9, align 8
  br label %138

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @D3DSPR_COLOROUT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  %103 = load i8*, i8** %9, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %9, align 8
  br label %137

106:                                              ; preds = %95
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @D3DSPR_TEXCRDOUT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %112)
  %114 = load i8*, i8** %9, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %9, align 8
  br label %136

117:                                              ; preds = %106
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @D3DSPR_ATTROUT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  %125 = load i8*, i8** %9, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %9, align 8
  br label %135

128:                                              ; preds = %117
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i8*, i8*, ...) @sprintf(i8* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %130)
  %132 = load i8*, i8** %9, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %9, align 8
  br label %135

135:                                              ; preds = %128, %121
  br label %136

136:                                              ; preds = %135, %110
  br label %137

137:                                              ; preds = %136, %99
  br label %138

138:                                              ; preds = %137, %89
  br label %139

139:                                              ; preds = %138, %78
  br label %140

140:                                              ; preds = %139, %63
  br label %141

141:                                              ; preds = %140, %52
  br label %142

142:                                              ; preds = %141, %41
  br label %143

143:                                              ; preds = %142, %30
  %144 = load i64, i64* %7, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %183

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @D3DSP_WRITEMASK_ALL, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* @D3DSP_WRITEMASK_ALL, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %182

152:                                              ; preds = %146
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @D3DSP_WRITEMASK_0, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @D3DSP_WRITEMASK_1, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @D3DSP_WRITEMASK_2, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @D3DSP_WRITEMASK_3, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %178 = call i32 (i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %159, i8* %165, i8* %171, i8* %177)
  %179 = load i8*, i8** %9, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %9, align 8
  br label %182

182:                                              ; preds = %152, %146
  br label %285

183:                                              ; preds = %143
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @D3DVS_SWIZZLE_MASK, align 4
  %186 = and i32 %184, %185
  %187 = load i32, i32* @D3DVS_NOSWIZZLE, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %284

189:                                              ; preds = %183
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @D3DSP_SWIZZLE_MASK, align 4
  %192 = and i32 %190, %191
  %193 = load i32, i32* @D3DVS_X_X, align 4
  %194 = load i32, i32* @D3DVS_Y_X, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @D3DVS_Z_X, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @D3DVS_W_X, align 4
  %199 = or i32 %197, %198
  %200 = icmp eq i32 %192, %199
  br i1 %200, label %237, label %201

201:                                              ; preds = %189
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @D3DSP_SWIZZLE_MASK, align 4
  %204 = and i32 %202, %203
  %205 = load i32, i32* @D3DVS_X_Y, align 4
  %206 = load i32, i32* @D3DVS_Y_Y, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @D3DVS_Z_Y, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @D3DVS_W_Y, align 4
  %211 = or i32 %209, %210
  %212 = icmp eq i32 %204, %211
  br i1 %212, label %237, label %213

213:                                              ; preds = %201
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @D3DSP_SWIZZLE_MASK, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @D3DVS_X_Z, align 4
  %218 = load i32, i32* @D3DVS_Y_Z, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @D3DVS_Z_Z, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @D3DVS_W_Z, align 4
  %223 = or i32 %221, %222
  %224 = icmp eq i32 %216, %223
  br i1 %224, label %237, label %225

225:                                              ; preds = %213
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @D3DSP_SWIZZLE_MASK, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* @D3DVS_X_W, align 4
  %230 = load i32, i32* @D3DVS_Y_W, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @D3DVS_Z_W, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @D3DVS_W_W, align 4
  %235 = or i32 %233, %234
  %236 = icmp eq i32 %228, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %225, %213, %201, %189
  %238 = load i8*, i8** %9, align 8
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @D3DVS_SWIZZLE_SHIFT, align 4
  %241 = ashr i32 %239, %240
  %242 = add nsw i32 %241, 1
  %243 = and i32 %242, 3
  %244 = add nsw i32 119, %243
  %245 = call i32 (i8*, i8*, ...) @sprintf(i8* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %244)
  %246 = load i8*, i8** %9, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %9, align 8
  br label %283

249:                                              ; preds = %225
  %250 = load i8*, i8** %9, align 8
  %251 = load i32, i32* %6, align 4
  %252 = load i32, i32* @D3DVS_SWIZZLE_SHIFT, align 4
  %253 = add nsw i32 %252, 0
  %254 = ashr i32 %251, %253
  %255 = add nsw i32 %254, 1
  %256 = and i32 %255, 3
  %257 = add nsw i32 119, %256
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* @D3DVS_SWIZZLE_SHIFT, align 4
  %260 = add nsw i32 %259, 2
  %261 = ashr i32 %258, %260
  %262 = add nsw i32 %261, 1
  %263 = and i32 %262, 3
  %264 = add nsw i32 119, %263
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* @D3DVS_SWIZZLE_SHIFT, align 4
  %267 = add nsw i32 %266, 4
  %268 = ashr i32 %265, %267
  %269 = add nsw i32 %268, 1
  %270 = and i32 %269, 3
  %271 = add nsw i32 119, %270
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* @D3DVS_SWIZZLE_SHIFT, align 4
  %274 = add nsw i32 %273, 6
  %275 = ashr i32 %272, %274
  %276 = add nsw i32 %275, 1
  %277 = and i32 %276, 3
  %278 = add nsw i32 119, %277
  %279 = call i32 (i8*, i8*, ...) @sprintf(i8* %250, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %257, i32 %264, i32 %271, i32 %278)
  %280 = load i8*, i8** %9, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8* %282, i8** %9, align 8
  br label %283

283:                                              ; preds = %249, %237
  br label %284

284:                                              ; preds = %283, %183
  br label %285

285:                                              ; preds = %284, %182
  %286 = load i8*, i8** %9, align 8
  %287 = load i8*, i8** %5, align 8
  %288 = ptrtoint i8* %286 to i64
  %289 = ptrtoint i8* %287 to i64
  %290 = sub i64 %288, %289
  %291 = trunc i64 %290 to i32
  ret i32 %291
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
