; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_pkeyutl.c_do_raw_keyop.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_pkeyutl.c_do_raw_keyop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TBUF_MAXSIZE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error: out of memory\0A\00", align 1
@EVP_PKEY_ED25519 = common dso_local global i64 0, align 8
@EVP_PKEY_ED448 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"Error: unable to determine file size for oneshot operation\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"oneshot sign/verify buffer\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error reading raw input data\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"buffer output\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Error verifying raw input data\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Error signing raw input data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, i32*, i32, i8*, i32, i8**, i64*)* @do_raw_keyop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_raw_keyop(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i8* %6, i32 %7, i8** %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i8** %8, i8*** %20, align 8
  store i64* %9, i64** %21, align 8
  store i32 0, i32* %22, align 4
  store i32* null, i32** %23, align 8
  %29 = load i32, i32* @TBUF_MAXSIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %24, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %25, align 8
  store i8* null, i8** %26, align 8
  store i32 0, i32* %27, align 4
  %33 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %33, i32** %23, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %10
  %36 = load i32, i32* @bio_err, align 4
  %37 = call i32 @BIO_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %22, align 4
  store i32 %38, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %231

39:                                               ; preds = %10
  %40 = load i32*, i32** %23, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @EVP_MD_CTX_set_pkey_ctx(i32* %40, i32* %41)
  %43 = load i32*, i32** %15, align 8
  %44 = call i64 @EVP_PKEY_id(i32* %43)
  %45 = load i64, i64* @EVP_PKEY_ED25519, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = load i32*, i32** %15, align 8
  %49 = call i64 @EVP_PKEY_id(i32* %48)
  %50 = load i64, i64* @EVP_PKEY_ED448, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %132

