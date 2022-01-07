; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_dsaparam.c_dsaparam_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_dsaparam.c_dsaparam_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@dsaparam_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@OPENSSL_DSA_MAX_MODULUS_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [144 x i8] c"Warning: It is not recommended to use more than %d bit for DSA keys.\0A         Your key size is %d! Larger key size may behave not as expected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error allocating BN_GENCB object\0A\00", align 1
@dsa_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Error allocating DSA object\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Generating DSA parameters, %d bit long prime\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"This could take some time\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Error, DSA key generation failed\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"unable to load DSA parameters\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"BN space\00", align 1
@bio_out = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"static DSA *get_dsa%d(void)\0A{\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dsap\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"dsaq\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dsag\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"    DSA *dsa = DSA_new();\0A    BIGNUM *p, *q, *g;\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"    if (dsa == NULL)\0A        return NULL;\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"    if (!DSA_set0_pqg(dsa, p = BN_bin2bn(dsap_%d, sizeof(dsap_%d), NULL),\0A\00", align 1
@.str.16 = private unnamed_addr constant [75 x i8] c"                           q = BN_bin2bn(dsaq_%d, sizeof(dsaq_%d), NULL),\0A\00", align 1
@.str.17 = private unnamed_addr constant [78 x i8] c"                           g = BN_bin2bn(dsag_%d, sizeof(dsag_%d), NULL))) {\0A\00", align 1
@.str.18 = private unnamed_addr constant [129 x i8] c"        DSA_free(dsa);\0A        BN_free(p);\0A        BN_free(q);\0A        BN_free(g);\0A        return NULL;\0A    }\0A    return dsa;\0A}\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"unable to write DSA parameters\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsaparam_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %32 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %33, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* @dsaparam_options, align 4
  %37 = call i8* @opt_init(i32 %34, i8** %35, i32 %36)
  store i8* %37, i8** %23, align 8
  br label %38

38:                                               ; preds = %83, %2
  %39 = call i32 (...) @opt_next()
  store i32 %39, i32* %24, align 4
  %40 = icmp ne i32 %39, 139
  br i1 %40, label %41, label %84

41:                                               ; preds = %38
  %42 = load i32, i32* %24, align 4
  switch i32 %42, label %83 [
    i32 139, label %43
    i32 138, label %43
    i32 136, label %48
    i32 134, label %51
    i32 135, label %58
    i32 131, label %60
    i32 132, label %67
    i32 140, label %69
    i32 129, label %72
    i32 141, label %73
    i32 137, label %74
    i32 130, label %75
    i32 133, label %81
    i32 128, label %82
  ]

43:                                               ; preds = %41, %41
  br label %44

