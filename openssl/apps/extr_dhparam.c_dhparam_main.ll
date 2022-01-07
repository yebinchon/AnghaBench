; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_dhparam.c_dhparam_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_dhparam.c_dhparam_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@dhparam_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@DEFBITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"generator may not be chosen for DSA parameters\0A\00", align 1
@dh_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Generating DSA parameters, %d bit long prime\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Generating DH parameters, %d bit long safe prime, generator %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"This is going to take a long time\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"unable to load DSA parameters\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to load DH parameters\0A\00", align 1
@DH_CHECK_P_NOT_PRIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"WARNING: p value is not prime\0A\00", align 1
@DH_CHECK_P_NOT_SAFE_PRIME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"WARNING: p value is not a safe prime\0A\00", align 1
@DH_CHECK_Q_NOT_PRIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"WARNING: q value is not a prime\0A\00", align 1
@DH_CHECK_INVALID_Q_VALUE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"WARNING: q value is invalid\0A\00", align 1
@DH_CHECK_INVALID_J_VALUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"WARNING: j value is invalid\0A\00", align 1
@DH_UNABLE_TO_CHECK_GENERATOR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"WARNING: unable to check the generator value\0A\00", align 1
@DH_NOT_SUITABLE_GENERATOR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"WARNING: the g value is not a generator\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"DH parameters appear to be ok.\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"ERROR: Invalid parameters generated\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"print a BN\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"static DH *get_dh%d(void)\0A{\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dhp\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"dhg\00", align 1
@.str.20 = private unnamed_addr constant [85 x i8] c"    DH *dh = DH_new();\0A    BIGNUM *p, *g;\0A\0A    if (dh == NULL)\0A        return NULL;\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"    p = BN_bin2bn(dhp_%d, sizeof(dhp_%d), NULL);\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"    g = BN_bin2bn(dhg_%d, sizeof(dhg_%d), NULL);\0A\00", align 1
@.str.23 = private unnamed_addr constant [167 x i8] c"    if (p == NULL || g == NULL\0A            || !DH_set0_pqg(dh, p, NULL, g)) {\0A        DH_free(dh);\0A        BN_free(p);\0A        BN_free(g);\0A        return NULL;\0A    }\0A\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"    if (!DH_set_length(dh, %ld)) {\0A        DH_free(dh);\0A        return NULL;\0A    }\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"    return dh;\0A}\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"unable to write DH parameters\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhparam_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %33 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %34, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i8**, i8*** %4, align 8
  %37 = load i32, i32* @dhparam_options, align 4
  %38 = call i8* @opt_init(i32 %35, i8** %36, i32 %37)
  store i8* %38, i8** %10, align 8
  br label %39

39:                                               ; preds = %87, %2
  %40 = call i32 (...) @opt_next()
  store i32 %40, i32* %23, align 4
  %41 = icmp ne i32 %40, 137
  br i1 %41, label %42, label %88

42:                                               ; preds = %39
  %43 = load i32, i32* %23, align 4
  switch i32 %43, label %87 [
    i32 137, label %44
    i32 136, label %44
    i32 135, label %49
    i32 133, label %52
    i32 130, label %59
    i32 134, label %66
    i32 131, label %68
    i32 138, label %70
    i32 140, label %73
    i32 128, label %74
    i32 139, label %75
    i32 141, label %76
    i32 144, label %77
    i32 143, label %78
    i32 142, label %79
    i32 132, label %80
    i32 129, label %81
  ]

44:                                               ; preds = %42, %42
  br label %45

45:                                               ; preds = %64, %57, %44
  %46 = load i32*, i32** @bio_err, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %463

49:                                               ; preds = %42
  %50 = load i32, i32* @dhparam_options, align 4
  %51 = call i32 @opt_help(i32 %50)
  store i32 0, i32* %16, align 4
  br label %463

52:                                               ; preds = %42
  %53 = call i8* (...) @opt_arg()
  %54 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %55 = call i32 @opt_format(i8* %53, i32 %54, i32* %19)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %45

58:                                               ; preds = %52
  br label %87

59:                                               ; preds = %42
  %60 = call i8* (...) @opt_arg()
  %61 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %62 = call i32 @opt_format(i8* %60, i32 %61, i32* %20)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %45

65:                                               ; preds = %59
  br label %87

66:                                               ; preds = %42
  %67 = call i8* (...) @opt_arg()
  store i8* %67, i8** %8, align 8
  br label %87

68:                                               ; preds = %42
  %69 = call i8* (...) @opt_arg()
  store i8* %69, i8** %9, align 8
  br label %87

