; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_l_keys_capi.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_l_keys_capi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPT_FIRST = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@PP_ENUMCONTAINERS = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 32, i32 32, i32 32, i32 32, i32 37, i32 117, i32 46, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@PP_UNIQUE_CONTAINER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 32, i32 32, i32 32, i32 32, i32 37, i32 83, i32 10, i32 0], align 4
@AT_KEYEXCHANGE = common dso_local global i32 0, align 4
@AT_SIGNATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i32] [i32 9, i32 84, i32 121, i32 112, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 71, i32 101, i32 116, i32 85, i32 115, i32 101, i32 114, i32 75, i32 101, i32 121, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@CRYPT_NEXT = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 71, i32 101, i32 116, i32 80, i32 114, i32 111, i32 118, i32 80, i32 97, i32 114, i32 97, i32 109, i32 0], align 4
@.str.6 = private unnamed_addr constant [20 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 65, i32 99, i32 113, i32 117, i32 105, i32 114, i32 101, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_crypto_l_keys_capi(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %28 = load i32, i32* @CRYPT_FIRST, align 4
  store i32 %28, i32* %20, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @wcslen(i8* %32)
  %34 = trunc i64 %33 to i32
  br label %36

35:                                               ; preds = %6
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 0, %35 ]
  store i32 %37, i32* %21, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %41, %42
  %44 = call i64 @CryptAcquireContext(i32* %13, i8* %38, i8* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %210

46:                                               ; preds = %36
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @PP_ENUMCONTAINERS, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call i64 @CryptGetProvParam(i32 %47, i32 %48, i32* null, i32* %17, i32 %49)
  store i64 %50, i64* %23, align 8
  %51 = load i32, i32* @LPTR, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i64 @LocalAlloc(i32 %51, i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %24, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %209

56:                                               ; preds = %46
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %194, %56
  %58 = load i64, i64* %23, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %198

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @PP_ENUMCONTAINERS, align 4
  %63 = load i8*, i8** %24, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %20, align 4
  %66 = call i64 @CryptGetProvParam(i32 %61, i32 %62, i32* %64, i32* %17, i32 %65)
  store i64 %66, i64* %23, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %194

68:                                               ; preds = %60
  %69 = load i8*, i8** %24, align 8
  %70 = call i8* @kull_m_string_qad_ansi_to_unicode(i8* %69)
  store i8* %70, i8** %26, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %193

72:                                               ; preds = %68
  %73 = load i32, i32* %16, align 4
  %74 = load i8*, i8** %26, align 8
  %75 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str to i8*), i32 %73, i8* %74)
  %76 = load i8*, i8** %26, align 8
  %77 = call i64 @wcslen(i8* %76)
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %22, align 4
  %79 = load i32, i32* @LPTR, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %80, %81
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = call i64 @LocalAlloc(i32 %79, i32 %86)
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %27, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %189

90:                                               ; preds = %72
  %91 = load i32, i32* %21, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i8*, i8** %27, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 1
  %99 = trunc i64 %98 to i32
  %100 = call i32 @RtlCopyMemory(i8* %94, i8* %95, i32 %99)
  br label %101

101:                                              ; preds = %93, %90
  %102 = load i8*, i8** %27, align 8
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8*, i8** %26, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = call i32 @RtlCopyMemory(i8* %105, i8* %106, i32 %110)
  %112 = load i8*, i8** %27, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @CryptAcquireContext(i32* %14, i8* %112, i8* %113, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %186

118:                                              ; preds = %101
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @PP_UNIQUE_CONTAINER, align 4
  %121 = call i64 @CryptGetProvParam(i32 %119, i32 %120, i32* null, i32* %18, i32 0)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %118
  %124 = load i32, i32* @LPTR, align 4
  %125 = load i32, i32* %18, align 4
  %126 = call i64 @LocalAlloc(i32 %124, i32 %125)
  %127 = inttoptr i64 %126 to i8*
  store i8* %127, i8** %25, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %123
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @PP_UNIQUE_CONTAINER, align 4
  %132 = load i8*, i8** %25, align 8
  %133 = bitcast i8* %132 to i32*
  %134 = call i64 @CryptGetProvParam(i32 %130, i32 %131, i32* %133, i32* %18, i32 0)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load i8*, i8** %25, align 8
  %138 = call i32 (i8*, ...) @kprintf(i8* bitcast ([8 x i32]* @.str.1 to i8*), i8* %137)
  br label %139

139:                                              ; preds = %136, %129
  %140 = load i8*, i8** %25, align 8
  %141 = call i32 @LocalFree(i8* %140)
  br label %142

142:                                              ; preds = %139, %123
  br label %143

143:                                              ; preds = %142, %118
  %144 = load i32, i32* @AT_KEYEXCHANGE, align 4
  store i32 %144, i32* %19, align 4
  store i64 0, i64* %15, align 8
  br label %145

145:                                              ; preds = %158, %143
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* @AT_SIGNATURE, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %19, align 4
  %152 = call i32 @CryptGetUserKey(i32 %150, i32 %151, i64* %15)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  br label %155

155:                                              ; preds = %149, %145
  %156 = phi i1 [ false, %145 ], [ %154, %149 ]
  br i1 %156, label %157, label %161

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %19, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %19, align 4
  br label %145

161:                                              ; preds = %155
  %162 = load i64, i64* %15, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %183

164:                                              ; preds = %161
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @kull_m_crypto_keytype_to_str(i32 %165)
  %167 = load i32, i32* %19, align 4
  %168 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.2 to i8*), i32 %166, i32 %167)
  %169 = load i64, i64* %15, align 8
  %170 = call i32 @kuhl_m_crypto_printKeyInfos(i32 0, i64 %169)
  %171 = load i64, i64* %11, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %164
  %174 = load i64, i64* %15, align 8
  %175 = load i32, i32* %19, align 4
  %176 = load i8*, i8** %12, align 8
  %177 = load i32, i32* %16, align 4
  %178 = load i8*, i8** %26, align 8
  %179 = call i32 @kuhl_m_crypto_exportKeyToFile(i32 0, i64 %174, i32 %175, i8* %176, i32 %177, i8* %178)
  br label %180

