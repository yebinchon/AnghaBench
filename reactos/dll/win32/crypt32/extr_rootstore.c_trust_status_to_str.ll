; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_trust_status_to_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_trust_status_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trust_status_to_str.buf = internal global [1024 x i8] zeroinitializer, align 16
@CERT_TRUST_IS_NOT_TIME_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\0A\09expired\00", align 1
@CERT_TRUST_IS_NOT_TIME_NESTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"\0A\09bad time nesting\00", align 1
@CERT_TRUST_IS_REVOKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"\0A\09revoked\00", align 1
@CERT_TRUST_IS_NOT_SIGNATURE_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"\0A\09bad signature\00", align 1
@CERT_TRUST_IS_NOT_VALID_FOR_USAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"\0A\09bad usage\00", align 1
@CERT_TRUST_IS_UNTRUSTED_ROOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"\0A\09untrusted root\00", align 1
@CERT_TRUST_REVOCATION_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"\0A\09unknown revocation status\00", align 1
@CERT_TRUST_IS_CYCLIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"\0A\09cyclic chain\00", align 1
@CERT_TRUST_INVALID_EXTENSION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"\0A\09unsupported critical extension\00", align 1
@CERT_TRUST_INVALID_POLICY_CONSTRAINTS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"\0A\09bad policy\00", align 1
@CERT_TRUST_INVALID_BASIC_CONSTRAINTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"\0A\09bad basic constraints\00", align 1
@CERT_TRUST_INVALID_NAME_CONSTRAINTS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"\0A\09bad name constraints\00", align 1
@CERT_TRUST_HAS_NOT_SUPPORTED_NAME_CONSTRAINT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"\0A\09unsupported name constraint\00", align 1
@CERT_TRUST_HAS_NOT_DEFINED_NAME_CONSTRAINT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"\0A\09undefined name constraint\00", align 1
@CERT_TRUST_HAS_NOT_PERMITTED_NAME_CONSTRAINT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"\0A\09disallowed name constraint\00", align 1
@CERT_TRUST_HAS_EXCLUDED_NAME_CONSTRAINT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"\0A\09excluded name constraint\00", align 1
@CERT_TRUST_IS_OFFLINE_REVOCATION = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"\0A\09revocation server offline\00", align 1
@CERT_TRUST_NO_ISSUANCE_CHAIN_POLICY = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"\0A\09no issuance policy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @trust_status_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trust_status_to_str(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @CERT_TRUST_IS_NOT_TIME_VALID, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %10
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 1024, %13
  %15 = trunc i64 %14 to i32
  %16 = call i64 @snprintf(i8* %11, i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %8, %1
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @CERT_TRUST_IS_NOT_TIME_NESTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %28
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 1024, %31
  %33 = trunc i64 %32 to i32
  %34 = call i64 @snprintf(i8* %29, i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %26, %21
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @CERT_TRUST_IS_REVOKED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %46
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 1024, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64 @snprintf(i8* %47, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %44, %39
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @CERT_TRUST_IS_NOT_SIGNATURE_VALID, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %64
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 1024, %67
  %69 = trunc i64 %68 to i32
  %70 = call i64 @snprintf(i8* %65, i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %62, %57
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @CERT_TRUST_IS_NOT_VALID_FOR_USAGE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %82
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 1024, %85
  %87 = trunc i64 %86 to i32
  %88 = call i64 @snprintf(i8* %83, i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %80, %75
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @CERT_TRUST_IS_UNTRUSTED_ROOT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %100
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = sub i64 1024, %103
  %105 = trunc i64 %104 to i32
  %106 = call i64 @snprintf(i8* %101, i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %98, %93
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @CERT_TRUST_REVOCATION_STATUS_UNKNOWN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %118
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 1024, %121
  %123 = trunc i64 %122 to i32
  %124 = call i64 @snprintf(i8* %119, i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %116, %111
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @CERT_TRUST_IS_CYCLIC, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %136
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 1024, %139
  %141 = trunc i64 %140 to i32
  %142 = call i64 @snprintf(i8* %137, i32 %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %134, %129
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @CERT_TRUST_INVALID_EXTENSION, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %154
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 1024, %157
  %159 = trunc i64 %158 to i32
  %160 = call i64 @snprintf(i8* %155, i32 %159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %152, %147
  %166 = load i32, i32* %2, align 4
  %167 = load i32, i32* @CERT_TRUST_INVALID_POLICY_CONSTRAINTS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %165
  %171 = load i32, i32* %3, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %172
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = sub i64 1024, %175
  %177 = trunc i64 %176 to i32
  %178 = call i64 @snprintf(i8* %173, i32 %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %170, %165
  %184 = load i32, i32* %2, align 4
  %185 = load i32, i32* @CERT_TRUST_INVALID_BASIC_CONSTRAINTS, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %183
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %190
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = sub i64 1024, %193
  %195 = trunc i64 %194 to i32
  %196 = call i64 @snprintf(i8* %191, i32 %195, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %196
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %188, %183
  %202 = load i32, i32* %2, align 4
  %203 = load i32, i32* @CERT_TRUST_INVALID_NAME_CONSTRAINTS, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %201
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %208
  %210 = load i32, i32* %3, align 4
  %211 = sext i32 %210 to i64
  %212 = sub i64 1024, %211
  %213 = trunc i64 %212 to i32
  %214 = call i64 @snprintf(i8* %209, i32 %213, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %214
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %206, %201
  %220 = load i32, i32* %2, align 4
  %221 = load i32, i32* @CERT_TRUST_HAS_NOT_SUPPORTED_NAME_CONSTRAINT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %219
  %225 = load i32, i32* %3, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %226
  %228 = load i32, i32* %3, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 1024, %229
  %231 = trunc i64 %230 to i32
  %232 = call i64 @snprintf(i8* %227, i32 %231, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %233 = load i32, i32* %3, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %3, align 4
  br label %237

237:                                              ; preds = %224, %219
  %238 = load i32, i32* %2, align 4
  %239 = load i32, i32* @CERT_TRUST_HAS_NOT_DEFINED_NAME_CONSTRAINT, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %237
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %244
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = sub i64 1024, %247
  %249 = trunc i64 %248 to i32
  %250 = call i64 @snprintf(i8* %245, i32 %249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %251 = load i32, i32* %3, align 4
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %252, %250
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %242, %237
  %256 = load i32, i32* %2, align 4
  %257 = load i32, i32* @CERT_TRUST_HAS_NOT_PERMITTED_NAME_CONSTRAINT, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %255
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %262
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = sub i64 1024, %265
  %267 = trunc i64 %266 to i32
  %268 = call i64 @snprintf(i8* %263, i32 %267, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %269 = load i32, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %268
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %3, align 4
  br label %273

273:                                              ; preds = %260, %255
  %274 = load i32, i32* %2, align 4
  %275 = load i32, i32* @CERT_TRUST_HAS_EXCLUDED_NAME_CONSTRAINT, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %273
  %279 = load i32, i32* %3, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %280
  %282 = load i32, i32* %3, align 4
  %283 = sext i32 %282 to i64
  %284 = sub i64 1024, %283
  %285 = trunc i64 %284 to i32
  %286 = call i64 @snprintf(i8* %281, i32 %285, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %287 = load i32, i32* %3, align 4
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %288, %286
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %278, %273
  %292 = load i32, i32* %2, align 4
  %293 = load i32, i32* @CERT_TRUST_IS_OFFLINE_REVOCATION, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %309

296:                                              ; preds = %291
  %297 = load i32, i32* %3, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %298
  %300 = load i32, i32* %3, align 4
  %301 = sext i32 %300 to i64
  %302 = sub i64 1024, %301
  %303 = trunc i64 %302 to i32
  %304 = call i64 @snprintf(i8* %299, i32 %303, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %305 = load i32, i32* %3, align 4
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %306, %304
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %296, %291
  %310 = load i32, i32* %2, align 4
  %311 = load i32, i32* @CERT_TRUST_NO_ISSUANCE_CHAIN_POLICY, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %309
  %315 = load i32, i32* %3, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0), i64 %316
  %318 = load i32, i32* %3, align 4
  %319 = sext i32 %318 to i64
  %320 = sub i64 1024, %319
  %321 = trunc i64 %320 to i32
  %322 = call i64 @snprintf(i8* %317, i32 %321, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %323 = load i32, i32* %3, align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %324, %322
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* %3, align 4
  br label %327

327:                                              ; preds = %314, %309
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @trust_status_to_str.buf, i64 0, i64 0)
}

declare dso_local i64 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
