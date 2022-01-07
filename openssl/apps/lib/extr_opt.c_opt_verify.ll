; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"%s: Invalid Policy %s\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Invalid purpose %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: Internal error setting purpose %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: Invalid verify name %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: epoch time out of range %s\0A\00", align 1
@X509_V_FLAG_IGNORE_CRITICAL = common dso_local global i32 0, align 4
@X509_V_FLAG_CRL_CHECK = common dso_local global i32 0, align 4
@X509_V_FLAG_CRL_CHECK_ALL = common dso_local global i32 0, align 4
@X509_V_FLAG_POLICY_CHECK = common dso_local global i32 0, align 4
@X509_V_FLAG_EXPLICIT_POLICY = common dso_local global i32 0, align 4
@X509_V_FLAG_INHIBIT_ANY = common dso_local global i32 0, align 4
@X509_V_FLAG_INHIBIT_MAP = common dso_local global i32 0, align 4
@X509_V_FLAG_X509_STRICT = common dso_local global i32 0, align 4
@X509_V_FLAG_EXTENDED_CRL_SUPPORT = common dso_local global i32 0, align 4
@X509_V_FLAG_USE_DELTAS = common dso_local global i32 0, align 4
@X509_V_FLAG_NOTIFY_POLICY = common dso_local global i32 0, align 4
@X509_V_FLAG_CHECK_SS_SIGNATURE = common dso_local global i32 0, align 4
@X509_V_FLAG_TRUSTED_FIRST = common dso_local global i32 0, align 4
@X509_V_FLAG_SUITEB_128_LOS_ONLY = common dso_local global i32 0, align 4
@X509_V_FLAG_SUITEB_128_LOS = common dso_local global i32 0, align 4
@X509_V_FLAG_SUITEB_192_LOS = common dso_local global i32 0, align 4
@X509_V_FLAG_PARTIAL_CHAIN = common dso_local global i32 0, align 4
@X509_V_FLAG_NO_ALT_CHAINS = common dso_local global i32 0, align 4
@X509_V_FLAG_NO_CHECK_TIME = common dso_local global i32 0, align 4
@X509_V_FLAG_ALLOW_PROXY_CERTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_verify(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @OPENSSL_assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 129
  %17 = zext i1 %16 to i32
  %18 = call i32 @OPENSSL_assert(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 128
  %21 = zext i1 %20 to i32
  %22 = call i32 @OPENSSL_assert(i32 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %215 [
    i32 129, label %24
    i32 128, label %24
    i32 145, label %25
    i32 142, label %38
    i32 131, label %61
    i32 135, label %74
    i32 136, label %84
    i32 158, label %94
    i32 133, label %111
    i32 134, label %118
    i32 132, label %125
    i32 152, label %132
    i32 149, label %136
    i32 156, label %137
    i32 155, label %141
    i32 144, label %147
    i32 154, label %151
    i32 151, label %155
    i32 150, label %159
    i32 130, label %163
    i32 153, label %167
    i32 137, label %171
    i32 143, label %175
    i32 157, label %179
    i32 138, label %183
    i32 140, label %187
    i32 141, label %191
    i32 139, label %195
    i32 146, label %199
    i32 148, label %203
    i32 147, label %207
    i32 159, label %211
  ]

24:                                               ; preds = %2, %2
  store i32 0, i32* %3, align 4
  br label %216

25:                                               ; preds = %2
  %26 = call i32 (...) @opt_arg()
  %27 = call i32* @OBJ_txt2obj(i32 %26, i32 0)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @prog, align 4
  %32 = call i32 (...) @opt_arg()
  %33 = call i32 @opt_printf_stderr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %216

34:                                               ; preds = %25
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @X509_VERIFY_PARAM_add0_policy(i32* %35, i32* %36)
  br label %215

38:                                               ; preds = %2
  %39 = call i32 (...) @opt_arg()
  %40 = call i32 @X509_PURPOSE_get_by_sname(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @prog, align 4
  %45 = call i32 (...) @opt_arg()
  %46 = call i32 @opt_printf_stderr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %216

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = call i32* @X509_PURPOSE_get0(i32 %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @X509_PURPOSE_get_id(i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @X509_VERIFY_PARAM_set_purpose(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @prog, align 4
  %58 = call i32 (...) @opt_arg()
  %59 = call i32 @opt_printf_stderr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %216

60:                                               ; preds = %47
  br label %215

61:                                               ; preds = %2
  %62 = call i32 (...) @opt_arg()
  %63 = call i32* @X509_VERIFY_PARAM_lookup(i32 %62)
  store i32* %63, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @prog, align 4
  %68 = call i32 (...) @opt_arg()
  %69 = call i32 @opt_printf_stderr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %216

70:                                               ; preds = %61
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @X509_VERIFY_PARAM_set1(i32* %71, i32* %72)
  br label %215

74:                                               ; preds = %2
  %75 = call i32 (...) @opt_arg()
  %76 = call i32 @atoi(i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @X509_VERIFY_PARAM_set_depth(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %74
  br label %215

84:                                               ; preds = %2
  %85 = call i32 (...) @opt_arg()
  %86 = call i32 @atoi(i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @X509_VERIFY_PARAM_set_auth_level(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %84
  br label %215

94:                                               ; preds = %2
  %95 = call i32 (...) @opt_arg()
  %96 = call i32 @opt_imax(i32 %95, i32* %7)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %216

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* @prog, align 4
  %105 = call i32 (...) @opt_arg()
  %106 = call i32 @opt_printf_stderr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %105)
  store i32 0, i32* %3, align 4
  br label %216

107:                                              ; preds = %99
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @X509_VERIFY_PARAM_set_time(i32* %108, i32 %109)
  br label %215

111:                                              ; preds = %2
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 (...) @opt_arg()
  %114 = call i32 @X509_VERIFY_PARAM_set1_host(i32* %112, i32 %113, i32 0)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %216

117:                                              ; preds = %111
  br label %215

118:                                              ; preds = %2
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 (...) @opt_arg()
  %121 = call i32 @X509_VERIFY_PARAM_set1_email(i32* %119, i32 %120, i32 0)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %216

124:                                              ; preds = %118
  br label %215

125:                                              ; preds = %2
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 (...) @opt_arg()
  %128 = call i32 @X509_VERIFY_PARAM_set1_ip_asc(i32* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %216

131:                                              ; preds = %125
  br label %215

132:                                              ; preds = %2
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* @X509_V_FLAG_IGNORE_CRITICAL, align 4
  %135 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %133, i32 %134)
  br label %215

136:                                              ; preds = %2
  br label %215

137:                                              ; preds = %2
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* @X509_V_FLAG_CRL_CHECK, align 4
  %140 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %138, i32 %139)
  br label %215

141:                                              ; preds = %2
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* @X509_V_FLAG_CRL_CHECK, align 4
  %144 = load i32, i32* @X509_V_FLAG_CRL_CHECK_ALL, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %142, i32 %145)
  br label %215

147:                                              ; preds = %2
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* @X509_V_FLAG_POLICY_CHECK, align 4
  %150 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %148, i32 %149)
  br label %215

151:                                              ; preds = %2
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* @X509_V_FLAG_EXPLICIT_POLICY, align 4
  %154 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %152, i32 %153)
  br label %215

155:                                              ; preds = %2
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* @X509_V_FLAG_INHIBIT_ANY, align 4
  %158 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %156, i32 %157)
  br label %215

159:                                              ; preds = %2
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* @X509_V_FLAG_INHIBIT_MAP, align 4
  %162 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %160, i32 %161)
  br label %215

163:                                              ; preds = %2
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* @X509_V_FLAG_X509_STRICT, align 4
  %166 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %164, i32 %165)
  br label %215

167:                                              ; preds = %2
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* @X509_V_FLAG_EXTENDED_CRL_SUPPORT, align 4
  %170 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %168, i32 %169)
  br label %215

171:                                              ; preds = %2
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* @X509_V_FLAG_USE_DELTAS, align 4
  %174 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %172, i32 %173)
  br label %215

175:                                              ; preds = %2
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* @X509_V_FLAG_NOTIFY_POLICY, align 4
  %178 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %176, i32 %177)
  br label %215

