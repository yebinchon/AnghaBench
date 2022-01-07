; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_instruction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, i32, i32, i32, i32, i32*, %struct.TYPE_2__, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_sm1_opcode_info = type { i64, i32, i32 }
%struct.wined3d_sm1_data = type { i32*, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Unrecognized opcode: token=0x%08x.\0A\00", align 1
@WINED3DSIH_TABLE_SIZE = common dso_local global i64 0, align 8
@WINED3D_SM1_INSTRUCTION_FLAGS_MASK = common dso_local global i32 0, align 4
@WINED3D_SM1_INSTRUCTION_FLAGS_SHIFT = common dso_local global i32 0, align 4
@WINED3D_SM1_COISSUE = common dso_local global i32 0, align 4
@WINED3D_SM1_INSTRUCTION_PREDICATED = common dso_local global i32 0, align 4
@WINED3DSIH_DCL = common dso_local global i64 0, align 8
@WINED3DSIH_DEF = common dso_local global i64 0, align 8
@WINED3D_IMMCONST_VEC4 = common dso_local global i32 0, align 4
@WINED3D_DATA_FLOAT = common dso_local global i32 0, align 4
@WINED3DSIH_DEFB = common dso_local global i64 0, align 8
@WINED3D_IMMCONST_SCALAR = common dso_local global i32 0, align 4
@WINED3D_DATA_UINT = common dso_local global i32 0, align 4
@WINED3DSIH_DEFI = common dso_local global i64 0, align 8
@WINED3D_DATA_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32**, %struct.wined3d_shader_instruction*)* @shader_sm1_read_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm1_read_instruction(i8* %0, i32** %1, %struct.wined3d_shader_instruction* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.wined3d_shader_instruction*, align 8
  %7 = alloca %struct.wined3d_sm1_opcode_info*, align 8
  %8 = alloca %struct.wined3d_sm1_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.wined3d_shader_instruction* %2, %struct.wined3d_shader_instruction** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.wined3d_sm1_data*
  store %struct.wined3d_sm1_data* %13, %struct.wined3d_sm1_data** %8, align 8
  %14 = load i32**, i32*** %5, align 8
  %15 = call i32 @shader_sm1_read_comment(i32** %14)
  %16 = load i32**, i32*** %5, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %16, align 8
  %19 = load i32, i32* %17, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.wined3d_sm1_opcode_info* @shader_get_opcode(%struct.wined3d_sm1_data* %20, i32 %21)
  store %struct.wined3d_sm1_opcode_info* %22, %struct.wined3d_sm1_opcode_info** %7, align 8
  %23 = icmp ne %struct.wined3d_sm1_opcode_info* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* @WINED3DSIH_TABLE_SIZE, align 8
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @shader_skip_unrecognized(%struct.wined3d_sm1_data* %30, i32* %32)
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %34, align 8
  br label %233

38:                                               ; preds = %3
  %39 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %40 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @WINED3D_SM1_INSTRUCTION_FLAGS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @WINED3D_SM1_INSTRUCTION_FLAGS_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @WINED3D_SM1_COISSUE, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %55 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @WINED3D_SM1_INSTRUCTION_PREDICATED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %62 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %61, i32 0, i32 3
  br label %64

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32* [ %62, %60 ], [ null, %63 ]
  %66 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %66, i32 0, i32 5
  store i32* %65, i32** %67, align 8
  %68 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %69 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %75 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %77 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %76, i32 0, i32 5
  %78 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %78, i32 0, i32 9
  store i32* %77, i32** %79, align 8
  %80 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %81 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %84 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sub i32 %82, %85
  %87 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %88 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %90 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %93 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %92, i32 0, i32 8
  store i32* %91, i32** %93, align 8
  %94 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %95 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %94, i32 0, i32 7
  %96 = call i32 @memset(i32* %95, i32 0, i32 4)
  %97 = load i32**, i32*** %5, align 8
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %11, align 8
  %99 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %100 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @shader_skip_opcode(%struct.wined3d_sm1_data* %99, %struct.wined3d_sm1_opcode_info* %100, i32 %101)
  %103 = load i32**, i32*** %5, align 8
  %104 = load i32*, i32** %103, align 8
  %105 = sext i32 %102 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %103, align 8
  %107 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %108 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @WINED3DSIH_DCL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %64
  %113 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %114 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @shader_sm1_read_semantic(i32** %11, i32* %115)
  br label %230

117:                                              ; preds = %64
  %118 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %119 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @WINED3DSIH_DEF, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %125 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %126 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %125, i32 0, i32 5
  %127 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %128 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %127, i32 0, i32 4
  %129 = call i32 @shader_sm1_read_dst_param(%struct.wined3d_sm1_data* %124, i32** %11, i32* %126, i32* %128)
  %130 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %131 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* @WINED3D_IMMCONST_VEC4, align 4
  %135 = load i32, i32* @WINED3D_DATA_FLOAT, align 4
  %136 = call i32 @shader_sm1_read_immconst(i32** %11, i32* %133, i32 %134, i32 %135)
  br label %229

137:                                              ; preds = %117
  %138 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %139 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @WINED3DSIH_DEFB, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %137
  %144 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %145 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %146 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %145, i32 0, i32 5
  %147 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %148 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %147, i32 0, i32 4
  %149 = call i32 @shader_sm1_read_dst_param(%struct.wined3d_sm1_data* %144, i32** %11, i32* %146, i32* %148)
  %150 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %151 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* @WINED3D_IMMCONST_SCALAR, align 4
  %155 = load i32, i32* @WINED3D_DATA_UINT, align 4
  %156 = call i32 @shader_sm1_read_immconst(i32** %11, i32* %153, i32 %154, i32 %155)
  br label %228

157:                                              ; preds = %137
  %158 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %159 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @WINED3DSIH_DEFI, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %165 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %166 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %165, i32 0, i32 5
  %167 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %168 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %167, i32 0, i32 4
  %169 = call i32 @shader_sm1_read_dst_param(%struct.wined3d_sm1_data* %164, i32** %11, i32* %166, i32* %168)
  %170 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %171 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* @WINED3D_IMMCONST_VEC4, align 4
  %175 = load i32, i32* @WINED3D_DATA_INT, align 4
  %176 = call i32 @shader_sm1_read_immconst(i32** %11, i32* %173, i32 %174, i32 %175)
  br label %227

177:                                              ; preds = %157
  %178 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %179 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %184 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %185 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %184, i32 0, i32 5
  %186 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %187 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %186, i32 0, i32 4
  %188 = call i32 @shader_sm1_read_dst_param(%struct.wined3d_sm1_data* %183, i32** %11, i32* %185, i32* %187)
  br label %189

189:                                              ; preds = %182, %177
  %190 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %191 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %196 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %197 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %196, i32 0, i32 3
  %198 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %199 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %198, i32 0, i32 2
  %200 = call i32 @shader_sm1_read_src_param(%struct.wined3d_sm1_data* %195, i32** %11, i32* %197, i32* %199)
  br label %201

201:                                              ; preds = %194, %189
  store i32 0, i32* %10, align 4
  br label %202

202:                                              ; preds = %223, %201
  %203 = load i32, i32* %10, align 4
  %204 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %205 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = icmp ult i32 %203, %206
  br i1 %207, label %208, label %226

208:                                              ; preds = %202
  %209 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %210 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %211 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %8, align 8
  %217 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = call i32 @shader_sm1_read_src_param(%struct.wined3d_sm1_data* %209, i32** %11, i32* %215, i32* %221)
  br label %223

223:                                              ; preds = %208
  %224 = load i32, i32* %10, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %10, align 4
  br label %202

226:                                              ; preds = %202
  br label %227

227:                                              ; preds = %226, %163
  br label %228

228:                                              ; preds = %227, %143
  br label %229

229:                                              ; preds = %228, %123
  br label %230

230:                                              ; preds = %229, %112
  %231 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %232 = call i32 @shader_sm1_validate_instruction(%struct.wined3d_shader_instruction* %231)
  br label %233

233:                                              ; preds = %230, %24
  ret void
}

declare dso_local i32 @shader_sm1_read_comment(i32**) #1

declare dso_local %struct.wined3d_sm1_opcode_info* @shader_get_opcode(%struct.wined3d_sm1_data*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_skip_unrecognized(%struct.wined3d_sm1_data*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @shader_skip_opcode(%struct.wined3d_sm1_data*, %struct.wined3d_sm1_opcode_info*, i32) #1

declare dso_local i32 @shader_sm1_read_semantic(i32**, i32*) #1

declare dso_local i32 @shader_sm1_read_dst_param(%struct.wined3d_sm1_data*, i32**, i32*, i32*) #1

declare dso_local i32 @shader_sm1_read_immconst(i32**, i32*, i32, i32) #1

declare dso_local i32 @shader_sm1_read_src_param(%struct.wined3d_sm1_data*, i32**, i32*, i32*) #1

declare dso_local i32 @shader_sm1_validate_instruction(%struct.wined3d_shader_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
