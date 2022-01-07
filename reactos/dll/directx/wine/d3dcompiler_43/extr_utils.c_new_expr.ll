; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_expr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_expr = type { i32, %struct.hlsl_ir_node**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hlsl_type*, %struct.source_location, i32 }
%struct.hlsl_type = type { i32, i32 }
%struct.source_location = type { i32 }
%struct.hlsl_ir_node = type { %struct.TYPE_4__, %struct.hlsl_type* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@HLSL_IR_EXPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Implicitly converting %s into %s in an expression\0A\00", align 1
@HLSL_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"implicit truncation of vector/matrix type\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Impossible to convert expression operand %u to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlsl_ir_expr* @new_expr(i32 %0, %struct.hlsl_ir_node** %1, %struct.source_location* %2) #0 {
  %4 = alloca %struct.hlsl_ir_expr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hlsl_ir_node**, align 8
  %7 = alloca %struct.source_location*, align 8
  %8 = alloca %struct.hlsl_ir_expr*, align 8
  %9 = alloca %struct.hlsl_type*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.hlsl_ir_node** %1, %struct.hlsl_ir_node*** %6, align 8
  store %struct.source_location* %2, %struct.source_location** %7, align 8
  %11 = call %struct.hlsl_ir_expr* @d3dcompiler_alloc(i32 32)
  store %struct.hlsl_ir_expr* %11, %struct.hlsl_ir_expr** %8, align 8
  %12 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %13 = icmp ne %struct.hlsl_ir_expr* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.hlsl_ir_expr* null, %struct.hlsl_ir_expr** %4, align 8
  br label %240

16:                                               ; preds = %3
  %17 = load i32, i32* @HLSL_IR_EXPR, align 4
  %18 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %19 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %22 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.source_location*, %struct.source_location** %7, align 8
  %25 = bitcast %struct.source_location* %23 to i8*
  %26 = bitcast %struct.source_location* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %28 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %27, i64 0
  %29 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %28, align 8
  %30 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %29, i32 0, i32 1
  %31 = load %struct.hlsl_type*, %struct.hlsl_type** %30, align 8
  store %struct.hlsl_type* %31, %struct.hlsl_type** %9, align 8
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %60, %16
  %33 = load i32, i32* %10, align 4
  %34 = icmp ule i32 %33, 2
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %36, i64 %38
  %40 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %39, align 8
  %41 = icmp ne %struct.hlsl_ir_node* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %63

43:                                               ; preds = %35
  %44 = load %struct.hlsl_type*, %struct.hlsl_type** %9, align 8
  %45 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %45, i64 %47
  %49 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %48, align 8
  %50 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %49, i32 0, i32 1
  %51 = load %struct.hlsl_type*, %struct.hlsl_type** %50, align 8
  %52 = load %struct.source_location*, %struct.source_location** %7, align 8
  %53 = call %struct.hlsl_type* @expr_common_type(%struct.hlsl_type* %44, %struct.hlsl_type* %51, %struct.source_location* %52)
  store %struct.hlsl_type* %53, %struct.hlsl_type** %9, align 8
  %54 = load %struct.hlsl_type*, %struct.hlsl_type** %9, align 8
  %55 = icmp ne %struct.hlsl_type* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %58 = call i32 @d3dcompiler_free(%struct.hlsl_ir_expr* %57)
  store %struct.hlsl_ir_expr* null, %struct.hlsl_ir_expr** %4, align 8
  br label %240

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %32

63:                                               ; preds = %42, %32
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %207, %63
  %65 = load i32, i32* %10, align 4
  %66 = icmp ule i32 %65, 2
  br i1 %66, label %67, label %210

67:                                               ; preds = %64
  %68 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %68, i64 %70
  %72 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %71, align 8
  %73 = icmp ne %struct.hlsl_ir_node* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %210

75:                                               ; preds = %67
  %76 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %76, i64 %78
  %80 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %79, align 8
  %81 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %80, i32 0, i32 1
  %82 = load %struct.hlsl_type*, %struct.hlsl_type** %81, align 8
  %83 = load %struct.hlsl_type*, %struct.hlsl_type** %9, align 8
  %84 = call i64 @compare_hlsl_types(%struct.hlsl_type* %82, %struct.hlsl_type* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %207

87:                                               ; preds = %75
  %88 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %88, i64 %90
  %92 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %91, align 8
  %93 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %92, i32 0, i32 1
  %94 = load %struct.hlsl_type*, %struct.hlsl_type** %93, align 8
  %95 = call i32 @debug_hlsl_type(%struct.hlsl_type* %94)
  %96 = load %struct.hlsl_type*, %struct.hlsl_type** %9, align 8
  %97 = call i32 @debug_hlsl_type(%struct.hlsl_type* %96)
  %98 = call i32 @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %97)
  %99 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %99, i64 %101
  %103 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %102, align 8
  %104 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %103, i32 0, i32 1
  %105 = load %struct.hlsl_type*, %struct.hlsl_type** %104, align 8
  %106 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %108, i64 %110
  %112 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %111, align 8
  %113 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %112, i32 0, i32 1
  %114 = load %struct.hlsl_type*, %struct.hlsl_type** %113, align 8
  %115 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %107, %116
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %174

119:                                              ; preds = %87
  %120 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %120, i64 %122
  %124 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %123, align 8
  %125 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %124, i32 0, i32 1
  %126 = load %struct.hlsl_type*, %struct.hlsl_type** %125, align 8
  %127 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %129, i64 %131
  %133 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %132, align 8
  %134 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %133, i32 0, i32 1
  %135 = load %struct.hlsl_type*, %struct.hlsl_type** %134, align 8
  %136 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %128, %137
  %139 = load %struct.hlsl_type*, %struct.hlsl_type** %9, align 8
  %140 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.hlsl_type*, %struct.hlsl_type** %9, align 8
  %143 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %141, %144
  %146 = icmp ne i32 %138, %145
  br i1 %146, label %147, label %174

147:                                              ; preds = %119
  %148 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %148, i64 %150
  %152 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %151, align 8
  %153 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %156, i64 %158
  %160 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %159, align 8
  %161 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %165 = load i32, i32* %10, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %164, i64 %166
  %168 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %167, align 8
  %169 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @HLSL_LEVEL_WARNING, align 4
  %173 = call i32 @hlsl_report_message(i32 %155, i32 %163, i32 %171, i32 %172, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %174

174:                                              ; preds = %147, %119, %87
  %175 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %176 = load i32, i32* %10, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %175, i64 %177
  %179 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %178, align 8
  %180 = load %struct.hlsl_type*, %struct.hlsl_type** %9, align 8
  %181 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %182 = load i32, i32* %10, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %181, i64 %183
  %185 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %184, align 8
  %186 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %185, i32 0, i32 0
  %187 = call %struct.hlsl_ir_node* @implicit_conversion(%struct.hlsl_ir_node* %179, %struct.hlsl_type* %180, %struct.TYPE_4__* %186)
  %188 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %189 = load i32, i32* %10, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %188, i64 %190
  store %struct.hlsl_ir_node* %187, %struct.hlsl_ir_node** %191, align 8
  %192 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %193 = load i32, i32* %10, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %192, i64 %194
  %196 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %195, align 8
  %197 = icmp ne %struct.hlsl_ir_node* %196, null
  br i1 %197, label %206, label %198

198:                                              ; preds = %174
  %199 = load i32, i32* %10, align 4
  %200 = add i32 %199, 1
  %201 = load %struct.hlsl_type*, %struct.hlsl_type** %9, align 8
  %202 = call i32 @debug_hlsl_type(%struct.hlsl_type* %201)
  %203 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %200, i32 %202)
  %204 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %205 = call i32 @d3dcompiler_free(%struct.hlsl_ir_expr* %204)
  store %struct.hlsl_ir_expr* null, %struct.hlsl_ir_expr** %4, align 8
  br label %240

206:                                              ; preds = %174
  br label %207

207:                                              ; preds = %206, %86
  %208 = load i32, i32* %10, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %64

210:                                              ; preds = %74, %64
  %211 = load %struct.hlsl_type*, %struct.hlsl_type** %9, align 8
  %212 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %213 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  store %struct.hlsl_type* %211, %struct.hlsl_type** %214, align 8
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %217 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %219 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %218, i64 0
  %220 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %219, align 8
  %221 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %222 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %221, i32 0, i32 1
  %223 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %222, align 8
  %224 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %223, i64 0
  store %struct.hlsl_ir_node* %220, %struct.hlsl_ir_node** %224, align 8
  %225 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %226 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %225, i64 1
  %227 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %226, align 8
  %228 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %229 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %228, i32 0, i32 1
  %230 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %229, align 8
  %231 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %230, i64 1
  store %struct.hlsl_ir_node* %227, %struct.hlsl_ir_node** %231, align 8
  %232 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %6, align 8
  %233 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %232, i64 2
  %234 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %233, align 8
  %235 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  %236 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %235, i32 0, i32 1
  %237 = load %struct.hlsl_ir_node**, %struct.hlsl_ir_node*** %236, align 8
  %238 = getelementptr inbounds %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %237, i64 2
  store %struct.hlsl_ir_node* %234, %struct.hlsl_ir_node** %238, align 8
  %239 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %8, align 8
  store %struct.hlsl_ir_expr* %239, %struct.hlsl_ir_expr** %4, align 8
  br label %240

240:                                              ; preds = %210, %198, %56, %14
  %241 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %4, align 8
  ret %struct.hlsl_ir_expr* %241
}

declare dso_local %struct.hlsl_ir_expr* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.hlsl_type* @expr_common_type(%struct.hlsl_type*, %struct.hlsl_type*, %struct.source_location*) #1

declare dso_local i32 @d3dcompiler_free(%struct.hlsl_ir_expr*) #1

declare dso_local i64 @compare_hlsl_types(%struct.hlsl_type*, %struct.hlsl_type*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debug_hlsl_type(%struct.hlsl_type*) #1

declare dso_local i32 @hlsl_report_message(i32, i32, i32, i32, i8*) #1

declare dso_local %struct.hlsl_ir_node* @implicit_conversion(%struct.hlsl_ir_node*, %struct.hlsl_type*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
