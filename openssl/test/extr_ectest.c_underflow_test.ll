; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_underflow_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_underflow_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [132 x i8] c"1534f0077fffffe87e9adcfe000000000000000000003e05a21d2400002e031b1f4b80000c6fafa4f3c1288798d624a247b5e2ffffffffffffffefe099241900004\00", align 1
@.str.1 = private unnamed_addr constant [132 x i8] c"1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe\00", align 1
@NID_secp521r1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"02\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @underflow_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @underflow_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %16 = call i32* (...) @BN_CTX_new()
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @TEST_ptr(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %158

21:                                               ; preds = %0
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @BN_CTX_start(i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32* @BN_CTX_get(i32* %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i32* @BN_CTX_get(i32* %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i32* @BN_CTX_get(i32* %28)
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i32* @BN_CTX_get(i32* %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32* @BN_CTX_get(i32* %32)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = call i32* @BN_CTX_get(i32* %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @TEST_ptr(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %21
  br label %144

40:                                               ; preds = %21
  %41 = load i32, i32* @NID_secp521r1, align 4
  %42 = call i32* @EC_GROUP_new_by_curve_name(i32 %41)
  store i32* %42, i32** %3, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32* @EC_POINT_new(i32* %43)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call i32* @EC_POINT_new(i32* %45)
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @EC_POINT_new(i32* %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @TEST_ptr(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %40
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @TEST_ptr(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @TEST_ptr(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @TEST_ptr(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60, %56, %52, %40
  br label %144

65:                                               ; preds = %60
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @BN_hex2bn(i32** %7, i8* %66)
  %68 = call i32 @TEST_int_gt(i32 %67, i32 0)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %129

70:                                               ; preds = %65
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @BN_hex2bn(i32** %8, i8* %71)
  %73 = call i32 @TEST_int_gt(i32 %72, i32 0)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %129

75:                                               ; preds = %70
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @BN_hex2bn(i32** %9, i8* %76)
  %78 = call i32 @TEST_int_gt(i32 %77, i32 0)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %129

80:                                               ; preds = %75
  %81 = call i32 @BN_hex2bn(i32** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 @TEST_int_gt(i32 %81, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %129

84:                                               ; preds = %80
  %85 = load i32*, i32** %3, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @EC_POINT_set_Jprojective_coordinates_GFp(i32* %85, i32* %86, i32* %87, i32* %88, i32* %89, i32* %90)
  %92 = call i32 @TEST_true(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %84
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @EC_POINT_mul(i32* %95, i32* %96, i32* null, i32* %97, i32* %98, i32* %99)
  %101 = call i32 @TEST_true(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %94
  %104 = load i32*, i32** %3, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %2, align 8
  %109 = call i32 @EC_POINT_get_affine_coordinates(i32* %104, i32* %105, i32* %106, i32* %107, i32* %108)
  %110 = call i32 @TEST_true(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %103
  %113 = load i32*, i32** %3, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @EC_POINT_dbl(i32* %113, i32* %114, i32* %115, i32* %116)
  %118 = call i32 @TEST_true(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = load i32*, i32** %3, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 @EC_POINT_get_affine_coordinates(i32* %121, i32* %122, i32* %123, i32* %124, i32* %125)
  %127 = call i32 @TEST_true(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %120, %112, %103, %94, %84, %80, %75, %70, %65
  br label %144

130:                                              ; preds = %120
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @BN_cmp(i32* %131, i32* %132)
  %134 = call i32 @TEST_int_eq(i32 %133, i32 0)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load i32*, i32** %8, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @BN_cmp(i32* %137, i32* %138)
  %140 = call i32 @TEST_int_eq(i32 %139, i32 0)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %136, %130
  br label %144

143:                                              ; preds = %136
  store i32 1, i32* %13, align 4
  br label %144

144:                                              ; preds = %143, %142, %129, %64, %39
  %145 = load i32*, i32** %2, align 8
  %146 = call i32 @BN_CTX_end(i32* %145)
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @EC_POINT_free(i32* %147)
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @EC_POINT_free(i32* %149)
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @EC_POINT_free(i32* %151)
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @EC_GROUP_free(i32* %153)
  %155 = load i32*, i32** %2, align 8
  %156 = call i32 @BN_CTX_free(i32* %155)
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %1, align 4
  br label %158

158:                                              ; preds = %144, %20
  %159 = load i32, i32* %1, align 4
  ret i32 %159
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EC_POINT_set_Jprojective_coordinates_GFp(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_dbl(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
