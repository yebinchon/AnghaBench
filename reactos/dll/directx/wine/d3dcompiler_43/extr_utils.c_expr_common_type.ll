; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_expr_common_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_expr_common_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_type = type { i64, i64, i32, i32 }
%struct.source_location = type { i32, i32, i32 }

@HLSL_CLASS_LAST_NUMERIC = common dso_local global i64 0, align 8
@HLSL_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"non scalar/vector/matrix data type in expression\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"expression data types are incompatible\00", align 1
@HLSL_CLASS_MATRIX = common dso_local global i64 0, align 8
@HLSL_CLASS_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlsl_type* (%struct.hlsl_type*, %struct.hlsl_type*, %struct.source_location*)* @expr_common_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlsl_type* @expr_common_type(%struct.hlsl_type* %0, %struct.hlsl_type* %1, %struct.source_location* %2) #0 {
  %4 = alloca %struct.hlsl_type*, align 8
  %5 = alloca %struct.hlsl_type*, align 8
  %6 = alloca %struct.hlsl_type*, align 8
  %7 = alloca %struct.source_location*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hlsl_type* %0, %struct.hlsl_type** %5, align 8
  store %struct.hlsl_type* %1, %struct.hlsl_type** %6, align 8
  store %struct.source_location* %2, %struct.source_location** %7, align 8
  %14 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %15 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %21 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19, %3
  %26 = load %struct.source_location*, %struct.source_location** %7, align 8
  %27 = getelementptr inbounds %struct.source_location, %struct.source_location* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.source_location*, %struct.source_location** %7, align 8
  %30 = getelementptr inbounds %struct.source_location, %struct.source_location* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.source_location*, %struct.source_location** %7, align 8
  %33 = getelementptr inbounds %struct.source_location, %struct.source_location* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HLSL_LEVEL_ERROR, align 4
  %36 = call i32 @hlsl_report_message(i32 %28, i32 %31, i32 %34, i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store %struct.hlsl_type* null, %struct.hlsl_type** %4, align 8
  br label %244

37:                                               ; preds = %19
  %38 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %39 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %40 = call i64 @compare_hlsl_types(%struct.hlsl_type* %38, %struct.hlsl_type* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  store %struct.hlsl_type* %43, %struct.hlsl_type** %4, align 8
  br label %244

44:                                               ; preds = %37
  %45 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %46 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %47 = call i32 @expr_compatible_data_types(%struct.hlsl_type* %45, %struct.hlsl_type* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = load %struct.source_location*, %struct.source_location** %7, align 8
  %51 = getelementptr inbounds %struct.source_location, %struct.source_location* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.source_location*, %struct.source_location** %7, align 8
  %54 = getelementptr inbounds %struct.source_location, %struct.source_location* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.source_location*, %struct.source_location** %7, align 8
  %57 = getelementptr inbounds %struct.source_location, %struct.source_location* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HLSL_LEVEL_ERROR, align 4
  %60 = call i32 @hlsl_report_message(i32 %52, i32 %55, i32 %58, i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store %struct.hlsl_type* null, %struct.hlsl_type** %4, align 8
  br label %244

61:                                               ; preds = %44
  %62 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %63 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %66 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %71 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %84

74:                                               ; preds = %61
  %75 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %76 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %80 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @expr_common_base_type(i32 %78, i32 %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %74, %69
  %85 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %86 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %91 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %96 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %8, align 4
  %99 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %100 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %10, align 4
  %102 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %103 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %11, align 4
  br label %238

105:                                              ; preds = %89, %84
  %106 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %107 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %126

110:                                              ; preds = %105
  %111 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %112 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %117 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %8, align 4
  %120 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %121 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %10, align 4
  %123 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %124 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %11, align 4
  br label %237

126:                                              ; preds = %110, %105
  %127 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %128 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %155

132:                                              ; preds = %126
  %133 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %134 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %132
  %139 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %8, align 4
  %141 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %142 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %145 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @min(i32 %143, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %149 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %152 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @min(i32 %150, i32 %153)
  store i32 %154, i32* %11, align 4
  br label %236

155:                                              ; preds = %132, %126
  %156 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %157 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %160 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @max(i32 %158, i32 %161)
  store i32 %162, i32* %12, align 4
  %163 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %164 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %167 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @max(i32 %165, i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %171 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %174 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %172, %175
  %177 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %178 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %181 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %179, %182
  %184 = icmp eq i32 %176, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %155
  %186 = load i32, i32* @HLSL_CLASS_VECTOR, align 4
  store i32 %186, i32* %8, align 4
  %187 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %188 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %191 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @max(i32 %189, i32 %192)
  store i32 %193, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %235

194:                                              ; preds = %155
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp ule i32 %195, %196
  br i1 %197, label %198, label %216

198:                                              ; preds = %194
  %199 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %200 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @HLSL_CLASS_VECTOR, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %198
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %215

208:                                              ; preds = %198
  %209 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %210 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %10, align 4
  %212 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %213 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %11, align 4
  br label %215

215:                                              ; preds = %208, %206
  br label %234

216:                                              ; preds = %194
  %217 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %218 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @HLSL_CLASS_VECTOR, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %233

226:                                              ; preds = %216
  %227 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %228 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  store i32 %229, i32* %10, align 4
  %230 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %231 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %11, align 4
  br label %233

233:                                              ; preds = %226, %224
  br label %234

234:                                              ; preds = %233, %215
  br label %235

235:                                              ; preds = %234, %185
  br label %236

236:                                              ; preds = %235, %138
  br label %237

237:                                              ; preds = %236, %115
  br label %238

238:                                              ; preds = %237, %94
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %11, align 4
  %243 = call %struct.hlsl_type* @new_hlsl_type(i32* null, i32 %239, i32 %240, i32 %241, i32 %242)
  store %struct.hlsl_type* %243, %struct.hlsl_type** %4, align 8
  br label %244

244:                                              ; preds = %238, %49, %42, %25
  %245 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  ret %struct.hlsl_type* %245
}

declare dso_local i32 @hlsl_report_message(i32, i32, i32, i32, i8*) #1

declare dso_local i64 @compare_hlsl_types(%struct.hlsl_type*, %struct.hlsl_type*) #1

declare dso_local i32 @expr_compatible_data_types(%struct.hlsl_type*, %struct.hlsl_type*) #1

declare dso_local i32 @expr_common_base_type(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.hlsl_type* @new_hlsl_type(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
