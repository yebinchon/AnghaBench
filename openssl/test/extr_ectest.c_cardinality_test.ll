; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_cardinality_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_cardinality_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@curves = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Curve %s cardinality test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cardinality_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardinality_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curves, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @OBJ_nid2sn(i32 %24)
  %26 = call i32 @TEST_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32* (...) @BN_CTX_new()
  store i32* %27, i32** %6, align 8
  %28 = call i32 @TEST_ptr(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = call i32* @EC_GROUP_new_by_curve_name(i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = call i32 @TEST_ptr(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @EC_GROUP_method_of(i32* %36)
  %38 = call i32* @EC_GROUP_new(i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = call i32 @TEST_ptr(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %35, %30, %1
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @EC_GROUP_free(i32* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @EC_GROUP_free(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @BN_CTX_free(i32* %46)
  store i32 0, i32* %2, align 4
  br label %253

48:                                               ; preds = %35
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @BN_CTX_start(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32* @BN_CTX_get(i32* %51)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32* @BN_CTX_get(i32* %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32* @BN_CTX_get(i32* %55)
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @BN_CTX_get(i32* %57)
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32* @BN_CTX_get(i32* %59)
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32* @BN_CTX_get(i32* %61)
  store i32* %62, i32** %15, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32* @BN_CTX_get(i32* %63)
  store i32* %64, i32** %16, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32* @BN_CTX_get(i32* %65)
  store i32* %66, i32** %17, align 8
  %67 = call i32 @TEST_ptr(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %239

69:                                               ; preds = %48
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @EC_GROUP_get_curve(i32* %70, i32* %71, i32* %72, i32* %73, i32* %74)
  %76 = call i32 @TEST_true(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %239

78:                                               ; preds = %69
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @EC_GROUP_get0_generator(i32* %80)
  %82 = load i32*, i32** %13, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @EC_POINT_get_affine_coordinates(i32* %79, i32 %81, i32* %82, i32* %83, i32* %84)
  %86 = call i32 @TEST_true(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %239

88:                                               ; preds = %78
  %89 = load i32*, i32** %15, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @EC_GROUP_get0_order(i32* %90)
  %92 = call i32 @BN_copy(i32* %89, i32 %91)
  %93 = call i32 @TEST_true(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %239

95:                                               ; preds = %88
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @EC_GROUP_get_cofactor(i32* %96, i32* %97, i32* %98)
  %100 = call i32 @TEST_true(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %239

102:                                              ; preds = %95
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @EC_GROUP_set_curve(i32* %103, i32* %104, i32* %105, i32* %106, i32* %107)
  %109 = call i32 @TEST_true(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %239

111:                                              ; preds = %102
  %112 = load i32*, i32** %8, align 8
  %113 = call i32* @EC_POINT_new(i32* %112)
  store i32* %113, i32** %9, align 8
  %114 = call i32 @TEST_ptr(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %239

116:                                              ; preds = %111
  %117 = load i32*, i32** %8, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @EC_POINT_set_affine_coordinates(i32* %117, i32* %118, i32* %119, i32* %120, i32* %121)
  %123 = call i32 @TEST_true(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %239

125:                                              ; preds = %116
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @EC_GROUP_set_generator(i32* %126, i32* %127, i32* %128, i32* null)
  %130 = call i32 @TEST_true(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %239

132:                                              ; preds = %125
  %133 = load i32*, i32** %8, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @EC_GROUP_get_cofactor(i32* %133, i32* %134, i32* %135)
  %137 = call i32 @TEST_true(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %239

139:                                              ; preds = %132
  %140 = load i32*, i32** %16, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = call i32 @TEST_BN_eq(i32* %140, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %239

144:                                              ; preds = %139
  %145 = load i32*, i32** %17, align 8
  %146 = call i32 @BN_set_word(i32* %145, i32 0)
  %147 = call i32 @TEST_true(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %239

149:                                              ; preds = %144
  %150 = load i32*, i32** %8, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32*, i32** %15, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = call i32 @EC_GROUP_set_generator(i32* %150, i32* %151, i32* %152, i32* %153)
  %155 = call i32 @TEST_true(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %239

157:                                              ; preds = %149
  %158 = load i32*, i32** %8, align 8
  %159 = load i32*, i32** %17, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @EC_GROUP_get_cofactor(i32* %158, i32* %159, i32* %160)
  %162 = call i32 @TEST_true(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %239

164:                                              ; preds = %157
  %165 = load i32*, i32** %16, align 8
  %166 = load i32*, i32** %17, align 8
  %167 = call i32 @TEST_BN_eq(i32* %165, i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %239

169:                                              ; preds = %164
  %170 = load i32*, i32** %17, align 8
  %171 = call i32 @BN_set_word(i32* %170, i32 0)
  %172 = call i32 @TEST_true(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %239

174:                                              ; preds = %169
  %175 = load i32*, i32** %17, align 8
  %176 = load i32*, i32** %17, align 8
  %177 = call i32 (...) @BN_value_one()
  %178 = call i32 @BN_sub(i32* %175, i32* %176, i32 %177)
  %179 = call i32 @TEST_true(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %239

181:                                              ; preds = %174
  %182 = load i32*, i32** %8, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = load i32*, i32** %17, align 8
  %186 = call i32 @EC_GROUP_set_generator(i32* %182, i32* %183, i32* %184, i32* %185)
  %187 = call i32 @TEST_false(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %239

189:                                              ; preds = %181
  %190 = load i32*, i32** %8, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = call i32 @EC_GROUP_set_generator(i32* %190, i32* %191, i32* null, i32* null)
  %193 = call i32 @TEST_false(i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %239

195:                                              ; preds = %189
  %196 = load i32*, i32** %15, align 8
  %197 = call i32 @BN_set_word(i32* %196, i32 0)
  %198 = call i32 @TEST_true(i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %239

200:                                              ; preds = %195
  %201 = load i32*, i32** %8, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = load i32*, i32** %15, align 8
  %204 = call i32 @EC_GROUP_set_generator(i32* %201, i32* %202, i32* %203, i32* null)
  %205 = call i32 @TEST_false(i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %239

207:                                              ; preds = %200
  %208 = load i32*, i32** %17, align 8
  %209 = call i32 @BN_set_word(i32* %208, i32 0)
  %210 = call i32 @TEST_true(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %239

212:                                              ; preds = %207
  %213 = load i32*, i32** %17, align 8
  %214 = load i32*, i32** %17, align 8
  %215 = call i32 (...) @BN_value_one()
  %216 = call i32 @BN_sub(i32* %213, i32* %214, i32 %215)
  %217 = call i32 @TEST_true(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %239

219:                                              ; preds = %212
  %220 = load i32*, i32** %8, align 8
  %221 = load i32*, i32** %9, align 8
  %222 = load i32*, i32** %15, align 8
  %223 = call i32 @EC_GROUP_set_generator(i32* %220, i32* %221, i32* %222, i32* null)
  %224 = call i32 @TEST_false(i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %239

226:                                              ; preds = %219
  %227 = load i32*, i32** %15, align 8
  %228 = load i32*, i32** %10, align 8
  %229 = call i32 @BN_lshift(i32* %227, i32* %228, i32 2)
  %230 = call i32 @TEST_true(i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %226
  %233 = load i32*, i32** %8, align 8
  %234 = load i32*, i32** %9, align 8
  %235 = load i32*, i32** %15, align 8
  %236 = call i32 @EC_GROUP_set_generator(i32* %233, i32* %234, i32* %235, i32* null)
  %237 = call i32 @TEST_false(i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %232, %226, %219, %212, %207, %200, %195, %189, %181, %174, %169, %164, %157, %149, %144, %139, %132, %125, %116, %111, %102, %95, %88, %78, %69, %48
  br label %241

240:                                              ; preds = %232
  store i32 1, i32* %4, align 4
  br label %241

241:                                              ; preds = %240, %239
  %242 = load i32*, i32** %9, align 8
  %243 = call i32 @EC_POINT_free(i32* %242)
  %244 = load i32*, i32** %7, align 8
  %245 = call i32 @EC_GROUP_free(i32* %244)
  %246 = load i32*, i32** %8, align 8
  %247 = call i32 @EC_GROUP_free(i32* %246)
  %248 = load i32*, i32** %6, align 8
  %249 = call i32 @BN_CTX_end(i32* %248)
  %250 = load i32*, i32** %6, align 8
  %251 = call i32 @BN_CTX_free(i32* %250)
  %252 = load i32, i32* %4, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %241, %41
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i32 @TEST_info(i8*, i32) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32* @EC_GROUP_new(i32) #1

declare dso_local i32 @EC_GROUP_method_of(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EC_GROUP_get_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32) #1

declare dso_local i32 @EC_GROUP_get0_order(i32*) #1

declare dso_local i32 @EC_GROUP_get_cofactor(i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_set_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_set_generator(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