70:                                               ; preds = %42
  %71 = call i8* (...) @opt_arg()
  %72 = call i32* @setup_engine(i8* %71, i32 0)
  store i32* %72, i32** %11, align 8
  br label %87

73:                                               ; preds = %42
  store i32 1, i32* %21, align 4
  br label %87

74:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  br label %87

75:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %87

76:                                               ; preds = %42
  store i32 1, i32* %15, align 4
  br label %87

77:                                               ; preds = %42
  store i32 2, i32* %18, align 4
  br label %87

78:                                               ; preds = %42
  store i32 3, i32* %18, align 4
  br label %87

79:                                               ; preds = %42
  store i32 5, i32* %18, align 4
  br label %87

80:                                               ; preds = %42
  store i32 1, i32* %22, align 4
  br label %87

81:                                               ; preds = %42
  %82 = load i32, i32* %23, align 4
  %83 = call i32 @opt_rand(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %463

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %42, %86, %80, %79, %78, %77, %76, %75, %74, %73, %70, %68, %66, %65, %58
  br label %39

88:                                               ; preds = %39
  %89 = call i32 (...) @opt_num_rest()
  store i32 %89, i32* %3, align 4
  %90 = call i8** (...) @opt_rest()
  store i8** %90, i8*** %4, align 8
  %91 = load i8**, i8*** %4, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load i8**, i8*** %4, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @opt_int(i8* %98, i32* %17)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %17, align 4
  %103 = icmp sle i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %95
  br label %463

105:                                              ; preds = %101, %88
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @DEFBITS, align 4
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %111, %108, %105
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32*, i32** @bio_err, align 8
  %121 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %463

122:                                              ; preds = %116, %113
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %20, align 4
  %125 = call i32* @bio_open_default(i8* %123, i8 signext 119, i32 %124)
  store i32* %125, i32** %6, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %463

129:                                              ; preds = %122
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* %18, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  store i32 2, i32* %18, align 4
  br label %136

136:                                              ; preds = %135, %132, %129
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %212

139:                                              ; preds = %136
  %140 = call i32* (...) @BN_GENCB_new()
  store i32* %140, i32** %24, align 8
  %141 = load i32*, i32** %24, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32*, i32** @bio_err, align 8
  %145 = call i32 @ERR_print_errors(i32* %144)
  br label %463

146:                                              ; preds = %139
  %147 = load i32*, i32** %24, align 8
  %148 = load i32, i32* @dh_cb, align 4
  %149 = load i32*, i32** @bio_err, align 8
  %150 = call i32 @BN_GENCB_set(i32* %147, i32 %148, i32* %149)
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %186

153:                                              ; preds = %146
  %154 = call i32* (...) @DSA_new()
  store i32* %154, i32** %25, align 8
  %155 = load i32*, i32** @bio_err, align 8
  %156 = load i32, i32* %17, align 4
  %157 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %155, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  %158 = load i32*, i32** %25, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %153
  %161 = load i32*, i32** %25, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load i32*, i32** %24, align 8
  %164 = call i32 @DSA_generate_parameters_ex(i32* %161, i32 %162, i32* null, i32 0, i32* null, i32* null, i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %160, %153
  %167 = load i32*, i32** %25, align 8
  %168 = call i32 @DSA_free(i32* %167)
  %169 = load i32*, i32** %24, align 8
  %170 = call i32 @BN_GENCB_free(i32* %169)
  %171 = load i32*, i32** @bio_err, align 8
  %172 = call i32 @ERR_print_errors(i32* %171)
  br label %463

173:                                              ; preds = %160
  %174 = load i32*, i32** %25, align 8
  %175 = call i32* @DSA_dup_DH(i32* %174)
  store i32* %175, i32** %7, align 8
  %176 = load i32*, i32** %25, align 8
  %177 = call i32 @DSA_free(i32* %176)
  %178 = load i32*, i32** %7, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load i32*, i32** %24, align 8
  %182 = call i32 @BN_GENCB_free(i32* %181)
  %183 = load i32*, i32** @bio_err, align 8
  %184 = call i32 @ERR_print_errors(i32* %183)
  br label %463

185:                                              ; preds = %173
  br label %209

186:                                              ; preds = %146
  %187 = call i32* (...) @DH_new()
  store i32* %187, i32** %7, align 8
  %188 = load i32*, i32** @bio_err, align 8
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %18, align 4
  %191 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %188, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %189, i32 %190)
  %192 = load i32*, i32** @bio_err, align 8
  %193 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %194 = load i32*, i32** %7, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %203, label %196

196:                                              ; preds = %186
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32*, i32** %24, align 8
  %201 = call i32 @DH_generate_parameters_ex(i32* %197, i32 %198, i32 %199, i32* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %196, %186
  %204 = load i32*, i32** %24, align 8
  %205 = call i32 @BN_GENCB_free(i32* %204)
  %206 = load i32*, i32** @bio_err, align 8
  %207 = call i32 @ERR_print_errors(i32* %206)
  br label %463

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208, %185
  %210 = load i32*, i32** %24, align 8
  %211 = call i32 @BN_GENCB_free(i32* %210)
  br label %281

212:                                              ; preds = %136
  %213 = load i8*, i8** %8, align 8
  %214 = load i32, i32* %19, align 4
  %215 = call i32* @bio_open_default(i8* %213, i8 signext 114, i32 %214)
  store i32* %215, i32** %5, align 8
  %216 = load i32*, i32** %5, align 8
  %217 = icmp eq i32* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %463

219:                                              ; preds = %212
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %251

222:                                              ; preds = %219
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* @FORMAT_ASN1, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i32*, i32** %5, align 8
  %228 = call i32* @d2i_DSAparams_bio(i32* %227, i32* null)
  store i32* %228, i32** %26, align 8
  br label %232

229:                                              ; preds = %222
  %230 = load i32*, i32** %5, align 8
  %231 = call i32* @PEM_read_bio_DSAparams(i32* %230, i32* null, i32* null, i32* null)
  store i32* %231, i32** %26, align 8
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32*, i32** %26, align 8
  %234 = icmp eq i32* %233, null
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load i32*, i32** @bio_err, align 8
  %237 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %236, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %238 = load i32*, i32** @bio_err, align 8
  %239 = call i32 @ERR_print_errors(i32* %238)
  br label %463

240:                                              ; preds = %232
  %241 = load i32*, i32** %26, align 8
  %242 = call i32* @DSA_dup_DH(i32* %241)
  store i32* %242, i32** %7, align 8
  %243 = load i32*, i32** %26, align 8
  %244 = call i32 @DSA_free(i32* %243)
  %245 = load i32*, i32** %7, align 8
  %246 = icmp eq i32* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load i32*, i32** @bio_err, align 8
  %249 = call i32 @ERR_print_errors(i32* %248)
  br label %463

250:                                              ; preds = %240
  br label %280

251:                                              ; preds = %219
  %252 = load i32, i32* %19, align 4
  %253 = load i32, i32* @FORMAT_ASN1, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %268

255:                                              ; preds = %251
  %256 = load i32*, i32** %5, align 8
  %257 = call i32* @d2i_DHparams_bio(i32* %256, i32* null)
  store i32* %257, i32** %7, align 8
  %258 = load i32*, i32** %7, align 8
  %259 = icmp eq i32* %258, null
  br i1 %259, label %260, label %267

260:                                              ; preds = %255
  %261 = load i32*, i32** %5, align 8
  %262 = call i64 @BIO_reset(i32* %261)
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = load i32*, i32** %5, align 8
  %266 = call i32* @d2i_DHxparams_bio(i32* %265, i32* null)
  store i32* %266, i32** %7, align 8
  br label %267

267:                                              ; preds = %264, %260, %255
  br label %271

268:                                              ; preds = %251
  %269 = load i32*, i32** %5, align 8
  %270 = call i32* @PEM_read_bio_DHparams(i32* %269, i32* null, i32* null, i32* null)
  store i32* %270, i32** %7, align 8
  br label %271

271:                                              ; preds = %268, %267
  %272 = load i32*, i32** %7, align 8
  %273 = icmp eq i32* %272, null
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load i32*, i32** @bio_err, align 8
  %276 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %275, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %277 = load i32*, i32** @bio_err, align 8
  %278 = call i32 @ERR_print_errors(i32* %277)
  br label %463

279:                                              ; preds = %271
  br label %280

280:                                              ; preds = %279, %250
  br label %281

281:                                              ; preds = %280, %209
  %282 = load i32, i32* %14, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32*, i32** %6, align 8
  %286 = load i32*, i32** %7, align 8
  %287 = call i32 @DHparams_print(i32* %285, i32* %286)
  br label %288

288:                                              ; preds = %284, %281
  %289 = load i32, i32* %21, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %370

291:                                              ; preds = %288
  %292 = load i32*, i32** %7, align 8
  %293 = call i32 @DH_check(i32* %292, i32* %13)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %291
  %296 = load i32*, i32** @bio_err, align 8
  %297 = call i32 @ERR_print_errors(i32* %296)
  br label %463

298:                                              ; preds = %291
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* @DH_CHECK_P_NOT_PRIME, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load i32*, i32** @bio_err, align 8
  %305 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %304, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %306

306:                                              ; preds = %303, %298
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* @DH_CHECK_P_NOT_SAFE_PRIME, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = load i32*, i32** @bio_err, align 8
  %313 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %312, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %314

314:                                              ; preds = %311, %306
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* @DH_CHECK_Q_NOT_PRIME, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load i32*, i32** @bio_err, align 8
  %321 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %320, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %322

322:                                              ; preds = %319, %314
  %323 = load i32, i32* %13, align 4
  %324 = load i32, i32* @DH_CHECK_INVALID_Q_VALUE, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load i32*, i32** @bio_err, align 8
  %329 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %328, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %330

330:                                              ; preds = %327, %322
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* @DH_CHECK_INVALID_J_VALUE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %330
  %336 = load i32*, i32** @bio_err, align 8
  %337 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %336, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %338

338:                                              ; preds = %335, %330
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* @DH_UNABLE_TO_CHECK_GENERATOR, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %338
  %344 = load i32*, i32** @bio_err, align 8
  %345 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %344, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  br label %346

346:                                              ; preds = %343, %338
  %347 = load i32, i32* %13, align 4
  %348 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %346
  %352 = load i32*, i32** @bio_err, align 8
  %353 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %352, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  br label %354

354:                                              ; preds = %351, %346
  %355 = load i32, i32* %13, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load i32*, i32** @bio_err, align 8
  %359 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %358, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  br label %360

360:                                              ; preds = %357, %354
  %361 = load i32, i32* %17, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %360
  %364 = load i32, i32* %13, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load i32*, i32** @bio_err, align 8
  %368 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %367, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  br label %463

369:                                              ; preds = %363, %360
  br label %370

370:                                              ; preds = %369, %288
  %371 = load i32, i32* %15, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %420

373:                                              ; preds = %370
  %374 = load i32*, i32** %7, align 8
  %375 = call i32 @DH_size(i32* %374)
  store i32 %375, i32* %28, align 4
  %376 = load i32*, i32** %7, align 8
  %377 = call i32 @DH_bits(i32* %376)
  store i32 %377, i32* %29, align 4
  %378 = load i32*, i32** %7, align 8
  %379 = call i32 @DH_get0_pqg(i32* %378, i32** %30, i32** null, i32** %31)
  %380 = load i32, i32* %28, align 4
  %381 = call i8* @app_malloc(i32 %380, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i8* %381, i8** %27, align 8
  %382 = load i32*, i32** %6, align 8
  %383 = load i32, i32* %29, align 4
  %384 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %382, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %383)
  %385 = load i32*, i32** %6, align 8
  %386 = load i32*, i32** %30, align 8
  %387 = load i32, i32* %29, align 4
  %388 = load i8*, i8** %27, align 8
  %389 = call i32 @print_bignum_var(i32* %385, i32* %386, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %387, i8* %388)
  %390 = load i32*, i32** %6, align 8
  %391 = load i32*, i32** %31, align 8
  %392 = load i32, i32* %29, align 4
  %393 = load i8*, i8** %27, align 8
  %394 = call i32 @print_bignum_var(i32* %390, i32* %391, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %392, i8* %393)
  %395 = load i32*, i32** %6, align 8
  %396 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %395, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.20, i64 0, i64 0))
  %397 = load i32*, i32** %6, align 8
  %398 = load i32, i32* %29, align 4
  %399 = load i32, i32* %29, align 4
  %400 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %397, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i32 %398, i32 %399)
  %401 = load i32*, i32** %6, align 8
  %402 = load i32, i32* %29, align 4
  %403 = load i32, i32* %29, align 4
  %404 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %401, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0), i32 %402, i32 %403)
  %405 = load i32*, i32** %6, align 8
  %406 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %405, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.23, i64 0, i64 0))
  %407 = load i32*, i32** %7, align 8
  %408 = call i32 @DH_get_length(i32* %407)
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %373
  %411 = load i32*, i32** %6, align 8
  %412 = load i32*, i32** %7, align 8
  %413 = call i32 @DH_get_length(i32* %412)
  %414 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %411, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.24, i64 0, i64 0), i32 %413)
  br label %415

