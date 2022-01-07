; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_do_x509_check.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_do_x509_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32* }

@NID_undef = common dso_local global i32 0, align 4
@_X509_CHECK_FLAG_DOT_SUBDOMAINS = common dso_local global i32 0, align 4
@GEN_EMAIL = common dso_local global i32 0, align 4
@NID_pkcs9_emailAddress = common dso_local global i32 0, align 4
@V_ASN1_IA5STRING = common dso_local global i32 0, align 4
@equal_email = common dso_local global i32 0, align 4
@GEN_DNS = common dso_local global i32 0, align 4
@NID_commonName = common dso_local global i32 0, align 4
@X509_CHECK_FLAG_NO_WILDCARDS = common dso_local global i32 0, align 4
@equal_nocase = common dso_local global i32 0, align 4
@equal_wildcard = common dso_local global i32 0, align 4
@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@equal_case = common dso_local global i32 0, align 4
@NID_subject_alt_name = common dso_local global i32 0, align 4
@X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT = common dso_local global i32 0, align 4
@X509_CHECK_FLAG_NEVER_CHECK_SUBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32, i32, i8**)* @do_x509_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_x509_check(i32* %0, i8* %1, i64 %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_5__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %26 = load i32, i32* @NID_undef, align 4
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* @_X509_CHECK_FLAG_DOT_SUBDOMAINS, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @GEN_EMAIL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %6
  %35 = load i32, i32* @NID_pkcs9_emailAddress, align 4
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* @V_ASN1_IA5STRING, align 4
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* @equal_email, align 4
  store i32 %37, i32* %21, align 4
  br label %71

38:                                               ; preds = %6
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @GEN_DNS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load i32, i32* @NID_commonName, align 4
  store i32 %43, i32* %17, align 4
  %44 = load i64, i64* %10, align 8
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @_X509_CHECK_FLAG_DOT_SUBDOMAINS, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %46, %42
  %57 = load i32, i32* @V_ASN1_IA5STRING, align 4
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @X509_CHECK_FLAG_NO_WILDCARDS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @equal_nocase, align 4
  store i32 %63, i32* %21, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @equal_wildcard, align 4
  store i32 %65, i32* %21, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %70

67:                                               ; preds = %38
  %68 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* @equal_case, align 4
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %67, %66
  br label %71

71:                                               ; preds = %70, %34
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @strlen(i8* %75)
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @NID_subject_alt_name, align 4
  %80 = call i32* @X509_get_ext_d2i(i32* %78, i32 %79, i32* null, i32* null)
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %155

83:                                               ; preds = %77
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %135, %83
  %85 = load i32, i32* %16, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @sk_GENERAL_NAME_num(i32* %86)
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %138

89:                                               ; preds = %84
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call %struct.TYPE_5__* @sk_GENERAL_NAME_value(i32* %90, i32 %91)
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %22, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %135

99:                                               ; preds = %89
  store i32 1, i32* %19, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @GEN_EMAIL, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %23, align 8
  br label %123

108:                                              ; preds = %99
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @GEN_DNS, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %23, align 8
  br label %122

117:                                              ; preds = %108
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %23, align 8
  br label %122

122:                                              ; preds = %117, %112
  br label %123

123:                                              ; preds = %122, %103
  %124 = load i32*, i32** %23, align 8
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i8*, i8** %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i8**, i8*** %13, align 8
  %131 = call i32 @do_check_string(i32* %124, i32 %125, i32 %126, i32 %127, i8* %128, i64 %129, i8** %130)
  store i32 %131, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %138

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %98
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  br label %84

138:                                              ; preds = %133, %84
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @GENERAL_NAMES_free(i32* %139)
  %141 = load i32, i32* %20, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %20, align 4
  store i32 %144, i32* %7, align 4
  br label %192

145:                                              ; preds = %138
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  store i32 0, i32* %7, align 4
  br label %192

154:                                              ; preds = %148, %145
  br label %155

155:                                              ; preds = %154, %77
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* @NID_undef, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @X509_CHECK_FLAG_NEVER_CHECK_SUBJECT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159, %155
  store i32 0, i32* %7, align 4
  br label %192

165:                                              ; preds = %159
  store i32 -1, i32* %16, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = call i32* @X509_get_subject_name(i32* %166)
  store i32* %167, i32** %15, align 8
  br label %168

168:                                              ; preds = %190, %165
  %169 = load i32*, i32** %15, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %16, align 4
  %172 = call i32 @X509_NAME_get_index_by_NID(i32* %169, i32 %170, i32 %171)
  store i32 %172, i32* %16, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %168
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* %16, align 4
  %177 = call i32* @X509_NAME_get_entry(i32* %175, i32 %176)
  store i32* %177, i32** %24, align 8
  %178 = load i32*, i32** %24, align 8
  %179 = call i32* @X509_NAME_ENTRY_get_data(i32* %178)
  store i32* %179, i32** %25, align 8
  %180 = load i32*, i32** %25, align 8
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i8*, i8** %9, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i8**, i8*** %13, align 8
  %186 = call i32 @do_check_string(i32* %180, i32 -1, i32 %181, i32 %182, i8* %183, i64 %184, i8** %185)
  store i32 %186, i32* %20, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %174
  %189 = load i32, i32* %20, align 4
  store i32 %189, i32* %7, align 4
  br label %192

190:                                              ; preds = %174
  br label %168

191:                                              ; preds = %168
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %191, %188, %164, %153, %143
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @X509_get_ext_d2i(i32*, i32, i32*, i32*) #1

declare dso_local i32 @sk_GENERAL_NAME_num(i32*) #1

declare dso_local %struct.TYPE_5__* @sk_GENERAL_NAME_value(i32*, i32) #1

declare dso_local i32 @do_check_string(i32*, i32, i32, i32, i8*, i64, i8**) #1

declare dso_local i32 @GENERAL_NAMES_free(i32*) #1

declare dso_local i32* @X509_get_subject_name(i32*) #1

declare dso_local i32 @X509_NAME_get_index_by_NID(i32*, i32, i32) #1

declare dso_local i32* @X509_NAME_get_entry(i32*, i32) #1

declare dso_local i32* @X509_NAME_ENTRY_get_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
