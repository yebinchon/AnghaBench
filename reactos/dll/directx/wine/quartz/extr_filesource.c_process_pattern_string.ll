; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filesource.c_process_pattern_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filesource.c_process_pattern_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"\09\09Pattern string: %s\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*)* @process_pattern_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @process_pattern_string(i8* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i64, i64* @S_OK, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @debugstr_w(i8* %15)
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strtolW(i8* %18, i32* null, i32 10)
  store i32 %19, i32* %6, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strchrW(i8* %20, i8 signext 44)
  store i8* %21, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* @E_INVALIDARG, align 8
  store i64 %24, i64* %3, align 8
  br label %258

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strtolW(i8* %28, i32* null, i32 10)
  store i32 %29, i32* %7, align 4
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i32, i32* %7, align 4
  %32 = call i32* @HeapAlloc(i32 %30, i32 0, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32* @HeapAlloc(i32 %33, i32 %34, i32 %35)
  store i32* %36, i32** %9, align 8
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i32, i32* %7, align 4
  %39 = call i32* @HeapAlloc(i32 %37, i32 0, i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @memset(i32* %40, i32 255, i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @strchrW(i8* %43, i8 signext 44)
  store i8* %44, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %25
  %47 = load i64, i64* @E_INVALIDARG, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %46, %25
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %124

52:                                               ; preds = %48
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %67, %52
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isxdigitW(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 44
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %4, align 8
  br label %55

70:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %109, %70
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @isxdigitW(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = sdiv i32 %77, 2
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ false, %71 ], [ %80, %76 ]
  br i1 %82, label %83, label %114

83:                                               ; preds = %81
  %84 = load i32, i32* %12, align 4
  %85 = srem i32 %84, 2
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i32 @byte_from_hex_char(i8 signext %89)
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sdiv i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %90
  store i32 %97, i32* %95, align 4
  br label %108

98:                                               ; preds = %83
  %99 = load i8*, i8** %4, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @byte_from_hex_char(i8 signext %100)
  %102 = shl i32 %101, 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sdiv i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %102, i32* %107, align 4
  br label %108

108:                                              ; preds = %98, %87
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %4, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %71

114:                                              ; preds = %81
  %115 = load i8*, i8** %4, align 8
  %116 = call i8* @strchrW(i8* %115, i8 signext 44)
  store i8* %116, i8** %4, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* @E_INVALIDARG, align 8
  store i64 %119, i64* %11, align 8
  br label %123

120:                                              ; preds = %114
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %4, align 8
  br label %123

123:                                              ; preds = %120, %118
  br label %124

124:                                              ; preds = %123, %48
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* @S_OK, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %190

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %142, %128
  %130 = load i8*, i8** %4, align 8
  %131 = load i8, i8* %130, align 1
  %132 = call i64 @isxdigitW(i8 signext %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load i8*, i8** %4, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 44
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ]
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %141
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %4, align 8
  br label %129

145:                                              ; preds = %139
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %184, %145
  %147 = load i8*, i8** %4, align 8
  %148 = load i8, i8* %147, align 1
  %149 = call i64 @isxdigitW(i8 signext %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i32, i32* %12, align 4
  %153 = sdiv i32 %152, 2
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %153, %154
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi i1 [ false, %146 ], [ %155, %151 ]
  br i1 %157, label %158, label %189

158:                                              ; preds = %156
  %159 = load i32, i32* %12, align 4
  %160 = srem i32 %159, 2
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %173

162:                                              ; preds = %158
  %163 = load i8*, i8** %4, align 8
  %164 = load i8, i8* %163, align 1
  %165 = call i32 @byte_from_hex_char(i8 signext %164)
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sdiv i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %165
  store i32 %172, i32* %170, align 4
  br label %183

173:                                              ; preds = %158
  %174 = load i8*, i8** %4, align 8
  %175 = load i8, i8* %174, align 1
  %176 = call i32 @byte_from_hex_char(i8 signext %175)
  %177 = shl i32 %176, 4
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sdiv i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  br label %183

183:                                              ; preds = %173, %162
  br label %184

184:                                              ; preds = %183
  %185 = load i8*, i8** %4, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %4, align 8
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %146

189:                                              ; preds = %156
  br label %190

190:                                              ; preds = %189, %124
  %191 = load i64, i64* %11, align 8
  %192 = load i64, i64* @S_OK, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i32*, i32** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32*, i32** %10, align 8
  %199 = call i64 @IAsyncReader_SyncRead(i32* %195, i32 %196, i32 %197, i32* %198)
  store i64 %199, i64* %11, align 8
  br label %200

200:                                              ; preds = %194, %190
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* @S_OK, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %234

204:                                              ; preds = %200
  store i32 0, i32* %13, align 4
  br label %205

205:                                              ; preds = %230, %204
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %233

209:                                              ; preds = %205
  %210 = load i32*, i32** %10, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %214, %219
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %220, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %209
  %228 = load i64, i64* @S_FALSE, align 8
  store i64 %228, i64* %11, align 8
  br label %233

229:                                              ; preds = %209
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %205

233:                                              ; preds = %227, %205
  br label %234

234:                                              ; preds = %233, %200
  %235 = call i32 (...) @GetProcessHeap()
  %236 = load i32*, i32** %8, align 8
  %237 = call i32 @HeapFree(i32 %235, i32 0, i32* %236)
  %238 = call i32 (...) @GetProcessHeap()
  %239 = load i32*, i32** %9, align 8
  %240 = call i32 @HeapFree(i32 %238, i32 0, i32* %239)
  %241 = call i32 (...) @GetProcessHeap()
  %242 = load i32*, i32** %10, align 8
  %243 = call i32 @HeapFree(i32 %241, i32 0, i32* %242)
  %244 = load i64, i64* %11, align 8
  %245 = load i64, i64* @S_OK, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %256

247:                                              ; preds = %234
  %248 = load i8*, i8** %4, align 8
  %249 = call i8* @strchrW(i8* %248, i8 signext 44)
  store i8* %249, i8** %4, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = load i8*, i8** %4, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  %254 = load i32*, i32** %5, align 8
  %255 = call i64 @process_pattern_string(i8* %253, i32* %254)
  store i64 %255, i64* %3, align 8
  br label %258

256:                                              ; preds = %247, %234
  %257 = load i64, i64* %11, align 8
  store i64 %257, i64* %3, align 8
  br label %258

258:                                              ; preds = %256, %251, %23
  %259 = load i64, i64* %3, align 8
  ret i64 %259
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @strtolW(i8*, i32*, i32) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @isxdigitW(i8 signext) #1

declare dso_local i32 @byte_from_hex_char(i8 signext) #1

declare dso_local i64 @IAsyncReader_SyncRead(i32*, i32, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
