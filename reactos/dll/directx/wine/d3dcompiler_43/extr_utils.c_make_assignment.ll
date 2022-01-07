; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_make_assignment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_make_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_node = type { i64, %struct.TYPE_5__, %struct.hlsl_type* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.hlsl_type = type { i64, i32, i32, i32 }
%struct.hlsl_ir_assignment = type { i32, %struct.hlsl_ir_node, %struct.hlsl_ir_node*, %struct.hlsl_ir_node* }
%struct.hlsl_ir_deref = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Creating proper assignment expression.\0A\00", align 1
@BWRITERSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@HLSL_CLASS_LAST_NUMERIC = common dso_local global i64 0, align 8
@HLSL_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"writemask on a non scalar/vector/matrix type\00", align 1
@HLSL_CLASS_MATRIX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [72 x i8] c"Assignments with writemasks and matrices on lhs are not supported yet.\0A\00", align 1
@HLSL_CLASS_SCALAR = common dso_local global i32 0, align 4
@HLSL_IR_ASSIGNMENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Check for casts in the lhs.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"can't implicitly convert %s to %s\00", align 1
@HLSL_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"implicit truncation of vector type\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Couldn't implicitly convert expression to %s.\0A\00", align 1
@ASSIGN_OP_ASSIGN = common dso_local global i32 0, align 4
@HLSL_IR_DEREF = common dso_local global i64 0, align 8
@HLSL_IR_DEREF_VAR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [59 x i8] c"LHS expression not supported in compound assignments yet.\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Adding an expression for the compound assignment.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlsl_ir_node* @make_assignment(%struct.hlsl_ir_node* %0, i32 %1, i32 %2, %struct.hlsl_ir_node* %3) #0 {
  %5 = alloca %struct.hlsl_ir_node*, align 8
  %6 = alloca %struct.hlsl_ir_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hlsl_ir_node*, align 8
  %10 = alloca %struct.hlsl_ir_assignment*, align 8
  %11 = alloca %struct.hlsl_type*, align 8
  %12 = alloca %struct.hlsl_ir_node*, align 8
  %13 = alloca %struct.hlsl_ir_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hlsl_ir_node*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.hlsl_ir_node*, align 8
  %20 = alloca %struct.hlsl_ir_deref*, align 8
  %21 = alloca %struct.hlsl_ir_deref*, align 8
  %22 = alloca { i64, i32 }, align 8
  store %struct.hlsl_ir_node* %0, %struct.hlsl_ir_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hlsl_ir_node* %3, %struct.hlsl_ir_node** %9, align 8
  %23 = call %struct.hlsl_ir_assignment* @d3dcompiler_alloc(i32 56)
  store %struct.hlsl_ir_assignment* %23, %struct.hlsl_ir_assignment** %10, align 8
  %24 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %25 = icmp ne %struct.hlsl_ir_assignment* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.hlsl_ir_node* null, %struct.hlsl_ir_node** %5, align 8
  br label %297

28:                                               ; preds = %4
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %9, align 8
  store %struct.hlsl_ir_node* %30, %struct.hlsl_ir_node** %13, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %36 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %35, i32 0, i32 2
  %37 = load %struct.hlsl_type*, %struct.hlsl_type** %36, align 8
  store %struct.hlsl_type* %37, %struct.hlsl_type** %11, align 8
  br label %117

38:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  %39 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %40 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %39, i32 0, i32 2
  %41 = load %struct.hlsl_type*, %struct.hlsl_type** %40, align 8
  %42 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %38
  %47 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %48 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %52 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %56 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HLSL_LEVEL_ERROR, align 4
  %60 = call i32 (i32, i32, i32, i32, i8*, ...) @hlsl_report_message(i32 %50, i32 %54, i32 %58, i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %62 = call i32 @d3dcompiler_free(%struct.hlsl_ir_assignment* %61)
  store %struct.hlsl_ir_node* null, %struct.hlsl_ir_node** %5, align 8
  br label %297

63:                                               ; preds = %38
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %66 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %65, i32 0, i32 2
  %67 = load %struct.hlsl_type*, %struct.hlsl_type** %66, align 8
  %68 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %64, %71
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %83, %63
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %15, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %73

86:                                               ; preds = %73
  %87 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %88 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %87, i32 0, i32 2
  %89 = load %struct.hlsl_type*, %struct.hlsl_type** %88, align 8
  %90 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = call i32 @FIXME(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %86
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @HLSL_CLASS_SCALAR, align 4
  store i32 %100, i32* %16, align 4
  br label %108

101:                                              ; preds = %96
  %102 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %103 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %102, i32 0, i32 2
  %104 = load %struct.hlsl_type*, %struct.hlsl_type** %103, align 8
  %105 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %101, %99
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %111 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %110, i32 0, i32 2
  %112 = load %struct.hlsl_type*, %struct.hlsl_type** %111, align 8
  %113 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call %struct.hlsl_type* @new_hlsl_type(i32* null, i32 %109, i32 %114, i32 %115, i32 1)
  store %struct.hlsl_type* %116, %struct.hlsl_type** %11, align 8
  br label %117

117:                                              ; preds = %108, %34
  %118 = load i64, i64* @HLSL_IR_ASSIGNMENT, align 8
  %119 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %120 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  %122 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %123 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %123, i32 0, i32 1
  %125 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %126 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %125, i32 0, i32 1
  %127 = bitcast %struct.TYPE_5__* %124 to i8*
  %128 = bitcast %struct.TYPE_5__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 12, i1 false)
  %129 = load %struct.hlsl_type*, %struct.hlsl_type** %11, align 8
  %130 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %131 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %131, i32 0, i32 2
  store %struct.hlsl_type* %129, %struct.hlsl_type** %132, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %135 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %137 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  store %struct.hlsl_ir_node* %137, %struct.hlsl_ir_node** %12, align 8
  %138 = load %struct.hlsl_type*, %struct.hlsl_type** %11, align 8
  %139 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %140 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %139, i32 0, i32 2
  %141 = load %struct.hlsl_type*, %struct.hlsl_type** %140, align 8
  %142 = call i32 @compare_hlsl_types(%struct.hlsl_type* %138, %struct.hlsl_type* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %237, label %144

144:                                              ; preds = %117
  %145 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %146 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %145, i32 0, i32 2
  %147 = load %struct.hlsl_type*, %struct.hlsl_type** %146, align 8
  %148 = load %struct.hlsl_type*, %struct.hlsl_type** %11, align 8
  %149 = call i32 @implicit_compatible_data_types(%struct.hlsl_type* %147, %struct.hlsl_type* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %178, label %151

151:                                              ; preds = %144
  %152 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %153 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %157 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %161 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @HLSL_LEVEL_ERROR, align 4
  %165 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %166 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %165, i32 0, i32 2
  %167 = load %struct.hlsl_type*, %struct.hlsl_type** %166, align 8
  %168 = call i32 @debug_hlsl_type(%struct.hlsl_type* %167)
  %169 = load %struct.hlsl_type*, %struct.hlsl_type** %11, align 8
  %170 = call i32 @debug_hlsl_type(%struct.hlsl_type* %169)
  %171 = call i32 (i32, i32, i32, i32, i8*, ...) @hlsl_report_message(i32 %155, i32 %159, i32 %163, i32 %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32 %170)
  %172 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %12, align 8
  %173 = call i32 @free_instr(%struct.hlsl_ir_node* %172)
  %174 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %175 = call i32 @free_instr(%struct.hlsl_ir_node* %174)
  %176 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %177 = call i32 @d3dcompiler_free(%struct.hlsl_ir_assignment* %176)
  store %struct.hlsl_ir_node* null, %struct.hlsl_ir_node** %5, align 8
  br label %297

178:                                              ; preds = %144
  %179 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %12, align 8
  %180 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %179, i32 0, i32 2
  %181 = load %struct.hlsl_type*, %struct.hlsl_type** %180, align 8
  %182 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %12, align 8
  %185 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %184, i32 0, i32 2
  %186 = load %struct.hlsl_type*, %struct.hlsl_type** %185, align 8
  %187 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %183, %188
  %190 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %191 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %190, i32 0, i32 2
  %192 = load %struct.hlsl_type*, %struct.hlsl_type** %191, align 8
  %193 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %196 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %195, i32 0, i32 2
  %197 = load %struct.hlsl_type*, %struct.hlsl_type** %196, align 8
  %198 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %194, %199
  %201 = icmp slt i32 %189, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %178
  %203 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %204 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %208 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %212 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @HLSL_LEVEL_WARNING, align 4
  %216 = call i32 (i32, i32, i32, i32, i8*, ...) @hlsl_report_message(i32 %206, i32 %210, i32 %214, i32 %215, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %217

217:                                              ; preds = %202, %178
  %218 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %219 = load %struct.hlsl_type*, %struct.hlsl_type** %11, align 8
  %220 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %221 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %220, i32 0, i32 1
  %222 = call %struct.hlsl_ir_node* @implicit_conversion(%struct.hlsl_ir_node* %218, %struct.hlsl_type* %219, %struct.TYPE_5__* %221)
  store %struct.hlsl_ir_node* %222, %struct.hlsl_ir_node** %17, align 8
  %223 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %17, align 8
  %224 = icmp ne %struct.hlsl_ir_node* %223, null
  br i1 %224, label %235, label %225

225:                                              ; preds = %217
  %226 = load %struct.hlsl_type*, %struct.hlsl_type** %11, align 8
  %227 = call i32 @debug_hlsl_type(%struct.hlsl_type* %226)
  %228 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %227)
  %229 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %12, align 8
  %230 = call i32 @free_instr(%struct.hlsl_ir_node* %229)
  %231 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %232 = call i32 @free_instr(%struct.hlsl_ir_node* %231)
  %233 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %234 = call i32 @d3dcompiler_free(%struct.hlsl_ir_assignment* %233)
  store %struct.hlsl_ir_node* null, %struct.hlsl_ir_node** %5, align 8
  br label %297

235:                                              ; preds = %217
  %236 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %17, align 8
  store %struct.hlsl_ir_node* %236, %struct.hlsl_ir_node** %13, align 8
  br label %237

237:                                              ; preds = %235, %117
  %238 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %12, align 8
  %239 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %240 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %239, i32 0, i32 3
  store %struct.hlsl_ir_node* %238, %struct.hlsl_ir_node** %240, align 8
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @ASSIGN_OP_ASSIGN, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %290

244:                                              ; preds = %237
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @op_from_assignment(i32 %245)
  store i32 %246, i32* %18, align 4
  %247 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %12, align 8
  %248 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @HLSL_IR_DEREF, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %259, label %252

252:                                              ; preds = %244
  %253 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %12, align 8
  %254 = call %struct.hlsl_ir_deref* @deref_from_node(%struct.hlsl_ir_node* %253)
  %255 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @HLSL_IR_DEREF_VAR, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %252, %244
  %260 = call i32 @FIXME(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %261 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %262 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %263 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %262, i32 0, i32 2
  store %struct.hlsl_ir_node* %261, %struct.hlsl_ir_node** %263, align 8
  br label %289

264:                                              ; preds = %252
  %265 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %12, align 8
  %266 = call %struct.hlsl_ir_deref* @deref_from_node(%struct.hlsl_ir_node* %265)
  store %struct.hlsl_ir_deref* %266, %struct.hlsl_ir_deref** %20, align 8
  %267 = call i32 @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %268 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %20, align 8
  %269 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call %struct.hlsl_ir_deref* @new_var_deref(i32 %271)
  store %struct.hlsl_ir_deref* %272, %struct.hlsl_ir_deref** %21, align 8
  %273 = load i32, i32* %18, align 4
  %274 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %21, align 8
  %275 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %274, i32 0, i32 1
  %276 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %277 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %6, align 8
  %278 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %277, i32 0, i32 1
  %279 = bitcast { i64, i32 }* %22 to i8*
  %280 = bitcast %struct.TYPE_5__* %278 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %279, i8* align 8 %280, i64 12, i1 false)
  %281 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call %struct.hlsl_ir_node* @new_binary_expr(i32 %273, i32* %275, %struct.hlsl_ir_node* %276, i64 %282, i32 %284)
  store %struct.hlsl_ir_node* %285, %struct.hlsl_ir_node** %19, align 8
  %286 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %19, align 8
  %287 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %288 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %287, i32 0, i32 2
  store %struct.hlsl_ir_node* %286, %struct.hlsl_ir_node** %288, align 8
  br label %289

289:                                              ; preds = %264, %259
  br label %294

290:                                              ; preds = %237
  %291 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %13, align 8
  %292 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %293 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %292, i32 0, i32 2
  store %struct.hlsl_ir_node* %291, %struct.hlsl_ir_node** %293, align 8
  br label %294

294:                                              ; preds = %290, %289
  %295 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %10, align 8
  %296 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %295, i32 0, i32 1
  store %struct.hlsl_ir_node* %296, %struct.hlsl_ir_node** %5, align 8
  br label %297

297:                                              ; preds = %294, %225, %151, %46, %26
  %298 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  ret %struct.hlsl_ir_node* %298
}

declare dso_local %struct.hlsl_ir_assignment* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @hlsl_report_message(i32, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @d3dcompiler_free(%struct.hlsl_ir_assignment*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local %struct.hlsl_type* @new_hlsl_type(i32*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @compare_hlsl_types(%struct.hlsl_type*, %struct.hlsl_type*) #1

declare dso_local i32 @implicit_compatible_data_types(%struct.hlsl_type*, %struct.hlsl_type*) #1

declare dso_local i32 @debug_hlsl_type(%struct.hlsl_type*) #1

declare dso_local i32 @free_instr(%struct.hlsl_ir_node*) #1

declare dso_local %struct.hlsl_ir_node* @implicit_conversion(%struct.hlsl_ir_node*, %struct.hlsl_type*, %struct.TYPE_5__*) #1

declare dso_local i32 @op_from_assignment(i32) #1

declare dso_local %struct.hlsl_ir_deref* @deref_from_node(%struct.hlsl_ir_node*) #1

declare dso_local %struct.hlsl_ir_deref* @new_var_deref(i32) #1

declare dso_local %struct.hlsl_ir_node* @new_binary_expr(i32, i32*, %struct.hlsl_ir_node*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
