; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_compiler.c_compile_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_compiler.c_compile_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwriter_shader = type { i32 }
%struct.target_info = type { i32, i8, i8, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Preprocessed shader source: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Checking compilation target %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown compilation target %s\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Compilation target %s not yet supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Compiler messages:\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Shader source:\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"HLSL shader parsing failed.\0A\00", align 1
@D3DXERR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"SlWriteBytecode failed with error 0x%08x.\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32**, i32**)* @compile_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_shader(i8* %0, i8* %1, i8* %2, i32** %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.bwriter_shader*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.target_info*, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i8* null, i8** %13, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @debugstr_a(i8* %24)
  %26 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @debugstr_a(i8* %27)
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = call %struct.target_info* @get_target_info(i8* %30)
  store %struct.target_info* %31, %struct.target_info** %22, align 8
  %32 = load %struct.target_info*, %struct.target_info** %22, align 8
  %33 = icmp ne %struct.target_info* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %5
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @debugstr_a(i8* %35)
  %37 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %38, i32* %6, align 4
  br label %210

39:                                               ; preds = %5
  %40 = load %struct.target_info*, %struct.target_info** %22, align 8
  %41 = getelementptr inbounds %struct.target_info, %struct.target_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @debugstr_a(i8* %45)
  %47 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %48, i32* %6, align 4
  br label %210

49:                                               ; preds = %39
  %50 = load %struct.target_info*, %struct.target_info** %22, align 8
  %51 = getelementptr inbounds %struct.target_info, %struct.target_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %21, align 4
  %53 = load %struct.target_info*, %struct.target_info** %22, align 8
  %54 = getelementptr inbounds %struct.target_info, %struct.target_info* %53, i32 0, i32 1
  %55 = load i8, i8* %54, align 4
  store i8 %55, i8* %17, align 1
  %56 = load %struct.target_info*, %struct.target_info** %22, align 8
  %57 = getelementptr inbounds %struct.target_info, %struct.target_info* %56, i32 0, i32 2
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %18, align 1
  br label %59

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %21, align 4
  %63 = load i8, i8* %17, align 1
  %64 = load i8, i8* %18, align 1
  %65 = load i8*, i8** %9, align 8
  %66 = call %struct.bwriter_shader* @parse_hlsl_shader(i8* %61, i32 %62, i8 signext %63, i8 signext %64, i8* %65, i8** %13)
  store %struct.bwriter_shader* %66, %struct.bwriter_shader** %12, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %165

69:                                               ; preds = %60
  %70 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @debugstr_a(i8* %71)
  %73 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @debugstr_a(i8* %75)
  %77 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i32**, i32*** %11, align 8
  %79 = icmp ne i32** %78, null
  br i1 %79, label %80, label %161

80:                                               ; preds = %69
  %81 = load i32**, i32*** %11, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32**, i32*** %11, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = call i8* @ID3D10Blob_GetBufferPointer(i32* %86)
  br label %89

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i8* [ %87, %84 ], [ null, %88 ]
  store i8* %90, i8** %23, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = call signext i8 @strlen(i8* %91)
  %93 = sext i8 %92 to i32
  %94 = load i8*, i8** %23, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i8*, i8** %23, align 8
  %98 = call signext i8 @strlen(i8* %97)
  %99 = sext i8 %98 to i32
  br label %101

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i32 [ %99, %96 ], [ 0, %100 ]
  %103 = add nsw i32 %93, %102
  %104 = add nsw i32 %103, 1
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %16, align 1
  %106 = load i8, i8* %16, align 1
  %107 = call i32 @D3DCreateBlob(i8 signext %106, i32** %19)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i64 @FAILED(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %101
  %112 = call i32 (...) @GetProcessHeap()
  %113 = load i8*, i8** %13, align 8
  %114 = call i32 @HeapFree(i32 %112, i32 0, i8* %113)
  %115 = load %struct.bwriter_shader*, %struct.bwriter_shader** %12, align 8
  %116 = icmp ne %struct.bwriter_shader* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.bwriter_shader*, %struct.bwriter_shader** %12, align 8
  %119 = call i32 @SlDeleteShader(%struct.bwriter_shader* %118)
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %6, align 4
  br label %210

122:                                              ; preds = %101
  %123 = load i32*, i32** %19, align 8
  %124 = call i8* @ID3D10Blob_GetBufferPointer(i32* %123)
  store i8* %124, i8** %20, align 8
  %125 = load i8*, i8** %23, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load i8*, i8** %20, align 8
  %129 = load i8*, i8** %23, align 8
  %130 = load i8*, i8** %23, align 8
  %131 = call signext i8 @strlen(i8* %130)
  %132 = sext i8 %131 to i32
  %133 = add nsw i32 %132, 1
  %134 = trunc i32 %133 to i8
  %135 = call i32 @memcpy(i8* %128, i8* %129, i8 signext %134)
  %136 = load i8*, i8** %23, align 8
  %137 = call signext i8 @strlen(i8* %136)
  %138 = sext i8 %137 to i32
  %139 = load i8*, i8** %20, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %20, align 8
  br label %142

142:                                              ; preds = %127, %122
  %143 = load i8*, i8** %20, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = call signext i8 @strlen(i8* %145)
  %147 = sext i8 %146 to i32
  %148 = add nsw i32 %147, 1
  %149 = trunc i32 %148 to i8
  %150 = call i32 @memcpy(i8* %143, i8* %144, i8 signext %149)
  %151 = load i32**, i32*** %11, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %142
  %155 = load i32**, i32*** %11, align 8
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @ID3D10Blob_Release(i32* %156)
  br label %158

158:                                              ; preds = %154, %142
  %159 = load i32*, i32** %19, align 8
  %160 = load i32**, i32*** %11, align 8
  store i32* %159, i32** %160, align 8
  br label %161

161:                                              ; preds = %158, %69
  %162 = call i32 (...) @GetProcessHeap()
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 @HeapFree(i32 %162, i32 0, i8* %163)
  br label %165

165:                                              ; preds = %161, %60
  %166 = load %struct.bwriter_shader*, %struct.bwriter_shader** %12, align 8
  %167 = icmp ne %struct.bwriter_shader* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %170 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %170, i32* %6, align 4
  br label %210

171:                                              ; preds = %165
  %172 = load %struct.bwriter_shader*, %struct.bwriter_shader** %12, align 8
  %173 = call i32 @SlWriteBytecode(%struct.bwriter_shader* %172, i32 9, i8** %15, i8* %16)
  store i32 %173, i32* %14, align 4
  %174 = load %struct.bwriter_shader*, %struct.bwriter_shader** %12, align 8
  %175 = call i32 @SlDeleteShader(%struct.bwriter_shader* %174)
  %176 = load i32, i32* %14, align 4
  %177 = call i64 @FAILED(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i32, i32* %14, align 4
  %181 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %182, i32* %6, align 4
  br label %210

183:                                              ; preds = %171
  %184 = load i32**, i32*** %10, align 8
  %185 = icmp ne i32** %184, null
  br i1 %185, label %186, label %205

186:                                              ; preds = %183
  %187 = load i8, i8* %16, align 1
  %188 = call i32 @D3DCreateBlob(i8 signext %187, i32** %19)
  store i32 %188, i32* %14, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i64 @FAILED(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %186
  %193 = call i32 (...) @GetProcessHeap()
  %194 = load i8*, i8** %15, align 8
  %195 = call i32 @HeapFree(i32 %193, i32 0, i8* %194)
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %6, align 4
  br label %210

197:                                              ; preds = %186
  %198 = load i32*, i32** %19, align 8
  %199 = call i8* @ID3D10Blob_GetBufferPointer(i32* %198)
  %200 = load i8*, i8** %15, align 8
  %201 = load i8, i8* %16, align 1
  %202 = call i32 @memcpy(i8* %199, i8* %200, i8 signext %201)
  %203 = load i32*, i32** %19, align 8
  %204 = load i32**, i32*** %10, align 8
  store i32* %203, i32** %204, align 8
  br label %205

205:                                              ; preds = %197, %183
  %206 = call i32 (...) @GetProcessHeap()
  %207 = load i8*, i8** %15, align 8
  %208 = call i32 @HeapFree(i32 %206, i32 0, i8* %207)
  %209 = load i32, i32* @S_OK, align 4
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %205, %192, %179, %168, %120, %44, %34
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local %struct.target_info* @get_target_info(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local %struct.bwriter_shader* @parse_hlsl_shader(i8*, i32, i8 signext, i8 signext, i8*, i8**) #1

declare dso_local i8* @ID3D10Blob_GetBufferPointer(i32*) #1

declare dso_local signext i8 @strlen(i8*) #1

declare dso_local i32 @D3DCreateBlob(i8 signext, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SlDeleteShader(%struct.bwriter_shader*) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 signext) #1

declare dso_local i32 @ID3D10Blob_Release(i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @SlWriteBytecode(%struct.bwriter_shader*, i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
