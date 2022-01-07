; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_init_set_constants_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_init_set_constants_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.d3dx_const_tab = type { i32, i64* }
%struct.d3dx_parameter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.d3dx_parameter* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.d3dx_const_param_eval_output = type { i32, i64, i32, i32, i32, i32, %struct.d3dx_parameter* }
%struct.const_upload_info = type { i32, i64, i64, i64, i64, i64, i32 }

@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unexpected number of constant elements %u.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [88 x i8] c"Number of elements or struct members differs between parameter (%u) and constant (%u).\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not get constant.\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Constant %s, rows %u, columns %u, class %u, bytes %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Parameter %s, rows %u, columns %u, class %u, flags %#x, bytes %u.\0A\00", align 1
@shad_regset2table = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Unknown register set %u.\0A\00", align 1
@PRES_REGTAB_COUNT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Unexpected register set %u.\0A\00", align 1
@table_info = common dso_local global %struct.TYPE_5__* null, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"%s has zero count, skipping.\0A\00", align 1
@PRES_VT_COUNT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [94 x i8] c"Incomplete last row for not transposed matrix which cannot be directly copied, parameter %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Constant dimensions exceed parameter size.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_const_tab*, i32*, i32, %struct.d3dx_parameter*)* @init_set_constants_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_set_constants_param(%struct.d3dx_const_tab* %0, i32* %1, i32 %2, %struct.d3dx_parameter* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dx_const_tab*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.d3dx_parameter*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.d3dx_const_param_eval_output, align 8
  %16 = alloca %struct.const_upload_info, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.d3dx_const_tab* %0, %struct.d3dx_const_tab** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.d3dx_parameter* %3, %struct.d3dx_parameter** %9, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @get_ctab_constant_desc(i32* %22, i32 %23, %struct.TYPE_4__* %10, i32* null)
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %28, i32* %5, align 4
  br label %342

29:                                               ; preds = %4
  %30 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %31 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %36 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %14, align 8
  br label %57

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %49, i32* %5, align 4
  br label %342

50:                                               ; preds = %41
  %51 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %52 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %50, %34
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %65, i32* %5, align 4
  br label %342

66:                                               ; preds = %57
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %129

69:                                               ; preds = %66
  %70 = load i32, i32* @D3D_OK, align 4
  store i32 %70, i32* %19, align 4
  %71 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %6, align 8
  %72 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %21, align 4
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %115, %69
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = load i64, i64* %14, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @ID3DXConstantTable_GetConstantElement(i32* %82, i32 %83, i32 %84)
  store i32 %85, i32* %20, align 4
  br label %91

86:                                               ; preds = %78
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @ID3DXConstantTable_GetConstant(i32* %87, i32 %88, i32 %89)
  store i32 %90, i32* %20, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %96, i32* %18, align 4
  br label %108

97:                                               ; preds = %91
  %98 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %6, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %20, align 4
  %101 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %102 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %101, i32 0, i32 9
  %103 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %103, i64 %105
  %107 = call i32 @init_set_constants_param(%struct.d3dx_const_tab* %98, i32* %99, i32 %100, %struct.d3dx_parameter* %106)
  store i32 %107, i32* %18, align 4
  br label %108

108:                                              ; preds = %97, %94
  %109 = load i32, i32* %18, align 4
  %110 = call i64 @FAILED(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %13, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %74

118:                                              ; preds = %74
  %119 = load i32, i32* %19, align 4
  %120 = call i64 @FAILED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* %19, align 4
  store i32 %123, i32* %5, align 4
  br label %342

124:                                              ; preds = %118
  %125 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %6, align 8
  %126 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %127 = load i32, i32* %21, align 4
  %128 = call i32 @merge_const_set_entries(%struct.d3dx_const_tab* %125, %struct.d3dx_parameter* %126, i32 %127)
  store i32 %128, i32* %5, align 4
  br label %342

129:                                              ; preds = %66
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @debugstr_a(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %134, i32 %136, i32 %138, i32 %140)
  %142 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %143 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @debugstr_a(i32 %144)
  %146 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %147 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %150 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %153 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %156 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %159 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %145, i32 %148, i32 %151, i32 %154, i32 %157, i32 %160)
  %162 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 0
  store i32 1, i32* %162, align 8
  %163 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %164 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 6
  store %struct.d3dx_parameter* %163, %struct.d3dx_parameter** %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 5
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @shad_regset2table, align 4
  %171 = call i32 @ARRAY_SIZE(i32 %170)
  %172 = icmp sge i32 %169, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %129
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %177, i32* %5, align 4
  br label %342

