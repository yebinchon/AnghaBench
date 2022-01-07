; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_base64.c_Base64ToBinary.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_base64.c_Base64ToBinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BASE64_DECODE_INVALID = common dso_local global i32 0, align 4
@BASE64_DECODE_WHITESPACE = common dso_local global i32 0, align 4
@BASE64_DECODE_PADDING = common dso_local global i32 0, align 4
@CRYPT_STRING_BASE64 = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i32*, i64*, i64*, i64*)* @Base64ToBinary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Base64ToBinary(i8* %0, i64 %1, i64 %2, i32* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %25

25:                                               ; preds = %95, %7
  %26 = load i64, i64* %16, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %98

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %16, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  br label %45

39:                                               ; preds = %29
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  br label %45

45:                                               ; preds = %39, %32
  %46 = phi i32 [ %38, %32 ], [ %44, %39 ]
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %21, align 4
  %48 = call i32 @decodeBase64Byte(i32 %47)
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %22, align 4
  %50 = load i32, i32* @BASE64_DECODE_INVALID, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %231

53:                                               ; preds = %45
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* @BASE64_DECODE_WHITESPACE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %95

58:                                               ; preds = %53
  %59 = load i64, i64* %19, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* @BASE64_DECODE_PADDING, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %231

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* @BASE64_DECODE_PADDING, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i64, i64* %17, align 8
  %72 = and i64 %71, 3
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %98

75:                                               ; preds = %70, %66
  %76 = load i64, i64* %17, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %17, align 8
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* @BASE64_DECODE_PADDING, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  store i64 1, i64* %19, align 8
  %82 = load i64, i64* %17, align 8
  %83 = and i64 %82, 3
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %98

86:                                               ; preds = %81
  br label %95

87:                                               ; preds = %75
  %88 = load i64, i64* %17, align 8
  %89 = and i64 %88, 3
  %90 = icmp ne i64 %89, 2
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i64, i64* %18, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %18, align 8
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %94, %86, %57
  %96 = load i64, i64* %16, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %16, align 8
  br label %25

98:                                               ; preds = %85, %74, %25
  %99 = load i64, i64* %17, align 8
  %100 = and i64 %99, 3
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i64, i64* %19, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %231

106:                                              ; preds = %102, %98
  %107 = load i32*, i32** %12, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i64*, i64** %13, align 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i64, i64* %18, align 8
  %115 = load i64*, i64** %13, align 8
  %116 = load i64, i64* %115, align 8
  %117 = icmp ugt i64 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %229

119:                                              ; preds = %113, %109, %106
  %120 = load i32*, i32** %12, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %214

122:                                              ; preds = %119
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %123

123:                                              ; preds = %210, %122
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %11, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %213

127:                                              ; preds = %123
  %128 = load i64, i64* %10, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i8*, i8** %9, align 8
  %132 = bitcast i8* %131 to i64*
  %133 = load i64, i64* %16, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  br label %143

137:                                              ; preds = %127
  %138 = load i8*, i8** %9, align 8
  %139 = load i64, i64* %16, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  br label %143

143:                                              ; preds = %137, %130
  %144 = phi i32 [ %136, %130 ], [ %142, %137 ]
  store i32 %144, i32* %23, align 4
  %145 = load i32, i32* %23, align 4
  %146 = call i32 @decodeBase64Byte(i32 %145)
  store i32 %146, i32* %24, align 4
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* @BASE64_DECODE_WHITESPACE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %210

151:                                              ; preds = %143
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* @BASE64_DECODE_PADDING, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %213

156:                                              ; preds = %151
  %157 = load i32, i32* %24, align 4
  %158 = load i64, i64* %17, align 8
  %159 = and i64 %158, 3
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %159
  store i32 %157, i32* %160, align 4
  %161 = load i64, i64* %17, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %17, align 8
  %163 = load i64, i64* %17, align 8
  %164 = and i64 %163, 3
  switch i64 %164, label %209 [
    i64 1, label %165
    i64 2, label %173
    i64 3, label %185
    i64 0, label %197
  ]

165:                                              ; preds = %156
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %167 = load i32, i32* %166, align 16
  %168 = shl i32 %167, 2
  %169 = load i32*, i32** %12, align 8
  %170 = load i64, i64* %18, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %18, align 8
  %172 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %168, i32* %172, align 4
  br label %209

173:                                              ; preds = %156
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %175 = load i32, i32* %174, align 16
  %176 = shl i32 %175, 2
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = ashr i32 %178, 4
  %180 = or i32 %176, %179
  %181 = load i32*, i32** %12, align 8
  %182 = load i64, i64* %18, align 8
  %183 = sub i64 %182, 1
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %180, i32* %184, align 4
  br label %209

185:                                              ; preds = %156
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 4
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %190 = load i32, i32* %189, align 8
  %191 = ashr i32 %190, 2
  %192 = or i32 %188, %191
  %193 = load i32*, i32** %12, align 8
  %194 = load i64, i64* %18, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %18, align 8
  %196 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 %192, i32* %196, align 4
  br label %209

197:                                              ; preds = %156
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %199 = load i32, i32* %198, align 8
  %200 = shl i32 %199, 6
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 0
  %204 = or i32 %200, %203
  %205 = load i32*, i32** %12, align 8
  %206 = load i64, i64* %18, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %18, align 8
  %208 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32 %204, i32* %208, align 4
  br label %209

209:                                              ; preds = %156, %197, %185, %173, %165
  br label %210

210:                                              ; preds = %209, %150
  %211 = load i64, i64* %16, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %16, align 8
  br label %123

213:                                              ; preds = %155, %123
  br label %214

214:                                              ; preds = %213, %119
  %215 = load i64, i64* %18, align 8
  %216 = load i64*, i64** %13, align 8
  store i64 %215, i64* %216, align 8
  %217 = load i64*, i64** %14, align 8
  %218 = icmp ne i64* %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i64*, i64** %14, align 8
  store i64 0, i64* %220, align 8
  br label %221

221:                                              ; preds = %219, %214
  %222 = load i64*, i64** %15, align 8
  %223 = icmp ne i64* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i64, i64* @CRYPT_STRING_BASE64, align 8
  %226 = load i64*, i64** %15, align 8
  store i64 %225, i64* %226, align 8
  br label %227

227:                                              ; preds = %224, %221
  %228 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %228, i32* %8, align 4
  br label %235

229:                                              ; preds = %118
  %230 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %230, i32* %8, align 4
  br label %235

231:                                              ; preds = %105, %65, %52
  %232 = load i64, i64* %18, align 8
  %233 = load i64*, i64** %13, align 8
  store i64 %232, i64* %233, align 8
  %234 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %231, %229, %227
  %236 = load i32, i32* %8, align 4
  ret i32 %236
}

declare dso_local i32 @decodeBase64Byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
