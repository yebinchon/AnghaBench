; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_param_build_test.c_template_private_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_param_build_test.c_template_private_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, i8*, i32 }

@template_private_test.data1 = internal global [7 x i32] [i32 2, i32 3, i32 5, i32 7, i32 11, i32 15, i32 17], align 16
@template_private_test.data2 = internal global [5 x i8] c"\02\04\06\08\0A", align 1
@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"bignumber\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"oct_s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"oct_p\00", align 1
@OSSL_PARAM_UNSIGNED_INTEGER = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @template_private_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @template_private_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 @ossl_param_bld_init(i32* %1)
  %13 = call i32 @ossl_param_bld_push_uint(i32* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 6)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %309

16:                                               ; preds = %0
  %17 = call i32 @ossl_param_bld_push_ulong(i32* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 42)
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %309

20:                                               ; preds = %16
  %21 = call i32 @ossl_param_bld_push_uint32(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 1532)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %309

24:                                               ; preds = %20
  %25 = call i32 @ossl_param_bld_push_uint64(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 9999999)
  %26 = call i32 @TEST_true(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %309

28:                                               ; preds = %24
  %29 = call i32 @ossl_param_bld_push_size_t(i32* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 65537)
  %30 = call i32 @TEST_true(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %309

32:                                               ; preds = %28
  %33 = call %struct.TYPE_21__* (...) @BN_secure_new()
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %9, align 8
  %34 = call i32 @TEST_ptr(%struct.TYPE_21__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %309

36:                                               ; preds = %32
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %38 = call i32 @BN_set_word(%struct.TYPE_21__* %37, i32 1729)
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %309

41:                                               ; preds = %36
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %43 = call i32 @ossl_param_bld_push_BN(i32* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_21__* %42)
  %44 = call i32 @TEST_true(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %309

46:                                               ; preds = %41
  %47 = call i32 @ossl_param_bld_push_octet_string(i32* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* getelementptr inbounds ([7 x i32], [7 x i32]* @template_private_test.data1, i64 0, i64 0), i32 28)
  %48 = call i32 @TEST_true(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %309

50:                                               ; preds = %46
  %51 = call i32 @ossl_param_bld_push_octet_ptr(i32* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @template_private_test.data2, i64 0, i64 0), i32 5)
  %52 = call i32 @TEST_true(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %309

54:                                               ; preds = %50
  %55 = call %struct.TYPE_21__* @ossl_param_bld_to_param(i32* %1)
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %2, align 8
  %56 = call i32 @TEST_ptr(%struct.TYPE_21__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %309

58:                                               ; preds = %54
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %60 = call %struct.TYPE_21__* @OSSL_PARAM_locate(%struct.TYPE_21__* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %3, align 8
  %61 = call i32 @TEST_ptr(%struct.TYPE_21__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %309

63:                                               ; preds = %58
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %65 = call i32 @OSSL_PARAM_get_uint(%struct.TYPE_21__* %64, i32* %4)
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %309

68:                                               ; preds = %63
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @TEST_str_eq(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %309

74:                                               ; preds = %68
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %79 = call i32 @TEST_uint_eq(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %309

81:                                               ; preds = %74
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @TEST_size_t_eq(i64 %84, i32 4)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %309

87:                                               ; preds = %81
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @TEST_uint_eq(i32 %88, i32 6)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %309

91:                                               ; preds = %87
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %93 = call %struct.TYPE_21__* @OSSL_PARAM_locate(%struct.TYPE_21__* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %3, align 8
  %94 = call i32 @TEST_ptr(%struct.TYPE_21__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %309

96:                                               ; preds = %91
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %98 = call i32 @OSSL_PARAM_get_uint32(%struct.TYPE_21__* %97, i64* %6)
  %99 = call i32 @TEST_true(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %309

101:                                              ; preds = %96
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @TEST_str_eq(i32 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %309

107:                                              ; preds = %101
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %112 = call i32 @TEST_uint_eq(i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %309

114:                                              ; preds = %107
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @TEST_size_t_eq(i64 %117, i32 4)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %309

120:                                              ; preds = %114
  %121 = load i64, i64* %6, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @TEST_uint_eq(i32 %122, i32 1532)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %309

125:                                              ; preds = %120
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %127 = call %struct.TYPE_21__* @OSSL_PARAM_locate(%struct.TYPE_21__* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %3, align 8
  %128 = call i32 @TEST_ptr(%struct.TYPE_21__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %309

130:                                              ; preds = %125
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @TEST_str_eq(i32 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %309

136:                                              ; preds = %130
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %141 = call i32 @TEST_uint_eq(i32 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %309

143:                                              ; preds = %136
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @TEST_size_t_eq(i64 %146, i32 4)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %309

149:                                              ; preds = %143
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %151 = call i32 @OSSL_PARAM_get_uint64(%struct.TYPE_21__* %150, i64* %7)
  %152 = call i32 @TEST_true(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %309

154:                                              ; preds = %149
  %155 = load i64, i64* %7, align 8
  %156 = call i32 @TEST_ulong_eq(i64 %155, i32 9999999)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %309

158:                                              ; preds = %154
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %160 = call %struct.TYPE_21__* @OSSL_PARAM_locate(%struct.TYPE_21__* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_21__* %160, %struct.TYPE_21__** %3, align 8
  %161 = call i32 @TEST_ptr(%struct.TYPE_21__* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %309

163:                                              ; preds = %158
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @TEST_str_eq(i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %309

169:                                              ; preds = %163
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %174 = call i32 @TEST_uint_eq(i32 %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %309

176:                                              ; preds = %169
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @TEST_size_t_eq(i64 %179, i32 8)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %309

182:                                              ; preds = %176
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %184 = call i32 @OSSL_PARAM_get_ulong(%struct.TYPE_21__* %183, i64* %5)
  %185 = call i32 @TEST_true(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %309

187:                                              ; preds = %182
  %188 = load i64, i64* %5, align 8
  %189 = call i32 @TEST_ulong_eq(i64 %188, i32 42)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %309

191:                                              ; preds = %187
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %193 = call %struct.TYPE_21__* @OSSL_PARAM_locate(%struct.TYPE_21__* %192, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_21__* %193, %struct.TYPE_21__** %3, align 8
  %194 = call i32 @TEST_ptr(%struct.TYPE_21__* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %309

196:                                              ; preds = %191
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @TEST_str_eq(i32 %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %309

202:                                              ; preds = %196
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %207 = call i32 @TEST_uint_eq(i32 %205, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %309

209:                                              ; preds = %202
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @TEST_size_t_eq(i64 %212, i32 8)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %309

215:                                              ; preds = %209
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %217 = call i32 @OSSL_PARAM_get_size_t(%struct.TYPE_21__* %216, i64* %8)
  %218 = call i32 @TEST_true(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %309

220:                                              ; preds = %215
  %221 = load i64, i64* %8, align 8
  %222 = call i32 @TEST_size_t_eq(i64 %221, i32 65537)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %309

224:                                              ; preds = %220
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %226 = call %struct.TYPE_21__* @OSSL_PARAM_locate(%struct.TYPE_21__* %225, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_21__* %226, %struct.TYPE_21__** %3, align 8
  %227 = call i32 @TEST_ptr(%struct.TYPE_21__* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %309

229:                                              ; preds = %224
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @TEST_str_eq(i32 %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %309

235:                                              ; preds = %229
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @OSSL_PARAM_OCTET_STRING, align 4
  %240 = call i32 @TEST_uint_eq(i32 %238, i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %309

242:                                              ; preds = %235
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 2
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call i32 (i8*, i64, ...) @TEST_mem_eq(i8* %245, i64 %248, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @template_private_test.data1, i64 0, i64 0), i64 28)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %309

251:                                              ; preds = %242
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %253 = call %struct.TYPE_21__* @OSSL_PARAM_locate(%struct.TYPE_21__* %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_21__* %253, %struct.TYPE_21__** %3, align 8
  %254 = call i32 @TEST_ptr(%struct.TYPE_21__* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %309

256:                                              ; preds = %251
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @TEST_str_eq(i32 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %309

262:                                              ; preds = %256
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @OSSL_PARAM_OCTET_PTR, align 4
  %267 = call i32 @TEST_uint_eq(i32 %265, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %309

269:                                              ; preds = %262
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 2
  %272 = load i8*, i8** %271, align 8
  %273 = bitcast i8* %272 to i8**
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = call i32 (i8*, i64, ...) @TEST_mem_eq(i8* %274, i64 %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @template_private_test.data2, i64 0, i64 0), i64 5)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %309

280:                                              ; preds = %269
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %282 = call %struct.TYPE_21__* @OSSL_PARAM_locate(%struct.TYPE_21__* %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_21__* %282, %struct.TYPE_21__** %3, align 8
  %283 = call i32 @TEST_ptr(%struct.TYPE_21__* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %309

285:                                              ; preds = %280
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @TEST_str_eq(i32 %288, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %309

291:                                              ; preds = %285
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %296 = call i32 @TEST_uint_eq(i32 %294, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %309

298:                                              ; preds = %291
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %300 = call i32 @OSSL_PARAM_get_BN(%struct.TYPE_21__* %299, %struct.TYPE_21__** %10)
  %301 = call i32 @TEST_true(i32 %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %298
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %306 = call i32 @BN_cmp(%struct.TYPE_21__* %304, %struct.TYPE_21__* %305)
  %307 = call i32 @TEST_int_eq(i32 %306, i32 0)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %303, %298, %291, %285, %280, %269, %262, %256, %251, %242, %235, %229, %224, %220, %215, %209, %202, %196, %191, %187, %182, %176, %169, %163, %158, %154, %149, %143, %136, %130, %125, %120, %114, %107, %101, %96, %91, %87, %81, %74, %68, %63, %58, %54, %50, %46, %41, %36, %32, %28, %24, %20, %16, %0
  br label %311

310:                                              ; preds = %303
  store i32 1, i32* %11, align 4
  br label %311

311:                                              ; preds = %310, %309
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %313 = call i32 @ossl_param_bld_free(%struct.TYPE_21__* %312)
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %315 = call i32 @BN_free(%struct.TYPE_21__* %314)
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %317 = call i32 @BN_free(%struct.TYPE_21__* %316)
  %318 = load i32, i32* %11, align 4
  ret i32 %318
}

declare dso_local i32 @ossl_param_bld_init(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @ossl_param_bld_push_uint(i32*, i8*, i32) #1

declare dso_local i32 @ossl_param_bld_push_ulong(i32*, i8*, i32) #1

declare dso_local i32 @ossl_param_bld_push_uint32(i32*, i8*, i32) #1

declare dso_local i32 @ossl_param_bld_push_uint64(i32*, i8*, i32) #1

declare dso_local i32 @ossl_param_bld_push_size_t(i32*, i8*, i32) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @BN_secure_new(...) #1

declare dso_local i32 @BN_set_word(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ossl_param_bld_push_BN(i32*, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @ossl_param_bld_push_octet_string(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ossl_param_bld_push_octet_ptr(i32*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_21__* @ossl_param_bld_to_param(i32*) #1

declare dso_local %struct.TYPE_21__* @OSSL_PARAM_locate(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @OSSL_PARAM_get_uint(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @TEST_str_eq(i32, i8*) #1

declare dso_local i32 @TEST_uint_eq(i32, i32) #1

declare dso_local i32 @TEST_size_t_eq(i64, i32) #1

declare dso_local i32 @OSSL_PARAM_get_uint32(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @OSSL_PARAM_get_uint64(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @TEST_ulong_eq(i64, i32) #1

declare dso_local i32 @OSSL_PARAM_get_ulong(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i64, ...) #1

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.TYPE_21__*, %struct.TYPE_21__**) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BN_cmp(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ossl_param_bld_free(%struct.TYPE_21__*) #1

declare dso_local i32 @BN_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
