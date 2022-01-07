; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_concat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@JSSTR_MAX_LENGTH = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_concat(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @get_string_val(i32* %24, i32* %25, i32** %15)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %7, align 4
  br label %196

32:                                               ; preds = %6
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %60 [
    i32 0, label %34
    i32 1, label %36
  ]

34:                                               ; preds = %32
  %35 = load i32*, i32** %15, align 8
  store i32* %35, i32** %14, align 8
  br label %184

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @to_string(i32* %37, i32 %40, i32** %17)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @jsstr_release(i32* %46)
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %7, align 4
  br label %196

49:                                               ; preds = %36
  %50 = load i32*, i32** %15, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = call i32* @jsstr_concat(i32* %50, i32* %51)
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @jsstr_release(i32* %53)
  %55 = load i32*, i32** %14, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %58, i32* %7, align 4
  br label %196

59:                                               ; preds = %49
  br label %184

60:                                               ; preds = %32
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %63 = load i32, i32* %18, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i32** @heap_alloc_zero(i32 %66)
  store i32** %67, i32*** %21, align 8
  %68 = load i32**, i32*** %21, align 8
  %69 = icmp ne i32** %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %60
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @jsstr_release(i32* %71)
  %73 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %73, i32* %7, align 4
  br label %196

74:                                               ; preds = %60
  %75 = load i32*, i32** %15, align 8
  %76 = load i32**, i32*** %21, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  store i32* %75, i32** %77, align 8
  store i32 0, i32* %20, align 4
  br label %78

78:                                               ; preds = %100, %74
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %20, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32**, i32*** %21, align 8
  %90 = load i32, i32* %20, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = getelementptr inbounds i32*, i32** %92, i64 1
  %94 = call i32 @to_string(i32* %83, i32 %88, i32** %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i64 @FAILED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  br label %103

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %20, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %20, align 4
  br label %78

103:                                              ; preds = %98, %78
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @SUCCEEDED(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %163

107:                                              ; preds = %103
  store i32 0, i32* %20, align 4
  br label %108

108:                                              ; preds = %127, %107
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %108
  %113 = load i32**, i32*** %21, align 8
  %114 = load i32, i32* %20, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @jsstr_length(i32* %117)
  %119 = load i32, i32* %19, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* @JSSTR_MAX_LENGTH, align 4
  %123 = icmp ugt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %125, i32* %16, align 4
  br label %130

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %20, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %20, align 4
  br label %108

130:                                              ; preds = %124, %108
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @SUCCEEDED(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %162

134:                                              ; preds = %130
  %135 = load i32, i32* %19, align 4
  %136 = call i32* @jsstr_alloc_buf(i32 %135, i32** %22)
  store i32* %136, i32** %14, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %159

139:                                              ; preds = %134
  store i32 0, i32* %20, align 4
  br label %140

140:                                              ; preds = %155, %139
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load i32**, i32*** %21, align 8
  %146 = load i32, i32* %20, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32*, i32** %22, align 8
  %151 = call i32 @jsstr_flush(i32* %149, i32* %150)
  %152 = load i32*, i32** %22, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %22, align 8
  br label %155

155:                                              ; preds = %144
  %156 = load i32, i32* %20, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %20, align 4
  br label %140

158:                                              ; preds = %140
  br label %161

159:                                              ; preds = %134
  %160 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %159, %158
  br label %162

162:                                              ; preds = %161, %130
  br label %163

163:                                              ; preds = %162, %103
  br label %164

164:                                              ; preds = %168, %163
  %165 = load i32, i32* %20, align 4
  %166 = add i32 %165, -1
  store i32 %166, i32* %20, align 4
  %167 = icmp ne i32 %165, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load i32**, i32*** %21, align 8
  %170 = load i32, i32* %20, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @jsstr_release(i32* %173)
  br label %164

175:                                              ; preds = %164
  %176 = load i32**, i32*** %21, align 8
  %177 = call i32 @heap_free(i32** %176)
  %178 = load i32, i32* %16, align 4
  %179 = call i64 @FAILED(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %7, align 4
  br label %196

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %59, %34
  %185 = load i32*, i32** %13, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i32*, i32** %14, align 8
  %189 = call i32 @jsval_string(i32* %188)
  %190 = load i32*, i32** %13, align 8
  store i32 %189, i32* %190, align 4
  br label %194

191:                                              ; preds = %184
  %192 = load i32*, i32** %14, align 8
  %193 = call i32 @jsstr_release(i32* %192)
  br label %194

194:                                              ; preds = %191, %187
  %195 = load i32, i32* @S_OK, align 4
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %194, %181, %70, %57, %45, %30
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32* @jsstr_concat(i32*, i32*) #1

declare dso_local i32** @heap_alloc_zero(i32) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32* @jsstr_alloc_buf(i32, i32**) #1

declare dso_local i32 @jsstr_flush(i32*, i32*) #1

declare dso_local i32 @heap_free(i32**) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
