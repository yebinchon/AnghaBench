; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_spkac.c_spkac_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_spkac.c_spkac_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"SPKAC\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@FORMAT_PEM = common dso_local global i32 0, align 4
@spkac_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@FORMAT_TEXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"SPKAC=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Can't find SPKAC called \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Error loading SPKAC\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Signature OK\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Signature Failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spkac_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i8**, i8*** %4, align 8
  %30 = load i32, i32* @spkac_options, align 4
  %31 = call i8* @opt_init(i32 %28, i8** %29, i32 %30)
  store i8* %31, i8** %17, align 8
  br label %32

32:                                               ; preds = %72, %2
  %33 = call i32 (...) @opt_next()
  store i32 %33, i32* %26, align 4
  %34 = icmp ne i32 %33, 140
  br i1 %34, label %35, label %73

35:                                               ; preds = %32
  %36 = load i32, i32* %26, align 4
  switch i32 %36, label %72 [
    i32 140, label %37
    i32 139, label %37
    i32 138, label %42
    i32 137, label %45
    i32 133, label %47
    i32 134, label %49
    i32 131, label %50
    i32 128, label %51
    i32 132, label %52
    i32 136, label %54
    i32 135, label %56
    i32 142, label %63
    i32 130, label %65
    i32 129, label %67
    i32 141, label %69
  ]

37:                                               ; preds = %35, %35
  br label %38