178:                                              ; preds = %129
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 4
  store i32 %180, i32* %181, align 8
  %182 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %6, align 8
  %183 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %184, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 1
  store i64 %189, i64* %190, align 8
  %191 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @PRES_REGTAB_COUNT, align 8
  %194 = icmp uge i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %178
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %198)
  %200 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %200, i32* %5, align 4
  br label %342

201:                                              ; preds = %178
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_info, align 8
  %203 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp eq i64 %208, 4
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  %212 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %213 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %216 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %219 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %217, %220
  %222 = sdiv i32 %214, %221
  %223 = sext i32 %222 to i64
  %224 = icmp eq i64 %223, 4
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 3
  store i32 %228, i32* %229, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_info, align 8
  %231 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %17, align 4
  %236 = call i32 @get_const_upload_info(%struct.d3dx_const_param_eval_output* %15, %struct.const_upload_info* %16)
  %237 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %201
  %241 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %242 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @debugstr_a(i32 %243)
  %245 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* @D3D_OK, align 4
  store i32 %246, i32* %5, align 4
  br label %342

247:                                              ; preds = %201
  %248 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %249 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @table_type_from_param_type(i32 %250)
  %252 = sext i32 %251 to i64
  %253 = load i64, i64* @PRES_VT_COUNT, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %247
  %256 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %256, i32* %5, align 4
  br label %342

257:                                              ; preds = %247
  %258 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %259 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @table_type_from_param_type(i32 %260)
  %262 = load i32, i32* %17, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %293

264:                                              ; preds = %257
  %265 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %293, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %270, %272
  br i1 %273, label %274, label %293

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @get_offset_reg(i64 %278, i32 %280)
  %282 = icmp eq i32 %276, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %274
  %284 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = mul i64 %286, 4
  %288 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %289 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = icmp ule i64 %287, %291
  br label %293

293:                                              ; preds = %283, %274, %268, %264, %257
  %294 = phi i1 [ false, %274 ], [ false, %268 ], [ false, %264 ], [ false, %257 ], [ %292, %283 ]
  %295 = zext i1 %294 to i32
  %296 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 2
  store i32 %295, i32* %296, align 8
  %297 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %293
  %301 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %15, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %314, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %304
  %309 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %310 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @debugstr_a(i32 %311)
  %313 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0), i32 %312)
  br label %314

314:                                              ; preds = %308, %304, %300, %293
  %315 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 3
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = icmp sgt i64 %316, %318
  br i1 %319, label %330, label %320

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = icmp eq i64 %322, %324
  br i1 %325, label %326, label %333

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %16, i32 0, i32 5
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %326, %314
  %331 = call i32 @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %332 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %332, i32* %5, align 4
  br label %342

333:                                              ; preds = %326, %320
  %334 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %6, align 8
  %335 = call i32 @append_const_set(%struct.d3dx_const_tab* %334, %struct.d3dx_const_param_eval_output* %15)
  store i32 %335, i32* %18, align 4
  %336 = call i64 @FAILED(i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = load i32, i32* %18, align 4
  store i32 %339, i32* %5, align 4
  br label %342

340:                                              ; preds = %333
  %341 = load i32, i32* @D3D_OK, align 4
  store i32 %341, i32* %5, align 4
  br label %342

342:                                              ; preds = %340, %338, %330, %255, %240, %195, %173, %124, %122, %61, %45, %27
  %343 = load i32, i32* %5, align 4
  ret i32 %343
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @get_ctab_constant_desc(i32*, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @ID3DXConstantTable_GetConstantElement(i32*, i32, i32) #1

declare dso_local i32 @ID3DXConstantTable_GetConstant(i32*, i32, i32) #1

declare dso_local i32 @merge_const_set_entries(%struct.d3dx_const_tab*, %struct.d3dx_parameter*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_const_upload_info(%struct.d3dx_const_param_eval_output*, %struct.const_upload_info*) #1

declare dso_local i32 @table_type_from_param_type(i32) #1

declare dso_local i32 @get_offset_reg(i64, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @append_const_set(%struct.d3dx_const_tab*, %struct.d3dx_const_param_eval_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