44:                                               ; preds = %65, %56, %43
  %45 = load i32, i32* @bio_err, align 4
  %46 = load i8*, i8** %23, align 8
  %47 = call i32 (i32, i8*, ...) @BIO_printf(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %315

48:                                               ; preds = %41
  %49 = load i32, i32* @dsaparam_options, align 4
  %50 = call i32 @opt_help(i32 %49)
  store i32 0, i32* %17, align 4
  br label %315

51:                                               ; preds = %41
  %52 = call i8* (...) @opt_arg()
  %53 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %54 = call i32 @opt_format(i8* %52, i32 %53, i32* %13)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %44

57:                                               ; preds = %51
  br label %83

58:                                               ; preds = %41
  %59 = call i8* (...) @opt_arg()
  store i8* %59, i8** %21, align 8
  br label %83

60:                                               ; preds = %41
  %61 = call i8* (...) @opt_arg()
  %62 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %63 = call i32 @opt_format(i8* %61, i32 %62, i32* %14)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %44

66:                                               ; preds = %60
  br label %83

67:                                               ; preds = %41
  %68 = call i8* (...) @opt_arg()
  store i8* %68, i8** %22, align 8
  br label %83

69:                                               ; preds = %41
  %70 = call i8* (...) @opt_arg()
  %71 = call i32* @setup_engine(i8* %70, i32 0)
  store i32* %71, i32** %5, align 8
  br label %83

72:                                               ; preds = %41
  store i32 1, i32* %19, align 4
  br label %83

73:                                               ; preds = %41
  store i32 1, i32* %16, align 4
  br label %83

74:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %83

75:                                               ; preds = %41
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @opt_rand(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %315

80:                                               ; preds = %75
  br label %83

81:                                               ; preds = %41
  store i32 1, i32* %15, align 4
  br label %83

82:                                               ; preds = %41
  store i32 1, i32* @verbose, align 4
  br label %83

83:                                               ; preds = %41, %82, %81, %80, %74, %73, %72, %69, %67, %66, %58, %57
  br label %38

84:                                               ; preds = %38
  %85 = call i32 (...) @opt_num_rest()
  store i32 %85, i32* %3, align 4
  %86 = call i8** (...) @opt_rest()
  store i8** %86, i8*** %4, align 8
  %87 = load i32, i32* %3, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load i8**, i8*** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @opt_int(i8* %92, i32* %11)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %89
  br label %315

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %84
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  store i32 %105, i32* %20, align 4
  %106 = load i8*, i8** %21, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32* @bio_open_default(i8* %106, i8 signext 114, i32 %107)
  store i32* %108, i32** %7, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %315

112:                                              ; preds = %101
  %113 = load i8*, i8** %22, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %20, align 4
  %116 = call i32* @bio_open_owner(i8* %113, i32 %114, i32 %115)
  store i32* %116, i32** %8, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %315

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %171

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @OPENSSL_DSA_MAX_MODULUS_BITS, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32, i32* @bio_err, align 4
  %129 = load i32, i32* @OPENSSL_DSA_MAX_MODULUS_BITS, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i32, i8*, ...) @BIO_printf(i32 %128, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %123
  %133 = call i32* (...) @BN_GENCB_new()
  store i32* %133, i32** %9, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @bio_err, align 4
  %138 = call i32 (i32, i8*, ...) @BIO_printf(i32 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %315

139:                                              ; preds = %132
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* @dsa_cb, align 4
  %142 = load i32, i32* @bio_err, align 4
  %143 = call i32 @BN_GENCB_set(i32* %140, i32 %141, i32 %142)
  %144 = call i32* (...) @DSA_new()
  store i32* %144, i32** %6, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load i32, i32* @bio_err, align 4
  %149 = call i32 (i32, i8*, ...) @BIO_printf(i32 %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %315

150:                                              ; preds = %139
  %151 = load i32, i32* @verbose, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32, i32* @bio_err, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 (i32, i8*, ...) @BIO_printf(i32 %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @bio_err, align 4
  %158 = call i32 (i32, i8*, ...) @BIO_printf(i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %159

159:                                              ; preds = %153, %150
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = call i32 @DSA_generate_parameters_ex(i32* %160, i32 %161, i32* null, i32 0, i32* null, i32* null, i32* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %159
  %166 = load i32, i32* @bio_err, align 4
  %167 = call i32 @ERR_print_errors(i32 %166)
  %168 = load i32, i32* @bio_err, align 4
  %169 = call i32 (i32, i8*, ...) @BIO_printf(i32 %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %315

170:                                              ; preds = %159
  br label %182

171:                                              ; preds = %120
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @FORMAT_ASN1, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32*, i32** %7, align 8
  %177 = call i32* @d2i_DSAparams_bio(i32* %176, i32* null)
  store i32* %177, i32** %6, align 8
  br label %181

178:                                              ; preds = %171
  %179 = load i32*, i32** %7, align 8
  %180 = call i32* @PEM_read_bio_DSAparams(i32* %179, i32* null, i32* null, i32* null)
  store i32* %180, i32** %6, align 8
  br label %181

181:                                              ; preds = %178, %175
  br label %182

182:                                              ; preds = %181, %170
  %183 = load i32*, i32** %6, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32, i32* @bio_err, align 4
  %187 = call i32 (i32, i8*, ...) @BIO_printf(i32 %186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %188 = load i32, i32* @bio_err, align 4
  %189 = call i32 @ERR_print_errors(i32 %188)
  br label %315

190:                                              ; preds = %182
  %191 = load i32, i32* %19, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32*, i32** %8, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 @DSAparams_print(i32* %194, i32* %195)
  br label %197

197:                                              ; preds = %193, %190
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %248

200:                                              ; preds = %197
  store i32* null, i32** %25, align 8
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 @DSA_get0_pqg(i32* %201, i32** %25, i32** %26, i32** %27)
  %203 = load i32*, i32** %25, align 8
  %204 = call i32 @BN_num_bytes(i32* %203)
  store i32 %204, i32* %29, align 4
  %205 = load i32*, i32** %25, align 8
  %206 = call i32 @BN_num_bits(i32* %205)
  store i32 %206, i32* %30, align 4
  %207 = load i32, i32* %29, align 4
  %208 = add nsw i32 %207, 20
  %209 = call i8* @app_malloc(i32 %208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i8* %209, i8** %28, align 8
  %210 = load i32, i32* @bio_out, align 4
  %211 = load i32, i32* %30, align 4
  %212 = call i32 (i32, i8*, ...) @BIO_printf(i32 %210, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @bio_out, align 4
  %214 = load i32*, i32** %25, align 8
  %215 = load i32, i32* %30, align 4
  %216 = load i8*, i8** %28, align 8
  %217 = call i32 @print_bignum_var(i32 %213, i32* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %215, i8* %216)
  %218 = load i32, i32* @bio_out, align 4
  %219 = load i32*, i32** %26, align 8
  %220 = load i32, i32* %30, align 4
  %221 = load i8*, i8** %28, align 8
  %222 = call i32 @print_bignum_var(i32 %218, i32* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %220, i8* %221)
  %223 = load i32, i32* @bio_out, align 4
  %224 = load i32*, i32** %27, align 8
  %225 = load i32, i32* %30, align 4
  %226 = load i8*, i8** %28, align 8
  %227 = call i32 @print_bignum_var(i32 %223, i32* %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %225, i8* %226)
  %228 = load i32, i32* @bio_out, align 4
  %229 = call i32 (i32, i8*, ...) @BIO_printf(i32 %228, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %230 = load i32, i32* @bio_out, align 4
  %231 = call i32 (i32, i8*, ...) @BIO_printf(i32 %230, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  %232 = load i32, i32* @bio_out, align 4
  %233 = load i32, i32* %30, align 4
  %234 = load i32, i32* %30, align 4
  %235 = call i32 (i32, i8*, ...) @BIO_printf(i32 %232, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 %233, i32 %234)
  %236 = load i32, i32* @bio_out, align 4
  %237 = load i32, i32* %30, align 4
  %238 = load i32, i32* %30, align 4
  %239 = call i32 (i32, i8*, ...) @BIO_printf(i32 %236, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0), i32 %237, i32 %238)
  %240 = load i32, i32* @bio_out, align 4
  %241 = load i32, i32* %30, align 4
  %242 = load i32, i32* %30, align 4
  %243 = call i32 (i32, i8*, ...) @BIO_printf(i32 %240, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.17, i64 0, i64 0), i32 %241, i32 %242)
  %244 = load i32, i32* @bio_out, align 4
  %245 = call i32 (i32, i8*, ...) @BIO_printf(i32 %244, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.18, i64 0, i64 0))
  %246 = load i8*, i8** %28, align 8
  %247 = call i32 @OPENSSL_free(i8* %246)
  br label %248

248:                                              ; preds = %200, %197
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* @FORMAT_ASN1, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store i32 1, i32* %15, align 4
  br label %256

256:                                              ; preds = %255, %252, %248
  %257 = load i32, i32* %15, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %280, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* @FORMAT_ASN1, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load i32*, i32** %8, align 8
  %265 = load i32*, i32** %6, align 8
  %266 = call i32 @i2d_DSAparams_bio(i32* %264, i32* %265)
  store i32 %266, i32* %18, align 4
  br label %271

267:                                              ; preds = %259
  %268 = load i32*, i32** %8, align 8
  %269 = load i32*, i32** %6, align 8
  %270 = call i32 @PEM_write_bio_DSAparams(i32* %268, i32* %269)
  store i32 %270, i32* %18, align 4
  br label %271

271:                                              ; preds = %267, %263
  %272 = load i32, i32* %18, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* @bio_err, align 4
  %276 = call i32 (i32, i8*, ...) @BIO_printf(i32 %275, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %277 = load i32, i32* @bio_err, align 4
  %278 = call i32 @ERR_print_errors(i32 %277)
  br label %315

279:                                              ; preds = %271
  br label %280

280:                                              ; preds = %279, %256
  %281 = load i32, i32* %12, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %314

283:                                              ; preds = %280
  %284 = load i32*, i32** %6, align 8
  %285 = call i32* @DSAparams_dup(i32* %284)
  store i32* %285, i32** %31, align 8
  %286 = icmp eq i32* %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  br label %315

288:                                              ; preds = %283
  %289 = load i32*, i32** %31, align 8
  %290 = call i32 @DSA_generate_key(i32* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %297, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* @bio_err, align 4
  %294 = call i32 @ERR_print_errors(i32 %293)
  %295 = load i32*, i32** %31, align 8
  %296 = call i32 @DSA_free(i32* %295)
  br label %315

297:                                              ; preds = %288
  %298 = load i32, i32* %20, align 4
  %299 = call i32 @assert(i32 %298)
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* @FORMAT_ASN1, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %297
  %304 = load i32*, i32** %8, align 8
  %305 = load i32*, i32** %31, align 8
  %306 = call i32 @i2d_DSAPrivateKey_bio(i32* %304, i32* %305)
  store i32 %306, i32* %18, align 4
  br label %311

307:                                              ; preds = %297
  %308 = load i32*, i32** %8, align 8
  %309 = load i32*, i32** %31, align 8
  %310 = call i32 @PEM_write_bio_DSAPrivateKey(i32* %308, i32* %309, i32* null, i32* null, i32 0, i32* null, i32* null)
  store i32 %310, i32* %18, align 4
  br label %311

311:                                              ; preds = %307, %303
  %312 = load i32*, i32** %31, align 8
  %313 = call i32 @DSA_free(i32* %312)
  br label %314

314:                                              ; preds = %311, %280
  store i32 0, i32* %17, align 4
  br label %315

315:                                              ; preds = %314, %292, %287, %274, %185, %165, %147, %136, %119, %111, %98, %79, %48, %44
  %316 = load i32*, i32** %9, align 8
  %317 = call i32 @BN_GENCB_free(i32* %316)
  %318 = load i32*, i32** %7, align 8
  %319 = call i32 @BIO_free(i32* %318)
  %320 = load i32*, i32** %8, align 8
  %321 = call i32 @BIO_free_all(i32* %320)
  %322 = load i32*, i32** %6, align 8
  %323 = call i32 @DSA_free(i32* %322)
  %324 = load i32*, i32** %5, align 8
  %325 = call i32 @release_engine(i32* %324)
  %326 = load i32, i32* %17, align 4
  ret i32 %326
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32* @BN_GENCB_new(...) #1

declare dso_local i32 @BN_GENCB_set(i32*, i32, i32) #1

declare dso_local i32* @DSA_new(...) #1

declare dso_local i32 @DSA_generate_parameters_ex(i32*, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32* @d2i_DSAparams_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_DSAparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DSAparams_print(i32*, i32*) #1

declare dso_local i32 @DSA_get0_pqg(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @print_bignum_var(i32, i32*, i8*, i32, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @i2d_DSAparams_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DSAparams(i32*, i32*) #1

declare dso_local i32* @DSAparams_dup(i32*) #1

declare dso_local i32 @DSA_generate_key(i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @i2d_DSAPrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DSAPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_GENCB_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