38:                                               ; preds = %77, %61, %37
  %39 = load i32, i32* @bio_err, align 4
  %40 = load i8*, i8** %17, align 8
  %41 = call i32 (i32, i8*, ...) @BIO_printf(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %222

42:                                               ; preds = %35
  %43 = load i32, i32* @spkac_options, align 4
  %44 = call i32 @opt_help(i32 %43)
  store i32 0, i32* %21, align 4
  br label %222

45:                                               ; preds = %35
  %46 = call i8* (...) @opt_arg()
  store i8* %46, i8** %12, align 8
  br label %72

47:                                               ; preds = %35
  %48 = call i8* (...) @opt_arg()
  store i8* %48, i8** %13, align 8
  br label %72

49:                                               ; preds = %35
  store i32 1, i32* %23, align 4
  br label %72

50:                                               ; preds = %35
  store i32 1, i32* %24, align 4
  br label %72

51:                                               ; preds = %35
  store i32 1, i32* %22, align 4
  br label %72

52:                                               ; preds = %35
  %53 = call i8* (...) @opt_arg()
  store i8* %53, i8** %14, align 8
  br label %72

54:                                               ; preds = %35
  %55 = call i8* (...) @opt_arg()
  store i8* %55, i8** %11, align 8
  br label %72

56:                                               ; preds = %35
  %57 = call i8* (...) @opt_arg()
  %58 = load i32, i32* @OPT_FMT_ANY, align 4
  %59 = call i32 @opt_format(i8* %57, i32 %58, i32* %25)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %38

62:                                               ; preds = %56
  br label %72

63:                                               ; preds = %35
  %64 = call i8* (...) @opt_arg()
  store i8* %64, i8** %10, align 8
  br label %72

65:                                               ; preds = %35
  %66 = call i8* (...) @opt_arg()
  store i8* %66, i8** %18, align 8
  br label %72

67:                                               ; preds = %35
  %68 = call i8* (...) @opt_arg()
  store i8* %68, i8** %19, align 8
  br label %72

69:                                               ; preds = %35
  %70 = call i8* (...) @opt_arg()
  %71 = call i32* @setup_engine(i8* %70, i32 0)
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %35, %69, %67, %65, %63, %62, %54, %52, %51, %50, %49, %47, %45
  br label %32

73:                                               ; preds = %32
  %74 = call i32 (...) @opt_num_rest()
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %38

78:                                               ; preds = %73
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @app_passwd(i8* %79, i32* null, i8** %15, i32* null)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @bio_err, align 4
  %84 = call i32 (i32, i8*, ...) @BIO_printf(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %222

85:                                               ; preds = %78
  %86 = load i8*, i8** %11, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %152

88:                                               ; preds = %85
  %89 = load i8*, i8** %11, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  br label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i8* [ %93, %92 ], [ null, %94 ]
  %97 = load i32, i32* %25, align 4
  %98 = load i8*, i8** %15, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = call i32* @load_key(i8* %96, i32 %97, i32 1, i8* %98, i32* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32* %100, i32** %8, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %222

104:                                              ; preds = %95
  %105 = call %struct.TYPE_13__* (...) @NETSCAPE_SPKI_new()
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %9, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %107 = icmp eq %struct.TYPE_13__* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %222

109:                                              ; preds = %104
  %110 = load i8*, i8** %10, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i64 @strlen(i8* %119)
  %121 = trunc i64 %120 to i32
  %122 = call i32 @ASN1_STRING_set(i32 %117, i8* %118, i32 %121)
  br label %123

123:                                              ; preds = %112, %109
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @NETSCAPE_SPKI_set_pubkey(%struct.TYPE_13__* %124, i32* %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 (...) @EVP_md5()
  %130 = call i32 @NETSCAPE_SPKI_sign(%struct.TYPE_13__* %127, i32* %128, i32 %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %132 = call i8* @NETSCAPE_SPKI_b64_encode(%struct.TYPE_13__* %131)
  store i8* %132, i8** %16, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %222

136:                                              ; preds = %123
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* @FORMAT_TEXT, align 4
  %139 = call i32* @bio_open_default(i8* %137, i8 signext 119, i32 %138)
  store i32* %139, i32** %5, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i8*, i8** %16, align 8
  %144 = call i32 @OPENSSL_free(i8* %143)
  br label %222

145:                                              ; preds = %136
  %146 = load i32*, i32** %5, align 8
  %147 = ptrtoint i32* %146 to i32
  %148 = load i8*, i8** %16, align 8
  %149 = call i32 (i32, i8*, ...) @BIO_printf(i32 %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %148)
  %150 = load i8*, i8** %16, align 8
  %151 = call i32 @OPENSSL_free(i8* %150)
  store i32 0, i32* %21, align 4
  br label %222

152:                                              ; preds = %85
  %153 = load i8*, i8** %12, align 8
  %154 = call i32* @app_load_config(i8* %153)
  store i32* %154, i32** %6, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %222

157:                                              ; preds = %152
  %158 = load i32*, i32** %6, align 8
  %159 = load i8*, i8** %19, align 8
  %160 = load i8*, i8** %18, align 8
  %161 = call i8* @NCONF_get_string(i32* %158, i8* %159, i8* %160)
  store i8* %161, i8** %16, align 8
  %162 = load i8*, i8** %16, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load i32, i32* @bio_err, align 4
  %166 = load i8*, i8** %18, align 8
  %167 = call i32 (i32, i8*, ...) @BIO_printf(i32 %165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %166)
  %168 = load i32, i32* @bio_err, align 4
  %169 = call i32 @ERR_print_errors(i32 %168)
  br label %222

170:                                              ; preds = %157
  %171 = load i8*, i8** %16, align 8
  %172 = call %struct.TYPE_13__* @NETSCAPE_SPKI_b64_decode(i8* %171, i32 -1)
  store %struct.TYPE_13__* %172, %struct.TYPE_13__** %9, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %174 = icmp eq %struct.TYPE_13__* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i32, i32* @bio_err, align 4
  %177 = call i32 (i32, i8*, ...) @BIO_printf(i32 %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %178 = load i32, i32* @bio_err, align 4
  %179 = call i32 @ERR_print_errors(i32 %178)
  br label %222

180:                                              ; preds = %170
  %181 = load i8*, i8** %13, align 8
  %182 = load i32, i32* @FORMAT_TEXT, align 4
  %183 = call i32* @bio_open_default(i8* %181, i8 signext 119, i32 %182)
  store i32* %183, i32** %5, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %222

187:                                              ; preds = %180
  %188 = load i32, i32* %23, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %187
  %191 = load i32*, i32** %5, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %193 = call i32 @NETSCAPE_SPKI_print(i32* %191, %struct.TYPE_13__* %192)
  br label %194

194:                                              ; preds = %190, %187
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %196 = call i32* @NETSCAPE_SPKI_get_pubkey(%struct.TYPE_13__* %195)
  store i32* %196, i32** %8, align 8
  %197 = load i32, i32* %22, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %194
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = call i32 @NETSCAPE_SPKI_verify(%struct.TYPE_13__* %200, i32* %201)
  store i32 %202, i32* %20, align 4
  %203 = load i32, i32* %20, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load i32, i32* @bio_err, align 4
  %207 = call i32 (i32, i8*, ...) @BIO_printf(i32 %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %213

208:                                              ; preds = %199
  %209 = load i32, i32* @bio_err, align 4
  %210 = call i32 (i32, i8*, ...) @BIO_printf(i32 %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %211 = load i32, i32* @bio_err, align 4
  %212 = call i32 @ERR_print_errors(i32 %211)
  br label %222

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %194
  %215 = load i32, i32* %24, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i32*, i32** %5, align 8
  %219 = load i32*, i32** %8, align 8
  %220 = call i32 @PEM_write_bio_PUBKEY(i32* %218, i32* %219)
  br label %221

221:                                              ; preds = %217, %214
  store i32 0, i32* %21, align 4
  br label %222

222:                                              ; preds = %221, %208, %186, %175, %164, %156, %145, %142, %135, %108, %103, %82, %42, %38
  %223 = load i32*, i32** %6, align 8
  %224 = call i32 @NCONF_free(i32* %223)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %226 = call i32 @NETSCAPE_SPKI_free(%struct.TYPE_13__* %225)
  %227 = load i32*, i32** %5, align 8
  %228 = call i32 @BIO_free_all(i32* %227)
  %229 = load i32*, i32** %8, align 8
  %230 = call i32 @EVP_PKEY_free(i32* %229)
  %231 = load i32*, i32** %7, align 8
  %232 = call i32 @release_engine(i32* %231)
  %233 = load i8*, i8** %15, align 8
  %234 = call i32 @OPENSSL_free(i8* %233)
  %235 = load i32, i32* %21, align 4
  ret i32 %235
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32 @app_passwd(i8*, i32*, i8**, i32*) #1

declare dso_local i32* @load_key(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @NETSCAPE_SPKI_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @NETSCAPE_SPKI_set_pubkey(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @NETSCAPE_SPKI_sign(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i8* @NETSCAPE_SPKI_b64_encode(%struct.TYPE_13__*) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32* @app_load_config(i8*) #1

declare dso_local i8* @NCONF_get_string(i32*, i8*, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local %struct.TYPE_13__* @NETSCAPE_SPKI_b64_decode(i8*, i32) #1

declare dso_local i32 @NETSCAPE_SPKI_print(i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @NETSCAPE_SPKI_get_pubkey(%struct.TYPE_13__*) #1

declare dso_local i32 @NETSCAPE_SPKI_verify(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @PEM_write_bio_PUBKEY(i32*, i32*) #1

declare dso_local i32 @NCONF_free(i32*) #1

declare dso_local i32 @NETSCAPE_SPKI_free(%struct.TYPE_13__*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
