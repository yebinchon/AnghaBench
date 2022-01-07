; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ca.c_unpack_revinfo.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ca.c_unpack_revinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"memory allocation failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid revocation date %s\0A\00", align 1
@NUM_REASONS = common dso_local global i32 0, align 4
@crl_reasons = common dso_local global i32* null, align 8
@OCSP_REVOKED_STATUS_NOSTATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid reason code %s\0A\00", align 1
@OCSP_REVOKED_STATUS_REMOVEFROMCRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"missing hold instruction\0A\00", align 1
@OCSP_REVOKED_STATUS_CERTIFICATEHOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid object identifier %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"missing compromised time\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"invalid compromised time %s\0A\00", align 1
@OCSP_REVOKED_STATUS_KEYCOMPROMISE = common dso_local global i32 0, align 4
@OCSP_REVOKED_STATUS_CACOMPROMISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unpack_revinfo(i32** %0, i32* %1, i32** %2, i32** %3, i8* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i8* @OPENSSL_strdup(i8* %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @bio_err, align 4
  %27 = call i32 (i32, i8*, ...) @BIO_printf(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %188

28:                                               ; preds = %5
  %29 = load i8*, i8** %11, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 44)
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %11, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load i8*, i8** %15, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %15, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %15, align 8
  %38 = load i8*, i8** %15, align 8
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 44)
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i8*, i8** %15, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %15, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %14, align 8
  br label %47

47:                                               ; preds = %43, %34
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32**, i32*** %6, align 8
  %50 = icmp ne i32** %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = call i32* (...) @ASN1_UTCTIME_new()
  %53 = load i32**, i32*** %6, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i32**, i32*** %6, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @bio_err, align 4
  %59 = call i32 (i32, i8*, ...) @BIO_printf(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %188

60:                                               ; preds = %51
  %61 = load i32**, i32*** %6, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @ASN1_UTCTIME_set_string(i32* %62, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @bio_err, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 (i32, i8*, ...) @BIO_printf(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  br label %188

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i8*, i8** %13, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %175

74:                                               ; preds = %71
  store i32 0, i32* %18, align 4
  br label %75

75:                                               ; preds = %91, %74
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* @NUM_REASONS, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i8*, i8** %13, align 8
  %81 = load i32*, i32** @crl_reasons, align 8
  %82 = load i32, i32* %18, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @strcasecmp(i8* %80, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %16, align 4
  br label %94

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %18, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %18, align 4
  br label %75

94:                                               ; preds = %88, %75
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @OCSP_REVOKED_STATUS_NOSTATUS, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @bio_err, align 4
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 (i32, i8*, ...) @BIO_printf(i32 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  br label %188

102:                                              ; preds = %94
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %103, 7
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* @OCSP_REVOKED_STATUS_REMOVEFROMCRL, align 4
  store i32 %106, i32* %16, align 4
  br label %174

107:                                              ; preds = %102
  %108 = load i32, i32* %16, align 4
  %109 = icmp eq i32 %108, 8
  br i1 %109, label %110, label %136

110:                                              ; preds = %107
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* @bio_err, align 4
  %115 = call i32 (i32, i8*, ...) @BIO_printf(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %188

116:                                              ; preds = %110
  %117 = load i32, i32* @OCSP_REVOKED_STATUS_CERTIFICATEHOLD, align 4
  store i32 %117, i32* %16, align 4
  %118 = load i8*, i8** %14, align 8
  %119 = call i32* @OBJ_txt2obj(i8* %118, i32 0)
  store i32* %119, i32** %19, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @bio_err, align 4
  %124 = load i8*, i8** %14, align 8
  %125 = call i32 (i32, i8*, ...) @BIO_printf(i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %124)
  br label %188

126:                                              ; preds = %116
  %127 = load i32**, i32*** %8, align 8
  %128 = icmp ne i32** %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32*, i32** %19, align 8
  %131 = load i32**, i32*** %8, align 8
  store i32* %130, i32** %131, align 8
  br label %135

132:                                              ; preds = %126
  %133 = load i32*, i32** %19, align 8
  %134 = call i32 @ASN1_OBJECT_free(i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  br label %173

136:                                              ; preds = %107
  %137 = load i32, i32* %16, align 4
  %138 = icmp eq i32 %137, 9
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %16, align 4
  %141 = icmp eq i32 %140, 10
  br i1 %141, label %142, label %172

142:                                              ; preds = %139, %136
  %143 = load i8*, i8** %14, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* @bio_err, align 4
  %147 = call i32 (i32, i8*, ...) @BIO_printf(i32 %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %188

148:                                              ; preds = %142
  %149 = call i32* (...) @ASN1_GENERALIZEDTIME_new()
  store i32* %149, i32** %20, align 8
  %150 = load i32*, i32** %20, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* @bio_err, align 4
  %154 = call i32 (i32, i8*, ...) @BIO_printf(i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %188

155:                                              ; preds = %148
  %156 = load i32*, i32** %20, align 8
  %157 = load i8*, i8** %14, align 8
  %158 = call i32 @ASN1_GENERALIZEDTIME_set_string(i32* %156, i8* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* @bio_err, align 4
  %162 = load i8*, i8** %14, align 8
  %163 = call i32 (i32, i8*, ...) @BIO_printf(i32 %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %162)
  br label %188

164:                                              ; preds = %155
  %165 = load i32, i32* %16, align 4
  %166 = icmp eq i32 %165, 9
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* @OCSP_REVOKED_STATUS_KEYCOMPROMISE, align 4
  store i32 %168, i32* %16, align 4
  br label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @OCSP_REVOKED_STATUS_CACOMPROMISE, align 4
  store i32 %170, i32* %16, align 4
  br label %171

171:                                              ; preds = %169, %167
  br label %172

172:                                              ; preds = %171, %139
  br label %173

173:                                              ; preds = %172, %135
  br label %174

174:                                              ; preds = %173, %105
  br label %175

175:                                              ; preds = %174, %71
  %176 = load i32*, i32** %7, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %16, align 4
  %180 = load i32*, i32** %7, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32**, i32*** %9, align 8
  %183 = icmp ne i32** %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32*, i32** %20, align 8
  %186 = load i32**, i32*** %9, align 8
  store i32* %185, i32** %186, align 8
  store i32* null, i32** %20, align 8
  br label %187

187:                                              ; preds = %184, %181
  store i32 1, i32* %17, align 4
  br label %188

188:                                              ; preds = %187, %160, %152, %145, %122, %113, %98, %66, %57, %25
  %189 = load i8*, i8** %11, align 8
  %190 = call i32 @OPENSSL_free(i8* %189)
  %191 = load i32*, i32** %20, align 8
  %192 = call i32 @ASN1_GENERALIZEDTIME_free(i32* %191)
  %193 = load i32, i32* %17, align 4
  ret i32 %193
}

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @ASN1_UTCTIME_new(...) #1

declare dso_local i32 @ASN1_UTCTIME_set_string(i32*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i32* @OBJ_txt2obj(i8*, i32) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

declare dso_local i32* @ASN1_GENERALIZEDTIME_new(...) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_set_string(i32*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
