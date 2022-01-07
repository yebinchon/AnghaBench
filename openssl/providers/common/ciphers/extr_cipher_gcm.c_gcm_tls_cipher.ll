; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_tls_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_tls_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i8*, i64, i32, i32, i64, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, i32, i8*, i64, i8*, i8*, i64)*, i32 (%struct.TYPE_8__*, i8*, i64)* }

@EVP_GCM_TLS_EXPLICIT_IV_LEN = common dso_local global i64 0, align 8
@EVP_GCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@EVP_R_TOO_MANY_RECORDS = common dso_local global i32 0, align 4
@IV_STATE_COPIED = common dso_local global i32 0, align 4
@IV_STATE_FINISHED = common dso_local global i32 0, align 4
@UNINITIALISED_SIZET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64*, i8*, i64)* @gcm_tls_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_tls_cipher(%struct.TYPE_8__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i64, i64* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 8
  store i64 %15, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %209

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 8
  %28 = load i64, i64* @EVP_GCM_TLS_TAG_LEN, align 8
  %29 = add i64 %27, %28
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %21
  br label %209

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @ERR_LIB_PROV, align 4
  %45 = load i32, i32* @EVP_R_TOO_MANY_RECORDS, align 4
  %46 = call i32 @ERR_raise(i32 %44, i32 %45)
  br label %209

47:                                               ; preds = %37, %32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %209

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %107

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_8__*, i8*, i64)*, i32 (%struct.TYPE_8__*, i8*, i64)** %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 %63(%struct.TYPE_8__* %64, i8* %67, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %58
  br label %209

74:                                               ; preds = %58
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ugt i64 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %12, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i64, i64* %12, align 8
  %94 = sub i64 0, %93
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @memcpy(i8* %85, i8* %95, i64 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = getelementptr inbounds i8, i8* %104, i64 -8
  %106 = call i32 @ctr64_inc(i8* %105)
  br label %137

107:                                              ; preds = %53
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i64, i64* %12, align 8
  %116 = sub i64 0, %115
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8*, i8** %7, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @memcpy(i8* %117, i8* %118, i64 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32 (%struct.TYPE_8__*, i8*, i64)*, i32 (%struct.TYPE_8__*, i8*, i64)** %124, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i32 %125(%struct.TYPE_8__* %126, i8* %129, i64 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %107
  br label %209

136:                                              ; preds = %107
  br label %137

137:                                              ; preds = %136, %84
  %138 = load i32, i32* @IV_STATE_COPIED, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load i64, i64* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 %141
  store i8* %143, i8** %9, align 8
  %144 = load i64, i64* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 %144
  store i8* %146, i8** %7, align 8
  %147 = load i64, i64* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 8
  %148 = load i64, i64* @EVP_GCM_TLS_TAG_LEN, align 8
  %149 = add i64 %147, %148
  %150 = load i64, i64* %10, align 8
  %151 = sub i64 %150, %149
  store i64 %151, i64* %10, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %137
  %157 = load i8*, i8** %7, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  br label %164

160:                                              ; preds = %137
  %161 = load i8*, i8** %9, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  br label %164

164:                                              ; preds = %160, %156
  %165 = phi i8* [ %159, %156 ], [ %163, %160 ]
  store i8* %165, i8** %14, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32 (%struct.TYPE_8__*, i32, i32, i8*, i64, i8*, i8*, i64)*, i32 (%struct.TYPE_8__*, i32, i32, i8*, i64, i8*, i8*, i64)** %169, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = load i64, i64* %10, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = load i64, i64* @EVP_GCM_TLS_TAG_LEN, align 8
  %183 = call i32 %170(%struct.TYPE_8__* %171, i32 %174, i32 %177, i8* %178, i64 %179, i8* %180, i8* %181, i64 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %164
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load i8*, i8** %7, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @OPENSSL_cleanse(i8* %191, i64 %192)
  br label %194

194:                                              ; preds = %190, %185
  br label %209

195:                                              ; preds = %164
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i64, i64* %10, align 8
  %202 = load i64, i64* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 8
  %203 = add i64 %201, %202
  %204 = load i64, i64* @EVP_GCM_TLS_TAG_LEN, align 8
  %205 = add i64 %203, %204
  store i64 %205, i64* %13, align 8
  br label %208

206:                                              ; preds = %195
  %207 = load i64, i64* %10, align 8
  store i64 %207, i64* %13, align 8
  br label %208

208:                                              ; preds = %206, %200
  store i32 1, i32* %11, align 4
  br label %209

209:                                              ; preds = %208, %194, %135, %73, %52, %43, %31, %20
  %210 = load i32, i32* @IV_STATE_FINISHED, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @UNINITIALISED_SIZET, align 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 8
  %216 = load i64, i64* %13, align 8
  %217 = load i64*, i64** %8, align 8
  store i64 %216, i64* %217, align 8
  %218 = load i32, i32* %11, align 4
  ret i32 %218
}

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ctr64_inc(i8*) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
