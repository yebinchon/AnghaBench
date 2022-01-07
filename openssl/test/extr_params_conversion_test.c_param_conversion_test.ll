; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_conversion_test.c_param_conversion_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_conversion_test.c_param_conversion_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"unexpected valid conversion to int32 on line %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"unexpected conversion to int32 on line %d\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"unexpected valid conversion from int32 on line %d\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"unexpected valid conversion to int64 on line %d\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"unexpected conversion to int64 on line %d\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"unexpected valid conversion from int64 on line %d\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"unexpected valid conversion to uint32 on line %d\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"unexpected conversion to uint32 on line %d\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"unexpected valid conversion from uint32 on line %d\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"unexpected valid conversion to uint64 on line %d\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"unexpected conversion to uint64 on line %d\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"unexpected valid conversion from uint64 on line %d\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"unexpected valid conversion to double on line %d\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"unexpected conversion to double on line %d\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"unexpected valid conversion from double on line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @param_conversion_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_conversion_test(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @OSSL_PARAM_get_int32(i32 %18, i64* %6)
  %20 = call i32 @TEST_false(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @TEST_note(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %3, align 4
  br label %356

25:                                               ; preds = %15
  br label %79

26:                                               ; preds = %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @OSSL_PARAM_get_int32(i32 %29, i64* %6)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_true(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33, %26
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @TEST_note(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 0, i32* %3, align 4
  br label %356

45:                                               ; preds = %33
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memset(i32 %48, i32 44, i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @OSSL_PARAM_set_int32(i32 %55, i64 %56)
  %58 = call i32 @TEST_true(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %45
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @TEST_mem_eq(i32 %63, i32 %66, i32 %69, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %60, %45
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @TEST_note(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 0, i32* %3, align 4
  br label %356

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %25
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 12
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @OSSL_PARAM_get_int64(i32 %87, i64* %7)
  %89 = call i32 @TEST_false(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @TEST_note(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  store i32 0, i32* %3, align 4
  br label %356

94:                                               ; preds = %84
  br label %148

95:                                               ; preds = %79
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @OSSL_PARAM_get_int64(i32 %98, i64* %7)
  %100 = call i32 @TEST_true(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @TEST_true(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %102, %95
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @TEST_note(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  store i32 0, i32* %3, align 4
  br label %356

114:                                              ; preds = %102
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @memset(i32 %117, i32 44, i32 %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @OSSL_PARAM_set_int64(i32 %124, i64 %125)
  %127 = call i32 @TEST_true(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %114
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @TEST_mem_eq(i32 %132, i32 %135, i32 %138, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %129, %114
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @TEST_note(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  store i32 0, i32* %3, align 4
  br label %356

147:                                              ; preds = %129
  br label %148

148:                                              ; preds = %147, %94
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 11
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @OSSL_PARAM_get_uint32(i32 %156, i64* %8)
  %158 = call i32 @TEST_false(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @TEST_note(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  store i32 0, i32* %3, align 4
  br label %356

163:                                              ; preds = %153
  br label %217

164:                                              ; preds = %148
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @OSSL_PARAM_get_uint32(i32 %167, i64* %8)
  %169 = call i32 @TEST_true(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %164
  %172 = load i64, i64* %8, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @TEST_true(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %171, %164
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @TEST_note(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %181)
  store i32 0, i32* %3, align 4
  br label %356

183:                                              ; preds = %171
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @memset(i32 %186, i32 44, i32 %189)
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %8, align 8
  %195 = call i32 @OSSL_PARAM_set_uint32(i32 %193, i64 %194)
  %196 = call i32 @TEST_true(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %183
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @TEST_mem_eq(i32 %201, i32 %204, i32 %207, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %198, %183
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @TEST_note(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %214)
  store i32 0, i32* %3, align 4
  br label %356

216:                                              ; preds = %198
  br label %217

217:                                              ; preds = %216, %163
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %233, label %222

222:                                              ; preds = %217
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @OSSL_PARAM_get_uint64(i32 %225, i64* %9)
  %227 = call i32 @TEST_false(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %222
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @TEST_note(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %230)
  store i32 0, i32* %3, align 4
  br label %356

232:                                              ; preds = %222
  br label %286

233:                                              ; preds = %217
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @OSSL_PARAM_get_uint64(i32 %236, i64* %9)
  %238 = call i32 @TEST_true(i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %233
  %241 = load i64, i64* %9, align 8
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %241, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @TEST_true(i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %240, %233
  %250 = load i32, i32* %5, align 4
  %251 = call i32 @TEST_note(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %250)
  store i32 0, i32* %3, align 4
  br label %356

252:                                              ; preds = %240
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @memset(i32 %255, i32 44, i32 %258)
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 4
  %263 = load i64, i64* %9, align 8
  %264 = call i32 @OSSL_PARAM_set_uint64(i32 %262, i64 %263)
  %265 = call i32 @TEST_true(i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %282

267:                                              ; preds = %252
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @TEST_mem_eq(i32 %270, i32 %273, i32 %276, i32 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %267, %252
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @TEST_note(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %283)
  store i32 0, i32* %3, align 4
  br label %356

285:                                              ; preds = %267
  br label %286

286:                                              ; preds = %285, %232
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %302, label %291

291:                                              ; preds = %286
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @OSSL_PARAM_get_double(i32 %294, double* %10)
  %296 = call i32 @TEST_false(i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %291
  %299 = load i32, i32* %5, align 4
  %300 = call i32 @TEST_note(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 %299)
  store i32 0, i32* %3, align 4
  br label %356

301:                                              ; preds = %291
  br label %355

302:                                              ; preds = %286
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @OSSL_PARAM_get_double(i32 %305, double* %10)
  %307 = call i32 @TEST_true(i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %302
  %310 = load double, double* %10, align 8
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 4
  %313 = load double, double* %312, align 8
  %314 = fcmp oeq double %310, %313
  %315 = zext i1 %314 to i32
  %316 = call i32 @TEST_true(i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %309, %302
  %319 = load i32, i32* %5, align 4
  %320 = call i32 @TEST_note(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %319)
  store i32 0, i32* %3, align 4
  br label %356

321:                                              ; preds = %309
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 7
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @memset(i32 %324, i32 44, i32 %327)
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 4
  %332 = load double, double* %10, align 8
  %333 = call i32 @OSSL_PARAM_set_double(i32 %331, double %332)
  %334 = call i32 @TEST_true(i32 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %351

336:                                              ; preds = %321
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @TEST_mem_eq(i32 %339, i32 %342, i32 %345, i32 %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %336, %321
  %352 = load i32, i32* %5, align 4
  %353 = call i32 @TEST_note(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 %352)
  store i32 0, i32* %3, align 4
  br label %356

354:                                              ; preds = %336
  br label %355

355:                                              ; preds = %354, %301
  store i32 1, i32* %3, align 4
  br label %356

356:                                              ; preds = %355, %351, %318, %298, %282, %249, %229, %213, %180, %160, %144, %111, %91, %75, %42, %22
  %357 = load i32, i32* %3, align 4
  ret i32 %357
}

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @OSSL_PARAM_get_int32(i32, i64*) #1

declare dso_local i32 @TEST_note(i8*, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @OSSL_PARAM_set_int32(i32, i64) #1

declare dso_local i32 @TEST_mem_eq(i32, i32, i32, i32) #1

declare dso_local i32 @OSSL_PARAM_get_int64(i32, i64*) #1

declare dso_local i32 @OSSL_PARAM_set_int64(i32, i64) #1

declare dso_local i32 @OSSL_PARAM_get_uint32(i32, i64*) #1

declare dso_local i32 @OSSL_PARAM_set_uint32(i32, i64) #1

declare dso_local i32 @OSSL_PARAM_get_uint64(i32, i64*) #1

declare dso_local i32 @OSSL_PARAM_set_uint64(i32, i64) #1

declare dso_local i32 @OSSL_PARAM_get_double(i32, double*) #1

declare dso_local i32 @OSSL_PARAM_set_double(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
