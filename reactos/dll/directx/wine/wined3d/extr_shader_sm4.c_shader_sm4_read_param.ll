; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_sm4_data = type { i32 }
%struct.wined3d_shader_register = type { i32, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid ptr %p >= end %p.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WINED3D_SM4_REGISTER_TYPE_MASK = common dso_local global i32 0, align 4
@WINED3D_SM4_REGISTER_TYPE_SHIFT = common dso_local global i32 0, align 4
@register_type_table = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unhandled register type %#x.\0A\00", align 1
@WINED3DSPR_TEMP = common dso_local global i32 0, align 4
@WINED3D_SM4_REGISTER_MODIFIER = common dso_local global i32 0, align 4
@WINED3DSPSM_NEG = common dso_local global i32 0, align 4
@WINED3DSPSM_ABS = common dso_local global i32 0, align 4
@WINED3DSPSM_ABSNEG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Skipping modifier 0x%08x.\0A\00", align 1
@WINED3DSPSM_NONE = common dso_local global i32 0, align 4
@WINED3D_SM4_REGISTER_ORDER_MASK = common dso_local global i32 0, align 4
@WINED3D_SM4_REGISTER_ORDER_SHIFT = common dso_local global i32 0, align 4
@WINED3D_SM4_ADDRESSING_MASK0 = common dso_local global i32 0, align 4
@WINED3D_SM4_ADDRESSING_SHIFT0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to read register index.\0A\00", align 1
@WINED3D_SM4_ADDRESSING_MASK1 = common dso_local global i32 0, align 4
@WINED3D_SM4_ADDRESSING_SHIFT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Unhandled order %u.\0A\00", align 1
@WINED3D_SM4_RT_IMMCONST = common dso_local global i32 0, align 4
@WINED3D_SM4_IMMCONST_TYPE_MASK = common dso_local global i32 0, align 4
@WINED3D_SM4_IMMCONST_TYPE_SHIFT = common dso_local global i32 0, align 4
@WINED3D_IMMCONST_SCALAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid ptr %p, end %p.\0A\00", align 1
@WINED3D_IMMCONST_VEC4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Unhandled immediate constant type %#x.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_sm4_data*, i32**, i32*, i32, %struct.wined3d_shader_register*, i32*)* @shader_sm4_read_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_sm4_read_param(%struct.wined3d_sm4_data* %0, i32** %1, i32* %2, i32 %3, %struct.wined3d_shader_register* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_sm4_data*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_shader_register*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.wined3d_sm4_data* %0, %struct.wined3d_sm4_data** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wined3d_shader_register* %4, %struct.wined3d_shader_register** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32**, i32*** %9, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp uge i32* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load i32**, i32*** %9, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %27, i32* %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %7, align 4
  br label %256

31:                                               ; preds = %6
  %32 = load i32**, i32*** %9, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %32, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @WINED3D_SM4_REGISTER_TYPE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @WINED3D_SM4_REGISTER_TYPE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** @register_type_table, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp uge i32 %41, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %31
  %46 = load i32*, i32** @register_type_table, align 8
  %47 = load i32, i32* %14, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %45, %31
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @WINED3DSPR_TEMP, align 4
  %56 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %66

58:                                               ; preds = %45
  %59 = load i32*, i32** @register_type_table, align 8
  %60 = load i32, i32* %14, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %58, %52
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %69 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @WINED3D_SM4_REGISTER_MODIFIER, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %66
  %75 = load i32**, i32*** %9, align 8
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = icmp uge i32* %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32**, i32*** %9, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %81, i32* %82)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %7, align 4
  br label %256

85:                                               ; preds = %74
  %86 = load i32**, i32*** %9, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %86, align 8
  %89 = load i32, i32* %87, align 4
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  switch i32 %90, label %100 [
    i32 65, label %91
    i32 129, label %94
    i32 193, label %97
  ]

91:                                               ; preds = %85
  %92 = load i32, i32* @WINED3DSPSM_NEG, align 4
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  br label %105

94:                                               ; preds = %85
  %95 = load i32, i32* @WINED3DSPSM_ABS, align 4
  %96 = load i32*, i32** %13, align 8
  store i32 %95, i32* %96, align 4
  br label %105

97:                                               ; preds = %85
  %98 = load i32, i32* @WINED3DSPSM_ABSNEG, align 4
  %99 = load i32*, i32** %13, align 8
  store i32 %98, i32* %99, align 4
  br label %105

100:                                              ; preds = %85
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @WINED3DSPSM_NONE, align 4
  %104 = load i32*, i32** %13, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %97, %94, %91
  br label %109

106:                                              ; preds = %66
  %107 = load i32, i32* @WINED3DSPSM_NONE, align 4
  %108 = load i32*, i32** %13, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %105
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @WINED3D_SM4_REGISTER_ORDER_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @WINED3D_SM4_REGISTER_ORDER_SHIFT, align 4
  %114 = ashr i32 %112, %113
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %119 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %118, i32 0, i32 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 -1, i32* %122, align 4
  br label %143

