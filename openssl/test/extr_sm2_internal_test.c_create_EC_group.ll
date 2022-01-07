; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sm2_internal_test.c_create_EC_group.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sm2_internal_test.c_create_EC_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @create_EC_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_EC_group(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32 0, i32* %24, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @BN_hex2bn(i32** %15, i8* %25)
  %27 = call i32 @TEST_true(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %7
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @BN_hex2bn(i32** %16, i8* %30)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @BN_hex2bn(i32** %17, i8* %35)
  %37 = call i32 @TEST_true(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %29, %7
  br label %95

40:                                               ; preds = %34
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = call i32* @EC_GROUP_new_curve_GFp(i32* %41, i32* %42, i32* %43, i32* null)
  store i32* %44, i32** %23, align 8
  %45 = load i32*, i32** %23, align 8
  %46 = call i32 @TEST_ptr(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %95

49:                                               ; preds = %40
  %50 = load i32*, i32** %23, align 8
  %51 = call i32* @EC_POINT_new(i32* %50)
  store i32* %51, i32** %22, align 8
  %52 = load i32*, i32** %22, align 8
  %53 = call i32 @TEST_ptr(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %95

56:                                               ; preds = %49
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @BN_hex2bn(i32** %18, i8* %57)
  %59 = call i32 @TEST_true(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @BN_hex2bn(i32** %19, i8* %62)
  %64 = call i32 @TEST_true(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32*, i32** %23, align 8
  %68 = load i32*, i32** %22, align 8
  %69 = load i32*, i32** %18, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = call i32 @EC_POINT_set_affine_coordinates(i32* %67, i32* %68, i32* %69, i32* %70, i32* null)
  %72 = call i32 @TEST_true(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66, %61, %56
  br label %95

75:                                               ; preds = %66
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @BN_hex2bn(i32** %20, i8* %76)
  %78 = call i32 @TEST_true(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 @BN_hex2bn(i32** %21, i8* %81)
  %83 = call i32 @TEST_true(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32*, i32** %23, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = load i32*, i32** %20, align 8
  %89 = load i32*, i32** %21, align 8
  %90 = call i32 @EC_GROUP_set_generator(i32* %86, i32* %87, i32* %88, i32* %89)
  %91 = call i32 @TEST_true(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85, %80, %75
  br label %95

94:                                               ; preds = %85
  store i32 1, i32* %24, align 4
  br label %95

95:                                               ; preds = %94, %93, %74, %55, %48, %39
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @BN_free(i32* %96)
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @BN_free(i32* %98)
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @BN_free(i32* %100)
  %102 = load i32*, i32** %18, align 8
  %103 = call i32 @BN_free(i32* %102)
  %104 = load i32*, i32** %19, align 8
  %105 = call i32 @BN_free(i32* %104)
  %106 = load i32*, i32** %22, align 8
  %107 = call i32 @EC_POINT_free(i32* %106)
  %108 = load i32*, i32** %20, align 8
  %109 = call i32 @BN_free(i32* %108)
  %110 = load i32*, i32** %21, align 8
  %111 = call i32 @BN_free(i32* %110)
  %112 = load i32, i32* %24, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %95
  %115 = load i32*, i32** %23, align 8
  %116 = call i32 @EC_GROUP_free(i32* %115)
  store i32* null, i32** %23, align 8
  br label %117

117:                                              ; preds = %114, %95
  %118 = load i32*, i32** %23, align 8
  ret i32* %118
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32* @EC_GROUP_new_curve_GFp(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_set_generator(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