415:                                              ; preds = %410, %373
  %416 = load i32*, i32** %6, align 8
  %417 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %416, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  %418 = load i8*, i8** %27, align 8
  %419 = call i32 @OPENSSL_free(i8* %418)
  br label %420

420:                                              ; preds = %415, %370
  %421 = load i32, i32* %22, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %462, label %423

423:                                              ; preds = %420
  %424 = load i32*, i32** %7, align 8
  %425 = call i32 @DH_get0_pqg(i32* %424, i32** null, i32** %32, i32** null)
  %426 = load i32, i32* %20, align 4
  %427 = load i32, i32* @FORMAT_ASN1, align 4
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %441

429:                                              ; preds = %423
  %430 = load i32*, i32** %32, align 8
  %431 = icmp ne i32* %430, null
  br i1 %431, label %432, label %436

432:                                              ; preds = %429
  %433 = load i32*, i32** %6, align 8
  %434 = load i32*, i32** %7, align 8
  %435 = call i32 @i2d_DHxparams_bio(i32* %433, i32* %434)
  store i32 %435, i32* %13, align 4
  br label %440

436:                                              ; preds = %429
  %437 = load i32*, i32** %6, align 8
  %438 = load i32*, i32** %7, align 8
  %439 = call i32 @i2d_DHparams_bio(i32* %437, i32* %438)
  store i32 %439, i32* %13, align 4
  br label %440

