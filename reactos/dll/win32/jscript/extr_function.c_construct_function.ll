; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_construct_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_construct_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@construct_function.function_anonymousW = internal constant [19 x float] [float 1.020000e+02, float 1.170000e+02, float 1.100000e+02, float 9.900000e+01, float 1.160000e+02, float 1.050000e+02, float 1.110000e+02, float 1.100000e+02, float 3.200000e+01, float 9.700000e+01, float 1.100000e+02, float 1.110000e+02, float 1.100000e+02, float 1.210000e+02, float 1.090000e+02, float 1.110000e+02, float 1.170000e+02, float 1.150000e+02, float 4.000000e+01], align 16
@construct_function.function_beginW = internal constant [4 x float] [float 4.100000e+01, float 3.200000e+01, float 1.230000e+02, float 1.000000e+01], align 16
@construct_function.function_endW = internal constant [3 x float] [float 1.000000e+01, float 1.250000e+02, float 0.000000e+00], align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid parser result!\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32**)* @construct_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_function(i32* %0, i32 %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store float* null, float** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32** null, i32*** %16, align 8
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* @S_OK, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @heap_alloc(i32 %26)
  %28 = bitcast i8* %27 to i32**
  store i32** %28, i32*** %16, align 8
  %29 = load i32**, i32*** %16, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %32, i32* %5, align 4
  br label %230

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = icmp ugt i32 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = sub i32 %37, 2
  %39 = mul i32 %38, 2
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %36, %33
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %72, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32**, i32*** %16, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = call i32 @to_string(i32* %46, i32 %51, i32** %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %75

61:                                               ; preds = %45
  %62 = load i32**, i32*** %16, align 8
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @jsstr_length(i32* %66)
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %41

75:                                               ; preds = %60, %41
  br label %76

76:                                               ; preds = %75, %4
  %77 = load i32, i32* %18, align 4
  %78 = call i64 @SUCCEEDED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %159

80:                                               ; preds = %76
  %81 = call i32 @ARRAY_SIZE(float* getelementptr inbounds ([19 x float], [19 x float]* @construct_function.function_anonymousW, i64 0, i64 0))
  %82 = call i32 @ARRAY_SIZE(float* getelementptr inbounds ([4 x float], [4 x float]* @construct_function.function_beginW, i64 0, i64 0))
  %83 = add nsw i32 %81, %82
  %84 = call i32 @ARRAY_SIZE(float* getelementptr inbounds ([3 x float], [3 x float]* @construct_function.function_endW, i64 0, i64 0))
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = zext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i8* @heap_alloc(i32 %91)
  %93 = bitcast i8* %92 to float*
  store float* %93, float** %10, align 8
  %94 = load float*, float** %10, align 8
  %95 = icmp ne float* %94, null
  br i1 %95, label %96, label %156

96:                                               ; preds = %80
  %97 = load float*, float** %10, align 8
  %98 = call i32 @memcpy(float* %97, float* getelementptr inbounds ([19 x float], [19 x float]* @construct_function.function_anonymousW, i64 0, i64 0), i32 76)
  %99 = load float*, float** %10, align 8
  %100 = call i32 @ARRAY_SIZE(float* getelementptr inbounds ([19 x float], [19 x float]* @construct_function.function_anonymousW, i64 0, i64 0))
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  store float* %102, float** %11, align 8
  %103 = load i32, i32* %7, align 4
  %104 = icmp ugt i32 %103, 1
  br i1 %104, label %105, label %129

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %123
  %107 = load i32**, i32*** %16, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load float*, float** %11, align 8
  %113 = call i32 @jsstr_flush(i32* %111, float* %112)
  %114 = load float*, float** %11, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds float, float* %114, i64 %115
  store float* %116, float** %11, align 8
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sub i32 %119, 1
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %106
  br label %128

123:                                              ; preds = %106
  %124 = load float*, float** %11, align 8
  %125 = getelementptr inbounds float, float* %124, i32 1
  store float* %125, float** %11, align 8
  store float 4.400000e+01, float* %124, align 4
  %126 = load float*, float** %11, align 8
  %127 = getelementptr inbounds float, float* %126, i32 1
  store float* %127, float** %11, align 8
  store float 3.200000e+01, float* %126, align 4
  br label %106

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %96
  %130 = load float*, float** %11, align 8
  %131 = call i32 @memcpy(float* %130, float* getelementptr inbounds ([4 x float], [4 x float]* @construct_function.function_beginW, i64 0, i64 0), i32 16)
  %132 = call i32 @ARRAY_SIZE(float* getelementptr inbounds ([4 x float], [4 x float]* @construct_function.function_beginW, i64 0, i64 0))
  %133 = load float*, float** %11, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds float, float* %133, i64 %134
  store float* %135, float** %11, align 8
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %129
  %139 = load i32**, i32*** %16, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sub i32 %140, 1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %139, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load float*, float** %11, align 8
  %146 = call i32 @jsstr_flush(i32* %144, float* %145)
  %147 = load float*, float** %11, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds float, float* %147, i64 %148
  store float* %149, float** %11, align 8
  br label %150

150:                                              ; preds = %138, %129
  %151 = load float*, float** %11, align 8
  %152 = call i32 @memcpy(float* %151, float* getelementptr inbounds ([3 x float], [3 x float]* @construct_function.function_endW, i64 0, i64 0), i32 12)
  %153 = load float*, float** %10, align 8
  %154 = call i32 @debugstr_w(float* %153)
  %155 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %154)
  br label %158

156:                                              ; preds = %80
  %157 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %156, %150
  br label %159

159:                                              ; preds = %158, %76
  br label %160

160:                                              ; preds = %163, %159
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load i32**, i32*** %16, align 8
  %165 = load i32, i32* %13, align 4
  %166 = add i32 %165, -1
  store i32 %166, i32* %13, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %164, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @jsstr_release(i32* %169)
  br label %160

171:                                              ; preds = %160
  %172 = load i32**, i32*** %16, align 8
  %173 = bitcast i32** %172 to float*
  %174 = call i32 @heap_free(float* %173)
  %175 = load i32, i32* %18, align 4
  %176 = call i64 @FAILED(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* %18, align 4
  store i32 %179, i32* %5, align 4
  br label %230

180:                                              ; preds = %171
  %181 = load i32*, i32** %6, align 8
  %182 = load float*, float** %10, align 8
  %183 = load i32, i32* @FALSE, align 4
  %184 = load i32, i32* @FALSE, align 4
  %185 = call i32 @compile_script(i32* %181, float* %182, i32* null, i32* null, i32 %183, i32 %184, %struct.TYPE_7__** %14)
  store i32 %185, i32* %18, align 4
  %186 = load float*, float** %10, align 8
  %187 = call i32 @heap_free(float* %186)
  %188 = load i32, i32* %18, align 4
  %189 = call i64 @FAILED(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %180
  %192 = load i32, i32* %18, align 4
  store i32 %192, i32* %5, align 4
  br label %230

193:                                              ; preds = %180
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 1
  br i1 %198, label %205, label %199

199:                                              ; preds = %193
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 1
  br i1 %204, label %205, label %210

205:                                              ; preds = %199, %193
  %206 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %208 = call i32 @release_bytecode(%struct.TYPE_7__* %207)
  %209 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %209, i32* %5, align 4
  br label %230

210:                                              ; preds = %199
  %211 = load i32*, i32** %6, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @create_source_function(i32* %211, %struct.TYPE_7__* %212, i32 %216, i32* null, i32** %15)
  store i32 %217, i32* %18, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %219 = call i32 @release_bytecode(%struct.TYPE_7__* %218)
  %220 = load i32, i32* %18, align 4
  %221 = call i64 @FAILED(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %210
  %224 = load i32, i32* %18, align 4
  store i32 %224, i32* %5, align 4
  br label %230

225:                                              ; preds = %210
  %226 = load i32*, i32** %15, align 8
  %227 = call i32* @to_disp(i32* %226)
  %228 = load i32**, i32*** %9, align 8
  store i32* %227, i32** %228, align 8
  %229 = load i32, i32* @S_OK, align 4
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %225, %223, %205, %191, %178, %31
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @jsstr_length(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @ARRAY_SIZE(float*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @jsstr_flush(i32*, float*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(float*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @heap_free(float*) #1

declare dso_local i32 @compile_script(i32*, float*, i32*, i32*, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @release_bytecode(%struct.TYPE_7__*) #1

declare dso_local i32 @create_source_function(i32*, %struct.TYPE_7__*, i32, i32*, i32**) #1

declare dso_local i32* @to_disp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