123:                                              ; preds = %109
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @WINED3D_SM4_ADDRESSING_MASK0, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @WINED3D_SM4_ADDRESSING_SHIFT0, align 4
  %128 = ashr i32 %126, %127
  store i32 %128, i32* %18, align 4
  %129 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %8, align 8
  %130 = load i32**, i32*** %9, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %18, align 4
  %133 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %134 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %133, i32 0, i32 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 0
  %137 = call i32 @shader_sm4_read_reg_idx(%struct.wined3d_sm4_data* %129, i32** %130, i32* %131, i32 %132, %struct.TYPE_4__* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %123
  %140 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %7, align 4
  br label %256

142:                                              ; preds = %123
  br label %143

143:                                              ; preds = %142, %117
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %148 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %147, i32 0, i32 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 -1, i32* %151, align 4
  br label %172

152:                                              ; preds = %143
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* @WINED3D_SM4_ADDRESSING_MASK1, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* @WINED3D_SM4_ADDRESSING_SHIFT1, align 4
  %157 = ashr i32 %155, %156
  store i32 %157, i32* %19, align 4
  %158 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %8, align 8
  %159 = load i32**, i32*** %9, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %19, align 4
  %162 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %163 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %162, i32 0, i32 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 1
  %166 = call i32 @shader_sm4_read_reg_idx(%struct.wined3d_sm4_data* %158, i32** %159, i32* %160, i32 %161, %struct.TYPE_4__* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %152
  %169 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i32, i32* @FALSE, align 4
  store i32 %170, i32* %7, align 4
  br label %256

171:                                              ; preds = %152
  br label %172

172:                                              ; preds = %171, %146
  %173 = load i32, i32* %16, align 4
  %174 = icmp sgt i32 %173, 2
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %16, align 4
  %177 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* @WINED3D_SM4_RT_IMMCONST, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %251

182:                                              ; preds = %178
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* @WINED3D_SM4_IMMCONST_TYPE_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* @WINED3D_SM4_IMMCONST_TYPE_SHIFT, align 4
  %187 = ashr i32 %185, %186
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  switch i32 %188, label %247 [
    i32 129, label %189
    i32 128, label %218
  ]

189:                                              ; preds = %182
  %190 = load i32, i32* @WINED3D_IMMCONST_SCALAR, align 4
  %191 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %192 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load i32*, i32** %10, align 8
  %194 = load i32**, i32*** %9, align 8
  %195 = load i32*, i32** %194, align 8
  %196 = ptrtoint i32* %193 to i64
  %197 = ptrtoint i32* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sdiv exact i64 %198, 4
  %200 = icmp slt i64 %199, 1
  br i1 %200, label %201, label %207

201:                                              ; preds = %189
  %202 = load i32**, i32*** %9, align 8
  %203 = load i32*, i32** %202, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %203, i32* %204)
  %206 = load i32, i32* @FALSE, align 4
  store i32 %206, i32* %7, align 4
  br label %256

207:                                              ; preds = %189
  %208 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %209 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32**, i32*** %9, align 8
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @memcpy(i32 %211, i32* %213, i32 4)
  %215 = load i32**, i32*** %9, align 8
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  store i32* %217, i32** %215, align 8
  br label %250

218:                                              ; preds = %182
  %219 = load i32, i32* @WINED3D_IMMCONST_VEC4, align 4
  %220 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %221 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = load i32*, i32** %10, align 8
  %223 = load i32**, i32*** %9, align 8
  %224 = load i32*, i32** %223, align 8
  %225 = ptrtoint i32* %222 to i64
  %226 = ptrtoint i32* %224 to i64
  %227 = sub i64 %225, %226
  %228 = sdiv exact i64 %227, 4
  %229 = icmp slt i64 %228, 4
  br i1 %229, label %230, label %236

230:                                              ; preds = %218
  %231 = load i32**, i32*** %9, align 8
  %232 = load i32*, i32** %231, align 8
  %233 = load i32*, i32** %10, align 8
  %234 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %232, i32* %233)
  %235 = load i32, i32* @FALSE, align 4
  store i32 %235, i32* %7, align 4
  br label %256

236:                                              ; preds = %218
  %237 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %238 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32**, i32*** %9, align 8
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @memcpy(i32 %240, i32* %242, i32 16)
  %244 = load i32**, i32*** %9, align 8
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 4
  store i32* %246, i32** %244, align 8
  br label %250

247:                                              ; preds = %182
  %248 = load i32, i32* %20, align 4
  %249 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %247, %236, %207
  br label %251

251:                                              ; preds = %250, %178
  %252 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %8, align 8
  %253 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %12, align 8
  %254 = call i32 @map_register(%struct.wined3d_sm4_data* %252, %struct.wined3d_shader_register* %253)
  %255 = load i32, i32* @TRUE, align 4
  store i32 %255, i32* %7, align 4
  br label %256

256:                                              ; preds = %251, %230, %201, %168, %139, %79, %25
  %257 = load i32, i32* %7, align 4
  ret i32 %257
}

declare dso_local i32 @WARN(i8*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_sm4_read_reg_idx(%struct.wined3d_sm4_data*, i32**, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @map_register(%struct.wined3d_sm4_data*, %struct.wined3d_shader_register*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