440:                                              ; preds = %436, %432
  br label %453

441:                                              ; preds = %423
  %442 = load i32*, i32** %32, align 8
  %443 = icmp ne i32* %442, null
  br i1 %443, label %444, label %448

444:                                              ; preds = %441
  %445 = load i32*, i32** %6, align 8
  %446 = load i32*, i32** %7, align 8
  %447 = call i32 @PEM_write_bio_DHxparams(i32* %445, i32* %446)
  store i32 %447, i32* %13, align 4
  br label %452

448:                                              ; preds = %441
  %449 = load i32*, i32** %6, align 8
  %450 = load i32*, i32** %7, align 8
  %451 = call i32 @PEM_write_bio_DHparams(i32* %449, i32* %450)
  store i32 %451, i32* %13, align 4
  br label %452

452:                                              ; preds = %448, %444
  br label %453

453:                                              ; preds = %452, %440
  %454 = load i32, i32* %13, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %453
  %457 = load i32*, i32** @bio_err, align 8
  %458 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %457, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  %459 = load i32*, i32** @bio_err, align 8
  %460 = call i32 @ERR_print_errors(i32* %459)
  br label %463

461:                                              ; preds = %453
  br label %462

462:                                              ; preds = %461, %420
  store i32 0, i32* %16, align 4
  br label %463

