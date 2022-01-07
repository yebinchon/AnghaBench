; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_parse_preshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_parse_preshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.d3dx_preshader = type { i32, %struct.TYPE_20__, %struct.TYPE_13__*, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_18__, %struct.TYPE_16__*, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.d3dx9_base_effect = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Preshader version %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unexpected end of byte code buffer.\0A\00", align 1
@D3DXERR_INVALIDDATA = common dso_local global i32 0, align 4
@FOURCC_CLIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Byte code buffer ends unexpectedly.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%u double constants.\0A\00", align 1
@FOURCC_FXLC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not find preshader code.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid instruction count %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%u instructions.\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@pres_regset2table = common dso_local global i32 0, align 4
@PRES_REGTAB_IMMED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"const_count %u is not a multiple of %u.\0A\00", align 1
@pres_op_info = common dso_local global %struct.TYPE_21__* null, align 8
@PRES_REGTAB_COUNT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [91 x i8] c"Out of bounds register index, i %u, j %u, table %u, reg_idx %u, preshader parsing failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_preshader*, i32*, i32, %struct.d3dx9_base_effect*)* @parse_preshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_preshader(%struct.d3dx_preshader* %0, i32* %1, i32 %2, %struct.d3dx9_base_effect* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dx_preshader*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.d3dx9_base_effect*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.d3dx_preshader* %0, %struct.d3dx_preshader** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.d3dx9_base_effect* %3, %struct.d3dx9_base_effect** %9, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 65535
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %30, i32* %5, align 4
  br label %413

31:                                               ; preds = %4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %8, align 4
  %35 = sub i32 %34, 1
  %36 = load i32, i32* @FOURCC_CLIT, align 4
  %37 = call i32* @find_bytecode_comment(i32* %33, i32 %35, i32 %36, i32* %17)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  %43 = load i32, i32* %41, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = load i32, i32* %17, align 4
  %47 = sub i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = udiv i64 %48, 2
  %50 = icmp ugt i64 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %413

54:                                               ; preds = %40
  %55 = load i32*, i32** %10, align 8
  %56 = bitcast i32* %55 to double*
  store double* %56, double** %14, align 8
  br label %58

57:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  store double* null, double** %14, align 8
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %8, align 4
  %64 = sub i32 %63, 1
  %65 = load i32, i32* @FOURCC_FXLC, align 4
  %66 = call i32* @find_bytecode_comment(i32* %62, i32 %64, i32 %65, i32* %17)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* @D3D_OK, align 4
  store i32 %71, i32* %5, align 4
  br label %413

72:                                               ; preds = %58
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %10, align 8
  %75 = load i32, i32* %73, align 4
  %76 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %77 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %17, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %17, align 4
  %80 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %81 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i32, i32* @UINT_MAX, align 4
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 40
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %72
  %89 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %90 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %93, i32* %5, align 4
  br label %413

94:                                               ; preds = %72
  %95 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %96 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = call i32 (...) @GetProcessHeap()
  %100 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %101 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %102 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 40, %104
  %106 = trunc i64 %105 to i32
  %107 = call %struct.TYPE_13__* @HeapAlloc(i32 %99, i32 %100, i32 %106)
  %108 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %109 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %108, i32 0, i32 2
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %109, align 8
  %110 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %111 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %110, i32 0, i32 2
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = icmp ne %struct.TYPE_13__* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %94
  %115 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %115, i32* %5, align 4
  br label %413

116:                                              ; preds = %94
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %149, %116
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %120 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %152

123:                                              ; preds = %117
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %127 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %126, i32 0, i32 2
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %130
  %132 = call i32* @parse_pres_ins(i32* %124, i32 %125, %struct.TYPE_13__* %131)
  store i32* %132, i32** %18, align 8
  %133 = load i32*, i32** %18, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %123
  %136 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %136, i32* %5, align 4
  br label %413

137:                                              ; preds = %123
  %138 = load i32*, i32** %18, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = load i32, i32* %17, align 4
  %145 = zext i32 %144 to i64
  %146 = sub nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %17, align 4
  %148 = load i32*, i32** %18, align 8
  store i32* %148, i32** %10, align 8
  br label %149

149:                                              ; preds = %137
  %150 = load i32, i32* %11, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %117

152:                                              ; preds = %117
  %153 = load i32, i32* @pres_regset2table, align 4
  %154 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %155 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %16, align 4
  %159 = load i32*, i32** %7, align 8
  store i32 -131072, i32* %159, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %162 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %161, i32 0, i32 3
  %163 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %9, align 8
  %164 = call i32 @get_constants_desc(i32* %160, %struct.TYPE_19__* %162, %struct.d3dx9_base_effect* %163, i32* null, i32 0, i32* null)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load i32*, i32** %7, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %15, align 4
  %168 = call i64 @FAILED(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %152
  %171 = load i32, i32* %15, align 4
  store i32 %171, i32* %5, align 4
  br label %413

172:                                              ; preds = %152
  %173 = load i32, i32* %13, align 4
  %174 = load i64, i64* @PRES_REGTAB_IMMED, align 8
  %175 = call i32 @get_reg_components(i64 %174)
  %176 = urem i32 %173, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load i32, i32* %13, align 4
  %180 = load i64, i64* @PRES_REGTAB_IMMED, align 8
  %181 = call i32 @get_reg_components(i64 %180)
  %182 = call i32 (i8*, i32, i32, ...) @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %179, i32 %181)
  %183 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %183, i32* %5, align 4
  br label %413

184:                                              ; preds = %172
  %185 = load i64, i64* @PRES_REGTAB_IMMED, align 8
  %186 = trunc i64 %185 to i32
  %187 = load i32, i32* %13, align 4
  %188 = call i8* @get_reg_offset(i32 %186, i32 %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %191 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @PRES_REGTAB_IMMED, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 %189, i32* %195, align 4
  %196 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %197 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %201 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %200, i32 0, i32 3
  %202 = call i32 @update_table_sizes_consts(i32* %199, %struct.TYPE_19__* %201)
  store i32 0, i32* %11, align 4
  br label %203

203:                                              ; preds = %393, %184
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %206 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ult i32 %204, %207
  br i1 %208, label %209, label %396

209:                                              ; preds = %203
  store i32 0, i32* %12, align 4
  br label %210

210:                                              ; preds = %353, %209
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** @pres_op_info, align 8
  %213 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %214 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %213, i32 0, i32 2
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ult i32 %211, %223
  br i1 %224, label %225, label %356

225:                                              ; preds = %210
  %226 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %227 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %226, i32 0, i32 2
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = load i32, i32* %12, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @PRES_REGTAB_COUNT, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %301

242:                                              ; preds = %225
  %243 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %244 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %243, i32 0, i32 2
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %242
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  br label %266

256:                                              ; preds = %252, %242
  %257 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %258 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %257, i32 0, i32 2
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = sub nsw i32 %264, 1
  br label %266

266:                                              ; preds = %256, %255
  %267 = phi i32 [ 0, %255 ], [ %265, %256 ]
  store i32 %267, i32* %21, align 4
  %268 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %269 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %268, i32 0, i32 2
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = load i32, i32* %11, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %274, align 8
  %276 = load i32, i32* %12, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  store i32 %281, i32* %19, align 4
  %282 = load i32, i32* %19, align 4
  %283 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %284 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %283, i32 0, i32 2
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %21, align 4
  %298 = add i32 %296, %297
  %299 = call i8* @get_reg_offset(i32 %282, i32 %298)
  %300 = ptrtoint i8* %299 to i32
  store i32 %300, i32* %20, align 4
  br label %334

301:                                              ; preds = %225
  %302 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %303 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %302, i32 0, i32 2
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %303, align 8
  %305 = load i32, i32* %11, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 3
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = load i32, i32* %12, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %19, align 4
  %317 = load i32, i32* %19, align 4
  %318 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %319 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %318, i32 0, i32 2
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %319, align 8
  %321 = load i32, i32* %11, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 3
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %324, align 8
  %326 = load i32, i32* %12, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = call i8* @get_reg_offset(i32 %317, i32 %331)
  %333 = ptrtoint i8* %332 to i32
  store i32 %333, i32* %20, align 4
  br label %334

334:                                              ; preds = %301, %266
  %335 = load i32, i32* %20, align 4
  %336 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %337 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %19, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = icmp uge i32 %335, %343
  br i1 %344, label %345, label %352

345:                                              ; preds = %334
  %346 = load i32, i32* %11, align 4
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* %19, align 4
  %349 = load i32, i32* %20, align 4
  %350 = call i32 (i8*, i32, i32, ...) @FIXME(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.8, i64 0, i64 0), i32 %346, i32 %347, i32 %348, i32 %349)
  %351 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %351, i32* %5, align 4
  br label %413

352:                                              ; preds = %334
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %12, align 4
  %355 = add i32 %354, 1
  store i32 %355, i32* %12, align 4
  br label %210

356:                                              ; preds = %210
  %357 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %358 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %362 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %361, i32 0, i32 2
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %362, align 8
  %364 = load i32, i32* %11, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %372 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %371, i32 0, i32 2
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %372, align 8
  %374 = load i32, i32* %11, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %382 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %381, i32 0, i32 2
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %382, align 8
  %384 = load i32, i32* %11, align 4
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = call i8* @get_reg_offset(i32 %380, i32 %390)
  %392 = call i32 @update_table_size(i32* %360, i32 %370, i8* %391)
  br label %393

393:                                              ; preds = %356
  %394 = load i32, i32* %11, align 4
  %395 = add i32 %394, 1
  store i32 %395, i32* %11, align 4
  br label %203

396:                                              ; preds = %203
  %397 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %398 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %397, i32 0, i32 1
  %399 = load i64, i64* @PRES_REGTAB_IMMED, align 8
  %400 = call i32 @regstore_alloc_table(%struct.TYPE_20__* %398, i64 %399)
  %401 = call i64 @FAILED(i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %396
  %404 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %404, i32* %5, align 4
  br label %413

405:                                              ; preds = %396
  %406 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %6, align 8
  %407 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %406, i32 0, i32 1
  %408 = load i64, i64* @PRES_REGTAB_IMMED, align 8
  %409 = load double*, double** %14, align 8
  %410 = load i32, i32* %13, align 4
  %411 = call i32 @regstore_set_values(%struct.TYPE_20__* %407, i64 %408, double* %409, i32 0, i32 %410)
  %412 = load i32, i32* @D3D_OK, align 4
  store i32 %412, i32* %5, align 4
  br label %413

413:                                              ; preds = %405, %403, %345, %178, %170, %135, %114, %88, %69, %51, %28
  %414 = load i32, i32* %5, align 4
  ret i32 %414
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32* @find_bytecode_comment(i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @parse_pres_ins(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @get_constants_desc(i32*, %struct.TYPE_19__*, %struct.d3dx9_base_effect*, i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @get_reg_components(i64) #1

declare dso_local i32 @FIXME(i8*, i32, i32, ...) #1

declare dso_local i8* @get_reg_offset(i32, i32) #1

declare dso_local i32 @update_table_sizes_consts(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @update_table_size(i32*, i32, i8*) #1

declare dso_local i32 @regstore_alloc_table(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @regstore_set_values(%struct.TYPE_20__*, i64, double*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
