; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_dhtest.c_rfc7919_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_dhtest.c_rfc7919_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_ffdhe2048 = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_SAFE_PRIME = common dso_local global i32 0, align 4
@DH_UNABLE_TO_CHECK_GENERATOR = common dso_local global i32 0, align 4
@DH_NOT_SUITABLE_GENERATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rfc7919_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfc7919_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i8* null, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @NID_ffdhe2048, align 4
  %14 = call i8* @DH_new_by_nid(i32 %13)
  store i8* %14, i8** %1, align 8
  %15 = call i32 @TEST_ptr(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %121

18:                                               ; preds = %0
  %19 = load i8*, i8** %1, align 8
  %20 = call i32 @DH_check(i8* %19, i32* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %121

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @DH_CHECK_P_NOT_PRIME, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @TEST_false(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DH_CHECK_P_NOT_SAFE_PRIME, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @TEST_false(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @DH_UNABLE_TO_CHECK_GENERATOR, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @TEST_false(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @TEST_false(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @TEST_false(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %41, %35, %29, %23
  br label %121

52:                                               ; preds = %47
  %53 = load i8*, i8** %1, align 8
  %54 = call i32 @DH_generate_key(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %121

57:                                               ; preds = %52
  %58 = load i8*, i8** %1, align 8
  %59 = call i32 @DH_get0_key(i8* %58, i32** %3, i32* null)
  %60 = load i32, i32* @NID_ffdhe2048, align 4
  %61 = call i8* @DH_new_by_nid(i32 %60)
  store i8* %61, i8** %2, align 8
  %62 = call i32 @TEST_ptr(i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %121

65:                                               ; preds = %57
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 @DH_generate_key(i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %121

70:                                               ; preds = %65
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 @DH_get0_key(i8* %71, i32** %4, i32* null)
  %73 = load i8*, i8** %1, align 8
  %74 = call i32 @DH_size(i8* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @OPENSSL_malloc(i32 %75)
  store i8* %76, i8** %5, align 8
  %77 = call i32 @TEST_ptr(i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = load i8*, i8** %5, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load i8*, i8** %1, align 8
  %83 = call i32 @DH_compute_key(i8* %80, i32* %81, i8* %82)
  store i32 %83, i32* %10, align 4
  %84 = icmp ne i32 %83, -1
  %85 = zext i1 %84 to i32
  %86 = call i32 @TEST_true(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79, %70
  br label %121

89:                                               ; preds = %79
  %90 = load i8*, i8** %2, align 8
  %91 = call i32 @DH_size(i8* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i8* @OPENSSL_malloc(i32 %92)
  store i8* %93, i8** %6, align 8
  %94 = call i32 @TEST_ptr(i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load i8*, i8** %6, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = load i8*, i8** %2, align 8
  %100 = call i32 @DH_compute_key(i8* %97, i32* %98, i8* %99)
  store i32 %100, i32* %11, align 4
  %101 = icmp ne i32 %100, -1
  %102 = zext i1 %101 to i32
  %103 = call i32 @TEST_true(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96, %89
  br label %121

106:                                              ; preds = %96
  %107 = load i32, i32* %10, align 4
  %108 = icmp sge i32 %107, 20
  %109 = zext i1 %108 to i32
  %110 = call i32 @TEST_true(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @TEST_mem_eq(i8* %113, i32 %114, i8* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112, %106
  br label %121

120:                                              ; preds = %112
  store i32 1, i32* %12, align 4
  br label %121

121:                                              ; preds = %120, %119, %105, %88, %69, %64, %56, %51, %22, %17
  %122 = load i8*, i8** %5, align 8
  %123 = call i32 @OPENSSL_free(i8* %122)
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @OPENSSL_free(i8* %124)
  %126 = load i8*, i8** %1, align 8
  %127 = call i32 @DH_free(i8* %126)
  %128 = load i8*, i8** %2, align 8
  %129 = call i32 @DH_free(i8* %128)
  %130 = load i32, i32* %12, align 4
  ret i32 %130
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @DH_new_by_nid(i32) #1

declare dso_local i32 @DH_check(i8*, i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @DH_generate_key(i8*) #1

declare dso_local i32 @DH_get0_key(i8*, i32**, i32*) #1

declare dso_local i32 @DH_size(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @DH_compute_key(i8*, i32*, i8*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @DH_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
