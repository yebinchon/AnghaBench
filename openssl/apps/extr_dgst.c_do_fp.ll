; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_dgst.c_do_fp.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_dgst.c_do_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Read Error in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Verified OK\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Verification Failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Error Verifying Data\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Signature buffer\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Error Signing Data\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" *%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"(%s)= \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s(%s)= \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_fp(i32* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32* %5, i8* %6, i32 %7, i8* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  store i8* %10, i8** %22, align 8
  %31 = load i32, i32* @BUFSIZE, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %23, align 8
  store i32 0, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i8* null, i8** %27, align 8
  br label %33

33:                                               ; preds = %61, %11
  %34 = load i32*, i32** %14, align 8
  %35 = call i64 @BIO_pending(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @BIO_eof(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ true, %33 ], [ %41, %37 ]
  br i1 %43, label %44, label %62

44:                                               ; preds = %42
  %45 = load i32*, i32** %14, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* @BUFSIZE, align 4
  %48 = call i32 @BIO_read(i32* %45, i8* %46, i32 %47)
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %24, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32*, i32** @bio_err, align 8
  %53 = load i8*, i8** %22, align 8
  %54 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i32*, i32** @bio_err, align 8
  %56 = call i32 @ERR_print_errors(i32* %55)
  br label %234

57:                                               ; preds = %44
  %58 = load i32, i32* %24, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %62

61:                                               ; preds = %57
  br label %33

62:                                               ; preds = %60, %42
  %63 = load i8*, i8** %18, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @BIO_get_md_ctx(i32* %66, i32** %28)
  %68 = load i32*, i32** %28, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @EVP_DigestVerifyFinal(i32* %68, i8* %69, i32 %70)
  store i32 %71, i32* %24, align 4
  %72 = load i32, i32* %24, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %88

77:                                               ; preds = %65
  %78 = load i32, i32* %24, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %234

83:                                               ; preds = %77
  %84 = load i32*, i32** @bio_err, align 8
  %85 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32*, i32** @bio_err, align 8
  %87 = call i32 @ERR_print_errors(i32* %86)
  br label %234

88:                                               ; preds = %74
  store i32 0, i32* %26, align 4
  br label %234

89:                                               ; preds = %62
  %90 = load i32*, i32** %17, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %117

92:                                               ; preds = %89
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @BIO_get_md_ctx(i32* %93, i32** %29)
  %95 = load i32*, i32** %17, align 8
  %96 = call i32 @EVP_PKEY_size(i32* %95)
  store i32 %96, i32* %30, align 4
  %97 = load i32, i32* %30, align 4
  %98 = load i32, i32* @BUFSIZE, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i32, i32* %30, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %23, align 8
  %103 = load i64, i64* %23, align 8
  %104 = call i8* @app_malloc(i64 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %104, i8** %27, align 8
  %105 = load i8*, i8** %27, align 8
  store i8* %105, i8** %13, align 8
  br label %106

106:                                              ; preds = %100, %92
  %107 = load i32*, i32** %29, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @EVP_DigestSignFinal(i32* %107, i8* %108, i64* %23)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i32*, i32** @bio_err, align 8
  %113 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32*, i32** @bio_err, align 8
  %115 = call i32 @ERR_print_errors(i32* %114)
  br label %234

116:                                              ; preds = %106
  br label %129

117:                                              ; preds = %89
  %118 = load i32*, i32** %14, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i32, i32* @BUFSIZE, align 4
  %121 = call i64 @BIO_gets(i32* %118, i8* %119, i32 %120)
  store i64 %121, i64* %23, align 8
  %122 = load i64, i64* %23, align 8
  %123 = trunc i64 %122 to i32
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32*, i32** @bio_err, align 8
  %127 = call i32 @ERR_print_errors(i32* %126)
  br label %234

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %116
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32*, i32** %12, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = load i64, i64* %23, align 8
  %136 = call i32 @BIO_write(i32* %133, i8* %134, i64 %135)
  br label %233

137:                                              ; preds = %129
  %138 = load i32, i32* %15, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %172

140:                                              ; preds = %137
  %141 = load i8*, i8** %22, align 8
  %142 = call i8* @newline_escape_filename(i8* %141, i32* %25)
  store i8* %142, i8** %22, align 8
  %143 = load i32, i32* %25, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @BIO_puts(i32* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %140
  store i32 0, i32* %24, align 4
  br label %149

149:                                              ; preds = %163, %148
  %150 = load i32, i32* %24, align 4
  %151 = load i64, i64* %23, align 8
  %152 = trunc i64 %151 to i32
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load i32*, i32** %12, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = load i32, i32* %24, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %24, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %24, align 4
  br label %149

166:                                              ; preds = %149
  %167 = load i32*, i32** %12, align 8
  %168 = load i8*, i8** %22, align 8
  %169 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %168)
  %170 = load i8*, i8** %22, align 8
  %171 = call i32 @OPENSSL_free(i8* %170)
  br label %232

172:                                              ; preds = %137
  %173 = load i8*, i8** %20, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %189

175:                                              ; preds = %172
  %176 = load i32*, i32** %12, align 8
  %177 = load i8*, i8** %20, align 8
  %178 = call i32 @BIO_puts(i32* %176, i8* %177)
  %179 = load i8*, i8** %21, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load i32*, i32** %12, align 8
  %183 = load i8*, i8** %21, align 8
  %184 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %181, %175
  %186 = load i32*, i32** %12, align 8
  %187 = load i8*, i8** %22, align 8
  %188 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %187)
  br label %202

189:                                              ; preds = %172
  %190 = load i8*, i8** %21, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32*, i32** %12, align 8
  %194 = load i8*, i8** %21, align 8
  %195 = load i8*, i8** %22, align 8
  %196 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %194, i8* %195)
  br label %201

197:                                              ; preds = %189
  %198 = load i32*, i32** %12, align 8
  %199 = load i8*, i8** %22, align 8
  %200 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %197, %192
  br label %202

202:                                              ; preds = %201, %185
  store i32 0, i32* %24, align 4
  br label %203

203:                                              ; preds = %226, %202
  %204 = load i32, i32* %24, align 4
  %205 = load i64, i64* %23, align 8
  %206 = trunc i64 %205 to i32
  %207 = icmp slt i32 %204, %206
  br i1 %207, label %208, label %229

208:                                              ; preds = %203
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load i32, i32* %24, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32*, i32** %12, align 8
  %216 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %211, %208
  %218 = load i32*, i32** %12, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = load i32, i32* %24, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %217
  %227 = load i32, i32* %24, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %24, align 4
  br label %203

229:                                              ; preds = %203
  %230 = load i32*, i32** %12, align 8
  %231 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %232

232:                                              ; preds = %229, %166
  br label %233

233:                                              ; preds = %232, %132
  store i32 0, i32* %26, align 4
  br label %234

234:                                              ; preds = %233, %125, %111, %88, %83, %80, %51
  %235 = load i8*, i8** %27, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i8*, i8** %27, align 8
  %239 = load i64, i64* %23, align 8
  %240 = call i32 @OPENSSL_clear_free(i8* %238, i64 %239)
  br label %241

241:                                              ; preds = %237, %234
  %242 = load i32, i32* %26, align 4
  ret i32 %242
}

declare dso_local i64 @BIO_pending(i32*) #1

declare dso_local i32 @BIO_eof(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32 @BIO_get_md_ctx(i32*, i32**) #1

declare dso_local i32 @EVP_DigestVerifyFinal(i32*, i8*, i32) #1

declare dso_local i32 @EVP_PKEY_size(i32*) #1

declare dso_local i8* @app_malloc(i64, i8*) #1

declare dso_local i32 @EVP_DigestSignFinal(i32*, i8*, i64*) #1

declare dso_local i64 @BIO_gets(i32*, i8*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i64) #1

declare dso_local i8* @newline_escape_filename(i8*, i32*) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
