; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_genrsa.c_genrsa_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_genrsa.c_genrsa_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@DEFBITS = common dso_local global i32 0, align 4
@DEFPRIMES = common dso_local global i32 0, align 4
@RSA_F4 = common dso_local global i64 0, align 8
@genrsa_cb = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@genrsa_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@OPENSSL_RSA_MAX_MODULUS_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [144 x i8] c"Warning: It is not recommended to use more than %d bit for RSA keys.\0A         Your key size is %d! Larger key size may behave not as expected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Extra arguments given.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@FORMAT_PEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Generating RSA private key, %d bit long modulus (%d primes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"e is %s (0x%s)\0A\00", align 1
@password_callback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genrsa_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %25 = call i32* (...) @BN_GENCB_new()
  store i32* %25, i32** %5, align 8
  store i32* null, i32** %7, align 8
  %26 = call i32* (...) @BN_new()
  store i32* %26, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 1, i32* %13, align 4
  %27 = load i32, i32* @DEFBITS, align 4
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @DEFPRIMES, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i64, i64* @RSA_F4, align 8
  store i64 %29, i64* %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32*, i32** %5, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %2
  br label %210

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @genrsa_cb, align 4
  %39 = load i32, i32* @bio_err, align 4
  %40 = call i32 @BN_GENCB_set(i32* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32, i32* @genrsa_options, align 4
  %44 = call i8* @opt_init(i32 %41, i8** %42, i32 %43)
  store i8* %44, i8** %21, align 8
  br label %45

45:                                               ; preds = %87, %36
  %46 = call i32 (...) @opt_next()
  store i32 %46, i32* %24, align 4
  %47 = icmp ne i32 %46, 136
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  %49 = load i32, i32* %24, align 4
  switch i32 %49, label %87 [
    i32 136, label %50
    i32 135, label %50
    i32 133, label %55
    i32 139, label %58
    i32 134, label %59
    i32 132, label %61
    i32 137, label %63
    i32 129, label %66
    i32 131, label %72
    i32 138, label %74
    i32 130, label %80
    i32 128, label %86
  ]

50:                                               ; preds = %48, %48
  br label %51

51:                                               ; preds = %116, %50
  %52 = load i32, i32* @bio_err, align 4
  %53 = load i8*, i8** %21, align 8
  %54 = call i32 (i32, i8*, ...) @BIO_printf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %210

55:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  %56 = load i32, i32* @genrsa_options, align 4
  %57 = call i32 @opt_help(i32 %56)
  br label %210

58:                                               ; preds = %48
  store i64 3, i64* %17, align 8
  br label %87

59:                                               ; preds = %48
  %60 = load i64, i64* @RSA_F4, align 8
  store i64 %60, i64* %17, align 8
  br label %87

61:                                               ; preds = %48
  %62 = call i8* (...) @opt_arg()
  store i8* %62, i8** %18, align 8
  br label %87

63:                                               ; preds = %48
  %64 = call i8* (...) @opt_arg()
  %65 = call i32* @setup_engine(i8* %64, i32 0)
  store i32* %65, i32** %7, align 8
  br label %87

66:                                               ; preds = %48
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @opt_rand(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %210

71:                                               ; preds = %66
  br label %87

72:                                               ; preds = %48
  %73 = call i8* (...) @opt_arg()
  store i8* %73, i8** %19, align 8
  br label %87

74:                                               ; preds = %48
  %75 = call i32 (...) @opt_unknown()
  %76 = call i32 @opt_cipher(i32 %75, i32** %12)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %210

79:                                               ; preds = %74
  br label %87

80:                                               ; preds = %48
  %81 = call i8* (...) @opt_arg()
  %82 = call i32 @opt_int(i8* %81, i32* %16)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %210

85:                                               ; preds = %80
  br label %87

86:                                               ; preds = %48
  store i32 1, i32* @verbose, align 4
  br label %87

87:                                               ; preds = %48, %86, %85, %79, %72, %71, %63, %61, %59, %58
  br label %45

88:                                               ; preds = %45
  %89 = call i32 (...) @opt_num_rest()
  store i32 %89, i32* %3, align 4
  %90 = call i8** (...) @opt_rest()
  store i8** %90, i8*** %4, align 8
  %91 = load i32, i32* %3, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load i8**, i8*** %4, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @opt_int(i8* %96, i32* %14)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %14, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %93
  br label %210

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @OPENSSL_RSA_MAX_MODULUS_BITS, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* @bio_err, align 4
  %109 = load i32, i32* @OPENSSL_RSA_MAX_MODULUS_BITS, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 (i32, i8*, ...) @BIO_printf(i32 %108, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %103
  br label %120

113:                                              ; preds = %88
  %114 = load i32, i32* %3, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @bio_err, align 4
  %118 = call i32 (i32, i8*, ...) @BIO_printf(i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %51

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %112
  store i32 1, i32* %15, align 4
  %121 = load i8*, i8** %19, align 8
  %122 = call i32 @app_passwd(i32* null, i8* %121, i32* null, i8** %20)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* @bio_err, align 4
  %126 = call i32 (i32, i8*, ...) @BIO_printf(i32 %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %210

127:                                              ; preds = %120
  %128 = load i8*, i8** %18, align 8
  %129 = load i32, i32* @FORMAT_PEM, align 4
  %130 = load i32, i32* %15, align 4
  %131 = call i32* @bio_open_owner(i8* %128, i32 %129, i32 %130)
  store i32* %131, i32** %9, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %210

135:                                              ; preds = %127
  %136 = load i32, i32* @verbose, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* @bio_err, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %16, align 4
  %142 = call i32 (i32, i8*, ...) @BIO_printf(i32 %139, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %135
  %144 = load i32*, i32** %7, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %7, align 8
  %148 = call i32* @RSA_new_method(i32* %147)
  br label %151

149:                                              ; preds = %143
  %150 = call i32* (...) @RSA_new()
  br label %151

151:                                              ; preds = %149, %146
  %152 = phi i32* [ %148, %146 ], [ %150, %149 ]
  store i32* %152, i32** %11, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %210

156:                                              ; preds = %151
  %157 = load i32*, i32** %8, align 8
  %158 = load i64, i64* %17, align 8
  %159 = call i32 @BN_set_word(i32* %157, i64 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @RSA_generate_multi_prime_key(i32* %162, i32 %163, i32 %164, i32* %165, i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %161, %156
  br label %210

170:                                              ; preds = %161
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @RSA_get0_key(i32* %171, i32* null, i32** %10, i32* null)
  %173 = load i32*, i32** %10, align 8
  %174 = call i8* @BN_bn2hex(i32* %173)
  store i8* %174, i8** %22, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = call i8* @BN_bn2dec(i32* %175)
  store i8* %176, i8** %23, align 8
  %177 = load i8*, i8** %22, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %190

179:                                              ; preds = %170
  %180 = load i8*, i8** %23, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load i32, i32* @verbose, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32, i32* @bio_err, align 4
  %187 = load i8*, i8** %23, align 8
  %188 = load i8*, i8** %22, align 8
  %189 = call i32 (i32, i8*, ...) @BIO_printf(i32 %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %187, i8* %188)
  br label %190

190:                                              ; preds = %185, %182, %179, %170
  %191 = load i8*, i8** %22, align 8
  %192 = call i32 @OPENSSL_free(i8* %191)
  %193 = load i8*, i8** %23, align 8
  %194 = call i32 @OPENSSL_free(i8* %193)
  %195 = load i8*, i8** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i8* %195, i8** %196, align 8
  %197 = load i8*, i8** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i8* %197, i8** %198, align 8
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @assert(i32 %199)
  %201 = load i32*, i32** %9, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = load i32*, i32** %12, align 8
  %204 = load i64, i64* @password_callback, align 8
  %205 = inttoptr i64 %204 to i32*
  %206 = call i32 @PEM_write_bio_RSAPrivateKey(i32* %201, i32* %202, i32* %203, i32* null, i32 0, i32* %205, %struct.TYPE_3__* %6)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %190
  br label %210

209:                                              ; preds = %190
  store i32 0, i32* %13, align 4
  br label %210

210:                                              ; preds = %209, %208, %169, %155, %134, %124, %102, %84, %78, %70, %55, %51, %35
  %211 = load i32*, i32** %8, align 8
  %212 = call i32 @BN_free(i32* %211)
  %213 = load i32*, i32** %5, align 8
  %214 = call i32 @BN_GENCB_free(i32* %213)
  %215 = load i32*, i32** %11, align 8
  %216 = call i32 @RSA_free(i32* %215)
  %217 = load i32*, i32** %9, align 8
  %218 = call i32 @BIO_free_all(i32* %217)
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @release_engine(i32* %219)
  %221 = load i8*, i8** %20, align 8
  %222 = call i32 @OPENSSL_free(i8* %221)
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %210
  %226 = load i32, i32* @bio_err, align 4
  %227 = call i32 @ERR_print_errors(i32 %226)
  br label %228

228:                                              ; preds = %225, %210
  %229 = load i32, i32* %13, align 4
  ret i32 %229
}

declare dso_local i32* @BN_GENCB_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_GENCB_set(i32*, i32, i32) #1

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_cipher(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @app_passwd(i32*, i8*, i32*, i8**) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32* @RSA_new_method(i32*) #1

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i64) #1

declare dso_local i32 @RSA_generate_multi_prime_key(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @RSA_get0_key(i32*, i32*, i32**, i32*) #1

declare dso_local i8* @BN_bn2hex(i32*) #1

declare dso_local i8* @BN_bn2dec(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PEM_write_bio_RSAPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_GENCB_free(i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