52:                                               ; preds = %47, %39
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @bio_err, align 4
  %57 = call i32 @BIO_printf(i32 %56, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %225

58:                                               ; preds = %52
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = call i8* @app_malloc(i64 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i8* %61, i8** %26, align 8
  %62 = load i32, i32* %12, align 4
  switch i32 %62, label %131 [
    i32 128, label %63
    i32 129, label %89
  ]

63:                                               ; preds = %58
  %64 = load i32*, i32** %23, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @EVP_DigestVerifyInit(i32* %64, i32* null, i32* %65, i32* null, i32* %66)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %225

70:                                               ; preds = %63
  %71 = load i32*, i32** %16, align 8
  %72 = load i8*, i8** %26, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @BIO_read(i32* %71, i8* %72, i32 %73)
  store i32 %74, i32* %27, align 4
  %75 = load i32, i32* %27, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @bio_err, align 4
  %80 = call i32 @BIO_printf(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %225

81:                                               ; preds = %70
  %82 = load i32*, i32** %23, align 8
  %83 = load i8*, i8** %18, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = load i8*, i8** %26, align 8
  %87 = load i32, i32* %27, align 4
  %88 = call i32 @EVP_DigestVerify(i32* %82, i8* %83, i64 %85, i8* %86, i32 %87)
  store i32 %88, i32* %22, align 4
  br label %131

89:                                               ; preds = %58
  %90 = load i32*, i32** %23, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @EVP_DigestSignInit(i32* %90, i32* null, i32* %91, i32* null, i32* %92)
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %225

96:                                               ; preds = %89
  %97 = load i32*, i32** %16, align 8
  %98 = load i8*, i8** %26, align 8
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @BIO_read(i32* %97, i8* %98, i32 %99)
  store i32 %100, i32* %27, align 4
  %101 = load i32, i32* %27, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @bio_err, align 4
  %106 = call i32 @BIO_printf(i32 %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %225

107:                                              ; preds = %96
  %108 = load i32*, i32** %23, align 8
  %109 = load i64*, i64** %21, align 8
  %110 = load i8*, i8** %26, align 8
  %111 = load i32, i32* %27, align 4
  %112 = call i32 @EVP_DigestSign(i32* %108, i8* null, i64* %109, i8* %110, i32 %111)
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %22, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %130

115:                                              ; preds = %107
  %116 = load i8**, i8*** %20, align 8
  %117 = icmp ne i8** %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load i64*, i64** %21, align 8
  %120 = load i64, i64* %119, align 8
  %121 = call i8* @app_malloc(i64 %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i8**, i8*** %20, align 8
  store i8* %121, i8** %122, align 8
  %123 = load i32*, i32** %23, align 8
  %124 = load i8**, i8*** %20, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = load i64*, i64** %21, align 8
  %127 = load i8*, i8** %26, align 8
  %128 = load i32, i32* %27, align 4
  %129 = call i32 @EVP_DigestSign(i32* %123, i8* %125, i64* %126, i8* %127, i32 %128)
  store i32 %129, i32* %22, align 4
  br label %130

130:                                              ; preds = %118, %115, %107
  br label %131

131:                                              ; preds = %58, %130, %81
  br label %225

132:                                              ; preds = %47
  %133 = load i32, i32* %12, align 4
  switch i32 %133, label %224 [
    i32 128, label %134
    i32 129, label %172
  ]

134:                                              ; preds = %132
  %135 = load i32*, i32** %23, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @EVP_DigestVerifyInit(i32* %135, i32* null, i32* %136, i32* null, i32* %137)
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %225

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %165, %141
  %143 = load i32*, i32** %16, align 8
  %144 = load i32, i32* @TBUF_MAXSIZE, align 4
  %145 = call i32 @BIO_read(i32* %143, i8* %32, i32 %144)
  store i32 %145, i32* %27, align 4
  %146 = load i32, i32* %27, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %166

149:                                              ; preds = %142
  %150 = load i32, i32* %27, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* @bio_err, align 4
  %154 = call i32 @BIO_printf(i32 %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %225

155:                                              ; preds = %149
  %156 = load i32*, i32** %23, align 8
  %157 = load i32, i32* %27, align 4
  %158 = sext i32 %157 to i64
  %159 = call i32 @EVP_DigestVerifyUpdate(i32* %156, i8* %32, i64 %158)
  store i32 %159, i32* %22, align 4
  %160 = load i32, i32* %22, align 4
  %161 = icmp ne i32 %160, 1
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* @bio_err, align 4
  %164 = call i32 @BIO_printf(i32 %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %225

165:                                              ; preds = %155
  br label %142

166:                                              ; preds = %148
  %167 = load i32*, i32** %23, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = call i32 @EVP_DigestVerifyFinal(i32* %167, i8* %168, i64 %170)
  store i32 %171, i32* %22, align 4
  br label %224

172:                                              ; preds = %132
  %173 = load i32*, i32** %23, align 8
  %174 = load i32*, i32** %14, align 8
  %175 = load i32*, i32** %15, align 8
  %176 = call i32 @EVP_DigestSignInit(i32* %173, i32* null, i32* %174, i32* null, i32* %175)
  %177 = icmp ne i32 %176, 1
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %225

179:                                              ; preds = %172
  br label %180

180:                                              ; preds = %203, %179
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* @TBUF_MAXSIZE, align 4
  %183 = call i32 @BIO_read(i32* %181, i8* %32, i32 %182)
  store i32 %183, i32* %27, align 4
  %184 = load i32, i32* %27, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %204

187:                                              ; preds = %180
  %188 = load i32, i32* %27, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* @bio_err, align 4
  %192 = call i32 @BIO_printf(i32 %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %225

193:                                              ; preds = %187
  %194 = load i32*, i32** %23, align 8
  %195 = load i32, i32* %27, align 4
  %196 = sext i32 %195 to i64
  %197 = call i32 @EVP_DigestSignUpdate(i32* %194, i8* %32, i64 %196)
  store i32 %197, i32* %22, align 4
  %198 = load i32, i32* %22, align 4
  %199 = icmp ne i32 %198, 1
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i32, i32* @bio_err, align 4
  %202 = call i32 @BIO_printf(i32 %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %225

203:                                              ; preds = %193
  br label %180

204:                                              ; preds = %186
  %205 = load i32*, i32** %23, align 8
  %206 = load i64*, i64** %21, align 8
  %207 = call i32 @EVP_DigestSignFinal(i32* %205, i8* null, i64* %206)
  store i32 %207, i32* %22, align 4
  %208 = load i32, i32* %22, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %223

210:                                              ; preds = %204
  %211 = load i8**, i8*** %20, align 8
  %212 = icmp ne i8** %211, null
  br i1 %212, label %213, label %223

213:                                              ; preds = %210
  %214 = load i64*, i64** %21, align 8
  %215 = load i64, i64* %214, align 8
  %216 = call i8* @app_malloc(i64 %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %217 = load i8**, i8*** %20, align 8
  store i8* %216, i8** %217, align 8
  %218 = load i32*, i32** %23, align 8
  %219 = load i8**, i8*** %20, align 8
  %220 = load i8*, i8** %219, align 8
  %221 = load i64*, i64** %21, align 8
  %222 = call i32 @EVP_DigestSignFinal(i32* %218, i8* %220, i64* %221)
  store i32 %222, i32* %22, align 4
  br label %223

223:                                              ; preds = %213, %210, %204
  br label %224

224:                                              ; preds = %132, %223, %166
  br label %225

225:                                              ; preds = %224, %200, %190, %178, %162, %152, %140, %131, %104, %95, %78, %69, %55
  %226 = load i8*, i8** %26, align 8
  %227 = call i32 @OPENSSL_free(i8* %226)
  %228 = load i32*, i32** %23, align 8
  %229 = call i32 @EVP_MD_CTX_free(i32* %228)
  %230 = load i32, i32* %22, align 4
  store i32 %230, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %231

231:                                              ; preds = %225, %35
  %232 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i32, i32* %11, align 4
  ret i32 %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @BIO_printf(i32, i8*) #2

declare dso_local i32 @EVP_MD_CTX_set_pkey_ctx(i32*, i32*) #2

declare dso_local i64 @EVP_PKEY_id(i32*) #2

declare dso_local i8* @app_malloc(i64, i8*) #2

declare dso_local i32 @EVP_DigestVerifyInit(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BIO_read(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestVerify(i32*, i8*, i64, i8*, i32) #2

declare dso_local i32 @EVP_DigestSignInit(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @EVP_DigestSign(i32*, i8*, i64*, i8*, i32) #2

declare dso_local i32 @EVP_DigestVerifyUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestVerifyFinal(i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestSignUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestSignFinal(i32*, i8*, i64*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
