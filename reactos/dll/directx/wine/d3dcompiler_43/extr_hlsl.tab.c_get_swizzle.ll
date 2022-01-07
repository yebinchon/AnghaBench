; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_get_swizzle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_get_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_swizzle = type { i32 }
%struct.hlsl_ir_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.source_location = type { i32 }

@HLSL_CLASS_MATRIX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@__const.get_swizzle.c = private unnamed_addr constant [2 x [4 x i8]] [[4 x i8] c"xyzw", [4 x i8] c"rgba"], align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlsl_ir_swizzle* (%struct.hlsl_ir_node*, i8*, %struct.source_location*)* @get_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlsl_ir_swizzle* @get_swizzle(%struct.hlsl_ir_node* %0, i8* %1, %struct.source_location* %2) #0 {
  %4 = alloca %struct.hlsl_ir_swizzle*, align 8
  %5 = alloca %struct.hlsl_ir_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.source_location*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x [4 x i8]], align 1
  %19 = alloca i32, align 4
  store %struct.hlsl_ir_node* %0, %struct.hlsl_ir_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.source_location* %2, %struct.source_location** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  %23 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %160

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 95
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %29
  store %struct.hlsl_ir_swizzle* null, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 109
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 4, i32 3
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %15, align 4
  %52 = urem i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %15, align 4
  %57 = mul i32 %56, 4
  %58 = icmp ugt i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %39
  store %struct.hlsl_ir_swizzle* null, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

60:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %150, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %154

65:                                               ; preds = %61
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 95
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store %struct.hlsl_ir_swizzle* null, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

74:                                               ; preds = %65
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 109
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store %struct.hlsl_ir_swizzle* null, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

87:                                               ; preds = %77
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 2
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = sub nsw i32 %94, 48
  store i32 %95, i32* %16, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 3
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = sub nsw i32 %102, 48
  store i32 %103, i32* %17, align 4
  br label %121

104:                                              ; preds = %74
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, 1
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = sub nsw i32 %111, 49
  store i32 %112, i32* %16, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, 2
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = sub nsw i32 %119, 49
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %104, %87
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  %124 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp uge i32 %122, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %17, align 4
  %131 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  %132 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp uge i32 %130, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129, %121
  store %struct.hlsl_ir_swizzle* null, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

138:                                              ; preds = %129
  %139 = load i32, i32* %17, align 4
  %140 = shl i32 %139, 4
  %141 = load i32, i32* %16, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* %9, align 4
  %144 = mul i32 %143, 8
  %145 = shl i32 %142, %144
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %138
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, %151
  store i32 %153, i32* %10, align 4
  br label %61

154:                                              ; preds = %61
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  %158 = load %struct.source_location*, %struct.source_location** %7, align 8
  %159 = call %struct.hlsl_ir_swizzle* @new_swizzle(i32 %155, i32 %156, %struct.hlsl_ir_node* %157, %struct.source_location* %158)
  store %struct.hlsl_ir_swizzle* %159, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

160:                                              ; preds = %3
  %161 = load i32, i32* %8, align 4
  %162 = icmp ugt i32 %161, 4
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store %struct.hlsl_ir_swizzle* null, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

164:                                              ; preds = %160
  store i32 0, i32* %11, align 4
  br label %165

165:                                              ; preds = %236, %164
  %166 = load i32, i32* %11, align 4
  %167 = icmp ult i32 %166, 2
  br i1 %167, label %168, label %239

168:                                              ; preds = %165
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %13, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %223, %168
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %174, label %226

174:                                              ; preds = %170
  %175 = bitcast [2 x [4 x i8]]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %175, i8* align 1 getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @__const.get_swizzle.c, i32 0, i32 0, i32 0), i64 8, i1 false)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %19, align 4
  br label %176

176:                                              ; preds = %197, %174
  %177 = load i32, i32* %19, align 4
  %178 = icmp ult i32 %177, 4
  br i1 %178, label %179, label %200

179:                                              ; preds = %176
  %180 = load i8*, i8** %6, align 8
  %181 = load i32, i32* %10, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = load i32, i32* %11, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %18, i64 0, i64 %187
  %189 = load i32, i32* %19, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [4 x i8], [4 x i8]* %188, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %185, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %179
  br label %200

196:                                              ; preds = %179
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %19, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %19, align 4
  br label %176

200:                                              ; preds = %195, %176
  %201 = load i32, i32* %19, align 4
  %202 = icmp eq i32 %201, 4
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32, i32* @FALSE, align 4
  store i32 %204, i32* %13, align 4
  br label %226

205:                                              ; preds = %200
  %206 = load i32, i32* %19, align 4
  %207 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  %208 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %207, i32 0, i32 0
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp uge i32 %206, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  store %struct.hlsl_ir_swizzle* null, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

214:                                              ; preds = %205
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %9, align 4
  %217 = mul i32 %216, 2
  %218 = shl i32 %215, %217
  %219 = load i32, i32* %12, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %9, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %223

223:                                              ; preds = %214
  %224 = load i32, i32* %10, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %10, align 4
  br label %170

226:                                              ; preds = %203, %170
  %227 = load i32, i32* %13, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %5, align 8
  %233 = load %struct.source_location*, %struct.source_location** %7, align 8
  %234 = call %struct.hlsl_ir_swizzle* @new_swizzle(i32 %230, i32 %231, %struct.hlsl_ir_node* %232, %struct.source_location* %233)
  store %struct.hlsl_ir_swizzle* %234, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

235:                                              ; preds = %226
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %11, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %165

239:                                              ; preds = %165
  store %struct.hlsl_ir_swizzle* null, %struct.hlsl_ir_swizzle** %4, align 8
  br label %240

240:                                              ; preds = %239, %229, %213, %163, %154, %137, %86, %73, %59, %38
  %241 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %4, align 8
  ret %struct.hlsl_ir_swizzle* %241
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.hlsl_ir_swizzle* @new_swizzle(i32, i32, %struct.hlsl_ir_node*, %struct.source_location*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