463:                                              ; preds = %462, %456, %366, %295, %274, %247, %235, %218, %203, %180, %166, %143, %128, %119, %104, %85, %49, %45
  %464 = load i32*, i32** %5, align 8
  %465 = call i32 @BIO_free(i32* %464)
  %466 = load i32*, i32** %6, align 8
  %467 = call i32 @BIO_free_all(i32* %466)
  %468 = load i32*, i32** %7, align 8
  %469 = call i32 @DH_free(i32* %468)
  %470 = load i32*, i32** %11, align 8
  %471 = call i32 @release_engine(i32* %470)
  %472 = load i32, i32* %16, align 4
  ret i32 %472
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @BN_GENCB_new(...) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32 @BN_GENCB_set(i32*, i32, i32*) #1

declare dso_local i32* @DSA_new(...) #1

declare dso_local i32 @DSA_generate_parameters_ex(i32*, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @BN_GENCB_free(i32*) #1

declare dso_local i32* @DSA_dup_DH(i32*) #1

declare dso_local i32* @DH_new(...) #1

declare dso_local i32 @DH_generate_parameters_ex(i32*, i32, i32, i32*) #1

declare dso_local i32* @d2i_DSAparams_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_DSAparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @d2i_DHparams_bio(i32*, i32*) #1

declare dso_local i64 @BIO_reset(i32*) #1

declare dso_local i32* @d2i_DHxparams_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_DHparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DHparams_print(i32*, i32*) #1

declare dso_local i32 @DH_check(i32*, i32*) #1

declare dso_local i32 @DH_size(i32*) #1

declare dso_local i32 @DH_bits(i32*) #1

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32**, i32**) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @print_bignum_var(i32*, i32*, i8*, i32, i8*) #1

declare dso_local i32 @DH_get_length(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @i2d_DHxparams_bio(i32*, i32*) #1

declare dso_local i32 @i2d_DHparams_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DHxparams(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DHparams(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
