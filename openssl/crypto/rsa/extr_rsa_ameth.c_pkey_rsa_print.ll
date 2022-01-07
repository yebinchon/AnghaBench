; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_pkey_rsa_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_pkey_rsa_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Private-Key: (%d bit, %d primes)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"modulus:\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"publicExponent:\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Public-Key: (%d bit)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Modulus:\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Exponent:\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"privateExponent:\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"prime1:\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"prime2:\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"exponent1:\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"exponent2:\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"coefficient:\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"prime%d:\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"exponent%d:\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"coefficient%d:\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32, i32)* @pkey_rsa_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_rsa_print(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 9
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 9
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @BN_num_bits(i32* %30)
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %27, %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sk_RSA_PRIME_INFO_num(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @BIO_indent(i32* %37, i32 %38, i32 128)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %248

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = call i64 @pkey_is_pss(%struct.TYPE_11__* %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %248

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 2
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 2, %65 ], [ %68, %66 ]
  %71 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %70)
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %248

74:                                               ; preds = %69
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %82

75:                                               ; preds = %55, %52
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %248

81:                                               ; preds = %75
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i32*, i32** %5, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 9
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ASN1_bn_print(i32* %83, i8* %84, i32* %87, i32* null, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %248

92:                                               ; preds = %82
  %93 = load i32*, i32** %5, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 8
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @ASN1_bn_print(i32* %93, i8* %94, i32* %97, i32* null, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %248

102:                                              ; preds = %92
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %234

105:                                              ; preds = %102
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @ASN1_bn_print(i32* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %109, i32* null, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  br label %248

114:                                              ; preds = %105
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @ASN1_bn_print(i32* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* %118, i32* null, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  br label %248

123:                                              ; preds = %114
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @ASN1_bn_print(i32* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32* %127, i32* null, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  br label %248

132:                                              ; preds = %123
  %133 = load i32*, i32** %5, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @ASN1_bn_print(i32* %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32* %136, i32* null, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  br label %248

141:                                              ; preds = %132
  %142 = load i32*, i32** %5, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @ASN1_bn_print(i32* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32* %145, i32* null, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %141
  br label %248

150:                                              ; preds = %141
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @ASN1_bn_print(i32* %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32* %154, i32* null, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %150
  br label %248

159:                                              ; preds = %150
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %230, %159
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @sk_RSA_PRIME_INFO_num(i32 %164)
  %166 = icmp slt i32 %161, %165
  br i1 %166, label %167, label %233

167:                                              ; preds = %160
  store i32* null, i32** %16, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call %struct.TYPE_9__* @sk_RSA_PRIME_INFO_value(i32 %170, i32 %171)
  store %struct.TYPE_9__* %172, %struct.TYPE_9__** %17, align 8
  store i32 0, i32* %18, align 4
  br label %173

173:                                              ; preds = %226, %167
  %174 = load i32, i32* %18, align 4
  %175 = icmp slt i32 %174, 3
  br i1 %175, label %176, label %229

176:                                              ; preds = %173
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @BIO_indent(i32* %177, i32 %178, i32 128)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  br label %248

182:                                              ; preds = %176
  %183 = load i32, i32* %18, align 4
  switch i32 %183, label %217 [
    i32 0, label %184
    i32 1, label %195
    i32 2, label %206
  ]

184:                                              ; preds = %182
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 3
  %188 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %187)
  %189 = icmp sle i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %248

191:                                              ; preds = %184
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  store i32* %194, i32** %16, align 8
  br label %218

195:                                              ; preds = %182
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 3
  %199 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %198)
  %200 = icmp sle i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %248

202:                                              ; preds = %195
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  store i32* %205, i32** %16, align 8
  br label %218

206:                                              ; preds = %182
  %207 = load i32*, i32** %5, align 8
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %208, 3
  %210 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %209)
  %211 = icmp sle i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %248

213:                                              ; preds = %206
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  store i32* %216, i32** %16, align 8
  br label %218

217:                                              ; preds = %182
  br label %218

218:                                              ; preds = %217, %213, %202, %191
  %219 = load i32*, i32** %5, align 8
  %220 = load i32*, i32** %16, align 8
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @ASN1_bn_print(i32* %219, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), i32* %220, i32* null, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %218
  br label %248

225:                                              ; preds = %218
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %18, align 4
  br label %173

229:                                              ; preds = %173
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  br label %160

233:                                              ; preds = %160
  br label %234

234:                                              ; preds = %233, %102
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %236 = call i64 @pkey_is_pss(%struct.TYPE_11__* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %234
  %239 = load i32*, i32** %5, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @rsa_pss_param_print(i32* %239, i32 1, i32 %242, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %238
  br label %248

247:                                              ; preds = %238, %234
  store i32 1, i32* %12, align 4
  br label %248

248:                                              ; preds = %247, %246, %224, %212, %201, %190, %181, %158, %149, %140, %131, %122, %113, %101, %91, %80, %73, %51, %41
  %249 = load i32, i32* %12, align 4
  ret i32 %249
}

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @sk_RSA_PRIME_INFO_num(i32) #1

declare dso_local i32 @BIO_indent(i32*, i32, i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i64 @pkey_is_pss(%struct.TYPE_11__*) #1

declare dso_local i32 @ASN1_bn_print(i32*, i8*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @sk_RSA_PRIME_INFO_value(i32, i32) #1

declare dso_local i32 @rsa_pss_param_print(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
