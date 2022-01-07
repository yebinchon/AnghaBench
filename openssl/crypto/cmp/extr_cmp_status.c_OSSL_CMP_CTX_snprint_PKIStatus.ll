; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_status.c_OSSL_CMP_CTX_snprint_PKIStatus.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_status.c_OSSL_CMP_CTX_snprint_PKIStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"; PKIFailureInfo: \00", align 1
@OSSL_CMP_PKIFAILUREINFO_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OSSL_CMP_PKISTATUS_accepted = common dso_local global i32 0, align 4
@OSSL_CMP_PKISTATUS_grantedWithMods = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"; <no failure info>\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"; StatusString%s: \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\22%s\22%s\00", align 1
@ADVANCE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OSSL_CMP_CTX_snprint_PKIStatus(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %17, align 4
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @OSSL_CMP_CTX_get_status(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @ossl_cmp_PKIStatus_to_string(i32 %31)
  store i8* %32, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26, %23, %3
  store i8* null, i8** %4, align 8
  br label %234

35:                                               ; preds = %30
  %36 = load i8*, i8** %19, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %35
  store i8* null, i8** %4, align 8
  br label %234

48:                                               ; preds = %42
  %49 = load i32, i32* %16, align 4
  %50 = load i8*, i8** %19, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %19, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %7, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @OSSL_CMP_CTX_get_failInfoCode(i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %128

60:                                               ; preds = %48
  %61 = load i8*, i8** %19, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %7, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %60
  store i8* null, i8** %4, align 8
  br label %234

72:                                               ; preds = %66
  %73 = load i32, i32* %16, align 4
  %74 = load i8*, i8** %19, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %19, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %124, %72
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @OSSL_CMP_PKIFAILUREINFO_MAX, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %127

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = shl i32 1, %87
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = call i8* @CMP_PKIFAILUREINFO_to_string(i32 %92)
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %122

96:                                               ; preds = %91
  %97 = load i8*, i8** %19, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = icmp sgt i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %97, i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %102, i8* %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %7, align 8
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107, %96
  store i8* null, i8** %4, align 8
  br label %234

113:                                              ; preds = %107
  %114 = load i32, i32* %16, align 4
  %115 = load i8*, i8** %19, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %19, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %7, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %7, align 8
  store i32 1, i32* %17, align 4
  br label %122

122:                                              ; preds = %113, %91
  br label %123

123:                                              ; preds = %122, %85
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %81

127:                                              ; preds = %81
  br label %128

128:                                              ; preds = %127, %48
  %129 = load i32, i32* %17, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %160, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @OSSL_CMP_PKISTATUS_accepted, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %160

135:                                              ; preds = %131
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @OSSL_CMP_PKISTATUS_grantedWithMods, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %135
  %140 = load i8*, i8** %19, align 8
  %141 = load i64, i64* %7, align 8
  %142 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %140, i64 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %7, align 8
  %149 = icmp uge i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145, %139
  store i8* null, i8** %4, align 8
  br label %234

151:                                              ; preds = %145
  %152 = load i32, i32* %16, align 4
  %153 = load i8*, i8** %19, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %19, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %7, align 8
  %159 = sub i64 %158, %157
  store i64 %159, i64* %7, align 8
  br label %160

160:                                              ; preds = %151, %135, %131, %128
  %161 = load i32*, i32** %5, align 8
  %162 = call i32* @OSSL_CMP_CTX_get0_statusString(i32* %161)
  store i32* %162, i32** %13, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = call i32 @sk_ASN1_UTF8STRING_num(i32* %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %232

167:                                              ; preds = %160
  %168 = load i8*, i8** %19, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load i32, i32* %18, align 4
  %171 = icmp sgt i32 %170, 1
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %174 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %168, i64 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %173)
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %167
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %7, align 8
  %181 = icmp uge i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %177, %167
  store i8* null, i8** %4, align 8
  br label %234

183:                                              ; preds = %177
  %184 = load i32, i32* %16, align 4
  %185 = load i8*, i8** %19, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %19, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* %7, align 8
  %191 = sub i64 %190, %189
  store i64 %191, i64* %7, align 8
  store i32 0, i32* %15, align 4
  br label %192

192:                                              ; preds = %228, %183
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %18, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %231

196:                                              ; preds = %192
  %197 = load i32*, i32** %13, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i32* @sk_ASN1_UTF8STRING_value(i32* %197, i32 %198)
  store i32* %199, i32** %14, align 8
  %200 = load i8*, i8** %19, align 8
  %201 = load i64, i64* %7, align 8
  %202 = load i32*, i32** %14, align 8
  %203 = call i8* @ASN1_STRING_get0_data(i32* %202)
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %18, align 4
  %206 = sub nsw i32 %205, 1
  %207 = icmp slt i32 %204, %206
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %210 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %200, i64 %201, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %203, i8* %209)
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %196
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %7, align 8
  %217 = icmp uge i64 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %213, %196
  store i8* null, i8** %4, align 8
  br label %234

219:                                              ; preds = %213
  %220 = load i32, i32* %16, align 4
  %221 = load i8*, i8** %19, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8* %223, i8** %19, align 8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* %7, align 8
  %227 = sub i64 %226, %225
  store i64 %227, i64* %7, align 8
  br label %228

228:                                              ; preds = %219
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %192

231:                                              ; preds = %192
  br label %232

232:                                              ; preds = %231, %160
  %233 = load i8*, i8** %6, align 8
  store i8* %233, i8** %4, align 8
  br label %234

234:                                              ; preds = %232, %218, %182, %150, %112, %71, %47, %34
  %235 = load i8*, i8** %4, align 8
  ret i8* %235
}

declare dso_local i32 @OSSL_CMP_CTX_get_status(i32*) #1

declare dso_local i8* @ossl_cmp_PKIStatus_to_string(i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @OSSL_CMP_CTX_get_failInfoCode(i32*) #1

declare dso_local i8* @CMP_PKIFAILUREINFO_to_string(i32) #1

declare dso_local i32* @OSSL_CMP_CTX_get0_statusString(i32*) #1

declare dso_local i32 @sk_ASN1_UTF8STRING_num(i32*) #1

declare dso_local i32* @sk_ASN1_UTF8STRING_value(i32*, i32) #1

declare dso_local i8* @ASN1_STRING_get0_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