180:                                              ; preds = %173, %164
  %181 = load i64, i64* %15, align 8
  %182 = call i32 @CryptDestroyKey(i64 %181)
  br label %185

183:                                              ; preds = %161
  %184 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([16 x i32]* @.str.3 to i8*))
  br label %185

185:                                              ; preds = %183, %180
  br label %186

186:                                              ; preds = %185, %101
  %187 = load i8*, i8** %27, align 8
  %188 = call i32 @LocalFree(i8* %187)
  br label %189

189:                                              ; preds = %186, %72
  %190 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %191 = load i8*, i8** %26, align 8
  %192 = call i32 @LocalFree(i8* %191)
  br label %193

193:                                              ; preds = %189, %68
  br label %194

194:                                              ; preds = %193, %60
  %195 = load i32, i32* @CRYPT_NEXT, align 4
  store i32 %195, i32* %20, align 4
  %196 = load i32, i32* %16, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %16, align 4
  br label %57

198:                                              ; preds = %57
  %199 = call i64 (...) @GetLastError()
  %200 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([18 x i32]* @.str.5 to i8*))
  br label %204

204:                                              ; preds = %202, %198
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @CryptReleaseContext(i32 %205, i32 0)
  %207 = load i8*, i8** %24, align 8
  %208 = call i32 @LocalFree(i8* %207)
  br label %209

209:                                              ; preds = %204, %46
  br label %212

210:                                              ; preds = %36
  %211 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.6 to i8*))
  br label %212

212:                                              ; preds = %210, %209
  ret void
}

declare dso_local i64 @wcslen(i8*) #1

declare dso_local i64 @CryptAcquireContext(i32*, i8*, i8*, i32, i32) #1

declare dso_local i64 @CryptGetProvParam(i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i8* @kull_m_string_qad_ansi_to_unicode(i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @RtlCopyMemory(i8*, i8*, i32) #1

declare dso_local i32 @LocalFree(i8*) #1

declare dso_local i32 @CryptGetUserKey(i32, i32, i64*) #1

declare dso_local i32 @kull_m_crypto_keytype_to_str(i32) #1

declare dso_local i32 @kuhl_m_crypto_printKeyInfos(i32, i64) #1

declare dso_local i32 @kuhl_m_crypto_exportKeyToFile(i32, i64, i32, i8*, i32, i8*) #1

declare dso_local i32 @CryptDestroyKey(i64) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