179:                                              ; preds = %2
  %180 = load i32*, i32** %5, align 8
  %181 = load i32, i32* @X509_V_FLAG_CHECK_SS_SIGNATURE, align 4
  %182 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %180, i32 %181)
  br label %215

183:                                              ; preds = %2
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* @X509_V_FLAG_TRUSTED_FIRST, align 4
  %186 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %184, i32 %185)
  br label %215

187:                                              ; preds = %2
  %188 = load i32*, i32** %5, align 8
  %189 = load i32, i32* @X509_V_FLAG_SUITEB_128_LOS_ONLY, align 4
  %190 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %188, i32 %189)
  br label %215

191:                                              ; preds = %2
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* @X509_V_FLAG_SUITEB_128_LOS, align 4
  %194 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %192, i32 %193)
  br label %215

195:                                              ; preds = %2
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* @X509_V_FLAG_SUITEB_192_LOS, align 4
  %198 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %196, i32 %197)
  br label %215

199:                                              ; preds = %2
  %200 = load i32*, i32** %5, align 8
  %201 = load i32, i32* @X509_V_FLAG_PARTIAL_CHAIN, align 4
  %202 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %200, i32 %201)
  br label %215

203:                                              ; preds = %2
  %204 = load i32*, i32** %5, align 8
  %205 = load i32, i32* @X509_V_FLAG_NO_ALT_CHAINS, align 4
  %206 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %204, i32 %205)
  br label %215

207:                                              ; preds = %2
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* @X509_V_FLAG_NO_CHECK_TIME, align 4
  %210 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %208, i32 %209)
  br label %215

211:                                              ; preds = %2
  %212 = load i32*, i32** %5, align 8
  %213 = load i32, i32* @X509_V_FLAG_ALLOW_PROXY_CERTS, align 4
  %214 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %212, i32 %213)
  br label %215

215:                                              ; preds = %2, %211, %207, %203, %199, %195, %191, %187, %183, %179, %175, %171, %167, %163, %159, %155, %151, %147, %141, %137, %136, %132, %131, %124, %117, %107, %93, %83, %70, %60, %34
  store i32 1, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %130, %123, %116, %103, %98, %66, %56, %43, %30, %24
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32* @OBJ_txt2obj(i32, i32) #1

declare dso_local i32 @opt_arg(...) #1

declare dso_local i32 @opt_printf_stderr(i8*, i32, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_add0_policy(i32*, i32*) #1

declare dso_local i32 @X509_PURPOSE_get_by_sname(i32) #1

declare dso_local i32* @X509_PURPOSE_get0(i32) #1

declare dso_local i32 @X509_PURPOSE_get_id(i32*) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_purpose(i32*, i32) #1

declare dso_local i32* @X509_VERIFY_PARAM_lookup(i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1(i32*, i32*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_depth(i32*, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_auth_level(i32*, i32) #1

declare dso_local i32 @opt_imax(i32, i32*) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_time(i32*, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1_host(i32*, i32, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1_email(i32*, i32, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1_ip_asc(i32*, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_flags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
