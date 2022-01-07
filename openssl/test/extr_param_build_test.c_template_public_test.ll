; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_param_build_test.c_template_public_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_param_build_test.c_template_public_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"bignumber\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"utf8_s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"utf8_p\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"bar-boom\00", align 1
@OSSL_PARAM_INTEGER = common dso_local global i32 0, align 4
@OSSL_PARAM_REAL = common dso_local global i32 0, align 4
@OSSL_PARAM_UNSIGNED_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @template_public_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @template_public_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %5, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = call i32 @ossl_param_bld_init(i32* %1)
  %15 = call i32 @ossl_param_bld_push_int(i32* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 -6)
  %16 = call i32 @TEST_true(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %289

18:                                               ; preds = %0
  %19 = call i32 @ossl_param_bld_push_long(i32* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 42)
  %20 = call i32 @TEST_true(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %289

22:                                               ; preds = %18
  %23 = call i32 @ossl_param_bld_push_int32(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 1532)
  %24 = call i32 @TEST_true(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %289

26:                                               ; preds = %22
  %27 = call i32 @ossl_param_bld_push_int64(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 -9999999)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %289

30:                                               ; preds = %26
  %31 = call i32 @ossl_param_bld_push_double(i32* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), double 0x3FF9E3779B97F681)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %289

34:                                               ; preds = %30
  %35 = call %struct.TYPE_23__* (...) @BN_new()
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %4, align 8
  %36 = call i32 @TEST_ptr(%struct.TYPE_23__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %289

38:                                               ; preds = %34
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %40 = call i32 @BN_set_word(%struct.TYPE_23__* %39, i32 1729)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %289

43:                                               ; preds = %38
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %45 = call i32 @ossl_param_bld_push_BN(i32* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_23__* %44)
  %46 = call i32 @TEST_true(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %289

48:                                               ; preds = %43
  %49 = call i32 @ossl_param_bld_push_utf8_string(i32* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %50 = call i32 @TEST_true(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %289

52:                                               ; preds = %48
  %53 = call i32 @ossl_param_bld_push_utf8_ptr(i32* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %54 = call i32 @TEST_true(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %289

56:                                               ; preds = %52
  %57 = call %struct.TYPE_23__* @ossl_param_bld_to_param(i32* %1)
  store %struct.TYPE_23__* %57, %struct.TYPE_23__** %2, align 8
  %58 = call i32 @TEST_ptr(%struct.TYPE_23__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %289

60:                                               ; preds = %56
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %62 = call %struct.TYPE_23__* @OSSL_PARAM_locate(%struct.TYPE_23__* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_23__* %62, %struct.TYPE_23__** %3, align 8
  %63 = call i32 @TEST_ptr(%struct.TYPE_23__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %289

65:                                               ; preds = %60
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %67 = call i32 @OSSL_PARAM_get_int(%struct.TYPE_23__* %66, i32* %6)
  %68 = call i32 @TEST_true(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %289

70:                                               ; preds = %65
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @TEST_str_eq(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %289

76:                                               ; preds = %70
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @OSSL_PARAM_INTEGER, align 4
  %81 = call i32 @TEST_uint_eq(i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %289

83:                                               ; preds = %76
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @TEST_size_t_eq(i32 %86, i32 4)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %289

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @TEST_int_eq(i32 %90, i32 -6)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %289

93:                                               ; preds = %89
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %95 = call %struct.TYPE_23__* @OSSL_PARAM_locate(%struct.TYPE_23__* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_23__* %95, %struct.TYPE_23__** %3, align 8
  %96 = call i32 @TEST_ptr(%struct.TYPE_23__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %289

98:                                               ; preds = %93
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %100 = call i32 @OSSL_PARAM_get_int32(%struct.TYPE_23__* %99, i64* %8)
  %101 = call i32 @TEST_true(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %289

103:                                              ; preds = %98
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @TEST_str_eq(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %289

109:                                              ; preds = %103
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @OSSL_PARAM_INTEGER, align 4
  %114 = call i32 @TEST_uint_eq(i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %289

116:                                              ; preds = %109
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @TEST_size_t_eq(i32 %119, i32 8)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %289

122:                                              ; preds = %116
  %123 = load i64, i64* %8, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @TEST_int_eq(i32 %124, i32 1532)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %289

127:                                              ; preds = %122
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %129 = call %struct.TYPE_23__* @OSSL_PARAM_locate(%struct.TYPE_23__* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_23__* %129, %struct.TYPE_23__** %3, align 8
  %130 = call i32 @TEST_ptr(%struct.TYPE_23__* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %289

132:                                              ; preds = %127
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @TEST_str_eq(i8* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %289

138:                                              ; preds = %132
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @OSSL_PARAM_INTEGER, align 4
  %143 = call i32 @TEST_uint_eq(i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %289

145:                                              ; preds = %138
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @TEST_size_t_eq(i32 %148, i32 8)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %289

151:                                              ; preds = %145
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %153 = call i32 @OSSL_PARAM_get_int64(%struct.TYPE_23__* %152, i64* %9)
  %154 = call i32 @TEST_true(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %289

156:                                              ; preds = %151
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @TEST_long_eq(i64 %157, i32 -9999999)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %289

160:                                              ; preds = %156
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %162 = call %struct.TYPE_23__* @OSSL_PARAM_locate(%struct.TYPE_23__* %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_23__* %162, %struct.TYPE_23__** %3, align 8
  %163 = call i32 @TEST_ptr(%struct.TYPE_23__* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %289

165:                                              ; preds = %160
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @TEST_str_eq(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %289

171:                                              ; preds = %165
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @OSSL_PARAM_INTEGER, align 4
  %176 = call i32 @TEST_uint_eq(i32 %174, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %289

178:                                              ; preds = %171
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @TEST_size_t_eq(i32 %181, i32 8)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %289

184:                                              ; preds = %178
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %186 = call i32 @OSSL_PARAM_get_long(%struct.TYPE_23__* %185, i64* %7)
  %187 = call i32 @TEST_true(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %289

189:                                              ; preds = %184
  %190 = load i64, i64* %7, align 8
  %191 = call i32 @TEST_long_eq(i64 %190, i32 42)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %289

193:                                              ; preds = %189
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %195 = call %struct.TYPE_23__* @OSSL_PARAM_locate(%struct.TYPE_23__* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_23__* %195, %struct.TYPE_23__** %3, align 8
  %196 = call i32 @TEST_ptr(%struct.TYPE_23__* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %289

198:                                              ; preds = %193
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %200 = call i32 @OSSL_PARAM_get_double(%struct.TYPE_23__* %199, double* %10)
  %201 = call i32 @TEST_true(i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %289

203:                                              ; preds = %198
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @TEST_str_eq(i8* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %289

209:                                              ; preds = %203
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @OSSL_PARAM_REAL, align 4
  %214 = call i32 @TEST_uint_eq(i32 %212, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %289

216:                                              ; preds = %209
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @TEST_size_t_eq(i32 %219, i32 8)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %289

222:                                              ; preds = %216
  %223 = load double, double* %10, align 8
  %224 = call i32 @TEST_double_eq(double %223, double 0x3FF9E3779B97F681)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %289

226:                                              ; preds = %222
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %228 = call %struct.TYPE_23__* @OSSL_PARAM_locate(%struct.TYPE_23__* %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_23__* %228, %struct.TYPE_23__** %3, align 8
  %229 = call i32 @TEST_ptr(%struct.TYPE_23__* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %289

231:                                              ; preds = %226
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @TEST_str_eq(i8* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %289

237:                                              ; preds = %231
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %239 = call i32 @OSSL_PARAM_get_utf8_string(%struct.TYPE_23__* %238, i8** %11, i32 0)
  %240 = call i32 @TEST_true(i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %289

242:                                              ; preds = %237
  %243 = load i8*, i8** %11, align 8
  %244 = call i32 @TEST_str_eq(i8* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %289

246:                                              ; preds = %242
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %248 = call %struct.TYPE_23__* @OSSL_PARAM_locate(%struct.TYPE_23__* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_23__* %248, %struct.TYPE_23__** %3, align 8
  %249 = call i32 @TEST_ptr(%struct.TYPE_23__* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %289

251:                                              ; preds = %246
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %253 = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.TYPE_23__* %252, i8** %12)
  %254 = call i32 @TEST_true(i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %289

256:                                              ; preds = %251
  %257 = load i8*, i8** %12, align 8
  %258 = call i32 @TEST_str_eq(i8* %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %289

260:                                              ; preds = %256
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %262 = call %struct.TYPE_23__* @OSSL_PARAM_locate(%struct.TYPE_23__* %261, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_23__* %262, %struct.TYPE_23__** %3, align 8
  %263 = call i32 @TEST_ptr(%struct.TYPE_23__* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %289

265:                                              ; preds = %260
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @TEST_str_eq(i8* %268, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %289

271:                                              ; preds = %265
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %276 = call i32 @TEST_uint_eq(i32 %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %289

278:                                              ; preds = %271
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %280 = call i32 @OSSL_PARAM_get_BN(%struct.TYPE_23__* %279, %struct.TYPE_23__** %5)
  %281 = call i32 @TEST_true(i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %286 = call i32 @BN_cmp(%struct.TYPE_23__* %284, %struct.TYPE_23__* %285)
  %287 = call i32 @TEST_int_eq(i32 %286, i32 0)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %283, %278, %271, %265, %260, %256, %251, %246, %242, %237, %231, %226, %222, %216, %209, %203, %198, %193, %189, %184, %178, %171, %165, %160, %156, %151, %145, %138, %132, %127, %122, %116, %109, %103, %98, %93, %89, %83, %76, %70, %65, %60, %56, %52, %48, %43, %38, %34, %30, %26, %22, %18, %0
  br label %291

290:                                              ; preds = %283
  store i32 1, i32* %13, align 4
  br label %291

291:                                              ; preds = %290, %289
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %293 = call i32 @ossl_param_bld_free(%struct.TYPE_23__* %292)
  %294 = load i8*, i8** %11, align 8
  %295 = call i32 @OPENSSL_free(i8* %294)
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %297 = call i32 @BN_free(%struct.TYPE_23__* %296)
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %299 = call i32 @BN_free(%struct.TYPE_23__* %298)
  %300 = load i32, i32* %13, align 4
  ret i32 %300
}

declare dso_local i32 @ossl_param_bld_init(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @ossl_param_bld_push_int(i32*, i8*, i32) #1

declare dso_local i32 @ossl_param_bld_push_long(i32*, i8*, i32) #1

declare dso_local i32 @ossl_param_bld_push_int32(i32*, i8*, i32) #1

declare dso_local i32 @ossl_param_bld_push_int64(i32*, i8*, i32) #1

declare dso_local i32 @ossl_param_bld_push_double(i32*, i8*, double) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @BN_new(...) #1

declare dso_local i32 @BN_set_word(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ossl_param_bld_push_BN(i32*, i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @ossl_param_bld_push_utf8_string(i32*, i8*, i8*, i32) #1

declare dso_local i32 @ossl_param_bld_push_utf8_ptr(i32*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_23__* @ossl_param_bld_to_param(i32*) #1

declare dso_local %struct.TYPE_23__* @OSSL_PARAM_locate(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @OSSL_PARAM_get_int(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @TEST_str_eq(i8*, i8*) #1

declare dso_local i32 @TEST_uint_eq(i32, i32) #1

declare dso_local i32 @TEST_size_t_eq(i32, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_get_int32(%struct.TYPE_23__*, i64*) #1

declare dso_local i32 @OSSL_PARAM_get_int64(%struct.TYPE_23__*, i64*) #1

declare dso_local i32 @TEST_long_eq(i64, i32) #1

declare dso_local i32 @OSSL_PARAM_get_long(%struct.TYPE_23__*, i64*) #1

declare dso_local i32 @OSSL_PARAM_get_double(%struct.TYPE_23__*, double*) #1

declare dso_local i32 @TEST_double_eq(double, double) #1

declare dso_local i32 @OSSL_PARAM_get_utf8_string(%struct.TYPE_23__*, i8**, i32) #1

declare dso_local i32 @OSSL_PARAM_get_utf8_ptr(%struct.TYPE_23__*, i8**) #1

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.TYPE_23__*, %struct.TYPE_23__**) #1

declare dso_local i32 @BN_cmp(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ossl_param_bld_free(%struct.TYPE_23__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BN_free(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
