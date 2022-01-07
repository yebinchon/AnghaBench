; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_blob.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@CALG_3DES = common dso_local global i64 0, align 8
@CALG_SHA_512 = common dso_local global i64 0, align 8
@CALG_SHA1 = common dso_local global i64 0, align 8
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [43 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 99, i32 114, i32 121, i32 112, i32 116, i32 111, i32 95, i32 99, i32 108, i32 111, i32 115, i32 101, i32 95, i32 104, i32 112, i32 114, i32 111, i32 118, i32 95, i32 100, i32 101, i32 108, i32 101, i32 116, i32 101, i32 95, i32 99, i32 111, i32 110, i32 116, i32 97, i32 105, i32 110, i32 101, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [27 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 99, i32 114, i32 121, i32 112, i32 116, i32 111, i32 95, i32 104, i32 107, i32 101, i32 121, i32 95, i32 115, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_dpapi_unprotect_blob(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32** %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32** %6, i32*** %15, align 8
  store i32* %7, i32** %16, align 8
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %18, align 4
  store i32* null, i32** %21, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 8
  store i32 %36, i32* %24, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 8
  store i32 %40, i32* %25, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CALG_3DES, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %8
  %47 = load i32, i32* %25, align 4
  %48 = icmp slt i32 %47, 24
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 24, i32* %25, align 4
  br label %50

50:                                               ; preds = %49, %46, %8
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %82, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CALG_SHA_512, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i64, i64* @CALG_SHA_512, align 8
  store i64 %60, i64* %27, align 8
  %61 = load i32, i32* %24, align 4
  store i32 %61, i32* %26, align 4
  br label %65

62:                                               ; preds = %53
  %63 = load i64, i64* @CALG_SHA1, align 8
  store i64 %63, i64* %27, align 8
  %64 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  store i32 %64, i32* %26, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @LPTR, align 4
  %67 = load i32, i32* %26, align 4
  %68 = call i32* @LocalAlloc(i32 %66, i32 %67)
  store i32* %68, i32** %21, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load i64, i64* %27, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @wcslen(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %21, align 8
  %79 = load i32, i32* %26, align 4
  %80 = call i32 @kull_m_crypto_hash(i64 %71, i32 %72, i32 %77, i32* %78, i32 %79)
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %70, %65
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %196

85:                                               ; preds = %82
  %86 = load i32, i32* @LPTR, align 4
  %87 = load i32, i32* %24, align 4
  %88 = call i32* @LocalAlloc(i32 %86, i32 %87)
  store i32* %88, i32** %19, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %195

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32*, i32** %21, align 8
  %102 = load i32*, i32** %21, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = load i32, i32* %26, align 4
  br label %107

106:                                              ; preds = %90
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ 0, %106 ]
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = load i32*, i32** %19, align 8
  %113 = load i32, i32* %24, align 4
  %114 = call i64 @kull_m_dpapi_sessionkey(i32 %91, i32 %92, i32 %95, i32 %98, i32 %99, i32 %100, i32* %101, i32 %108, i64 %111, i32* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %192

116:                                              ; preds = %107
  %117 = load i32, i32* @LPTR, align 4
  %118 = load i32, i32* %25, align 4
  %119 = call i32* @LocalAlloc(i32 %117, i32 %118)
  store i32* %119, i32** %20, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %191

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i32*, i32** %19, align 8
  %126 = load i32, i32* %24, align 4
  %127 = load i32*, i32** %20, align 8
  %128 = load i32, i32* %25, align 4
  %129 = call i64 @kull_m_crypto_DeriveKeyRaw(i64 %124, i32* %125, i32 %126, i32* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %188

131:                                              ; preds = %121
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i32*, i32** %20, align 8
  %136 = load i32, i32* %25, align 4
  %137 = call i64 @kull_m_crypto_hkey_session(i64 %134, i32* %135, i32 %136, i32 0, i32* %23, i32* %22)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %185

139:                                              ; preds = %131
  %140 = load i32, i32* @LPTR, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32* @LocalAlloc(i32 %140, i32 %143)
  %145 = load i32**, i32*** %15, align 8
  store i32* %144, i32** %145, align 8
  %146 = icmp ne i32* %144, null
  br i1 %146, label %147, label %176

147:                                              ; preds = %139
  %148 = load i32**, i32*** %15, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @RtlCopyMemory(i32* %149, i32 %152, i32 %155)
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %16, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* @TRUE, align 4
  %163 = load i32**, i32*** %15, align 8
  %164 = load i32*, i32** %163, align 8
  %165 = ptrtoint i32* %164 to i32
  %166 = load i32*, i32** %16, align 8
  %167 = call i32 @CryptDecrypt(i32 %161, i32 0, i32 %162, i32 0, i32 %165, i32* %166)
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %147
  %171 = load i32**, i32*** %15, align 8
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @LocalFree(i32* %172)
  %174 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str to i8*))
  br label %175

175:                                              ; preds = %170, %147
  br label %176

176:                                              ; preds = %175, %139
  %177 = load i32, i32* %23, align 4
  %178 = call i32 @CryptDestroyKey(i32 %177)
  %179 = load i32, i32* %22, align 4
  %180 = call i32 @kull_m_crypto_close_hprov_delete_container(i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %176
  %183 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([43 x i32]* @.str.1 to i8*))
  br label %184

184:                                              ; preds = %182, %176
  br label %187

185:                                              ; preds = %131
  %186 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([27 x i32]* @.str.2 to i8*))
  br label %187

187:                                              ; preds = %185, %184
  br label %188

188:                                              ; preds = %187, %121
  %189 = load i32*, i32** %20, align 8
  %190 = call i32 @LocalFree(i32* %189)
  br label %191

191:                                              ; preds = %188, %116
  br label %192

192:                                              ; preds = %191, %107
  %193 = load i32*, i32** %19, align 8
  %194 = call i32 @LocalFree(i32* %193)
  br label %195

195:                                              ; preds = %192, %85
  br label %196

196:                                              ; preds = %195, %82
  %197 = load i32*, i32** %21, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32*, i32** %21, align 8
  %201 = call i32 @LocalFree(i32* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* %17, align 4
  ret i32 %203
}

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32 @kull_m_crypto_hash(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i64 @kull_m_dpapi_sessionkey(i32, i32, i32, i32, i32, i32, i32*, i32, i64, i32*, i32) #1

declare dso_local i64 @kull_m_crypto_DeriveKeyRaw(i64, i32*, i32, i32*, i32) #1

declare dso_local i64 @kull_m_crypto_hkey_session(i64, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #1

declare dso_local i32 @CryptDecrypt(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @kull_m_crypto_close_hprov_delete_container(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
