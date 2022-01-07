; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_crngt.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_crngt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_drgb_types = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@drgb_types = common dso_local global %struct.s_drgb_types* null, align 8
@crngt_num_cases = common dso_local global i32 0, align 4
@CRNGT_BUFSIZ = common dso_local global i32 0, align 4
@crngt_case = common dso_local global i64 0, align 8
@crngt_idx = common dso_local global i64 0, align 8
@crngt_entropy_cb = common dso_local global i32 0, align 4
@crngt_get_entropy = common dso_local global i32* null, align 8
@rand_crngt_get_entropy = common dso_local global i32 0, align 4
@rand_crngt_cleanup_entropy = common dso_local global i32 0, align 4
@rand_drbg_get_nonce = common dso_local global i32 0, align 4
@rand_drbg_cleanup_nonce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DRBG %zd case %zd block %zd\00", align 1
@rand_crngt_get_entropy_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_crngt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_crngt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.s_drgb_types*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca [100 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load %struct.s_drgb_types*, %struct.s_drgb_types** @drgb_types, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @crngt_num_cases, align 4
  %14 = sdiv i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.s_drgb_types, %struct.s_drgb_types* %11, i64 %15
  store %struct.s_drgb_types* %16, %struct.s_drgb_types** %4, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = call %struct.TYPE_14__* (...) @OPENSSL_CTX_new()
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %19 = call i32 @TEST_ptr(%struct.TYPE_14__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %128

22:                                               ; preds = %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = load %struct.s_drgb_types*, %struct.s_drgb_types** %4, align 8
  %25 = getelementptr inbounds %struct.s_drgb_types, %struct.s_drgb_types* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s_drgb_types*, %struct.s_drgb_types** %4, align 8
  %28 = getelementptr inbounds %struct.s_drgb_types, %struct.s_drgb_types* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_14__* @RAND_DRBG_new_ex(%struct.TYPE_14__* %23, i32 %26, i32 %29, i32* null)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %5, align 8
  %31 = call i32 @TEST_ptr(%struct.TYPE_14__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %110

34:                                               ; preds = %22
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CRNGT_BUFSIZ, align 4
  %39 = add nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @CRNGT_BUFSIZ, align 4
  %42 = sdiv i32 %40, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %7, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @crngt_num_cases, align 4
  %46 = srem i32 %44, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* @crngt_case, align 8
  store i64 0, i64* @crngt_idx, align 8
  store i32* @crngt_entropy_cb, i32** @crngt_get_entropy, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = call i32 @RAND_DRBG_set_callbacks(%struct.TYPE_14__* %48, i32* @rand_crngt_get_entropy, i32* @rand_crngt_cleanup_entropy, i32* @rand_drbg_get_nonce, i32* @rand_drbg_cleanup_nonce)
  %50 = call i32 @TEST_true(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %34
  br label %110

53:                                               ; preds = %34
  %54 = load i64, i64* @crngt_case, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* @crngt_case, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ugt i64 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ true, %53 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = call i32 @RAND_DRBG_instantiate(%struct.TYPE_14__* %63, i32* null, i32 0)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @TEST_int_eq(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %110

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %109

73:                                               ; preds = %69
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %76 = call i32 @RAND_DRBG_generate(%struct.TYPE_14__* %74, i8* %75, i32 100, i32 0, i32* null, i32 0)
  %77 = call i32 @TEST_true(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %110

80:                                               ; preds = %73
  %81 = load i64, i64* @crngt_case, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* @crngt_case, align 8
  %85 = load i64, i64* %7, align 8
  %86 = mul i64 2, %85
  %87 = icmp ugt i64 %84, %86
  br label %88

88:                                               ; preds = %83, %80
  %89 = phi i1 [ true, %80 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %9, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = call i32 @RAND_DRBG_reseed(%struct.TYPE_14__* %91, i32* null, i32 0, i32 0)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @TEST_int_eq(i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %110

97:                                               ; preds = %88
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %109

101:                                              ; preds = %97
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %104 = call i32 @RAND_DRBG_generate(%struct.TYPE_14__* %102, i8* %103, i32 100, i32 0, i32* null, i32 0)
  %105 = call i32 @TEST_true(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  br label %110

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %100, %72
  store i32 1, i32* %8, align 4
  br label %110

110:                                              ; preds = %109, %107, %96, %79, %68, %52, %33
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @crngt_num_cases, align 4
  %116 = sdiv i32 %114, %115
  %117 = load i64, i64* @crngt_case, align 8
  %118 = load i64, i64* @crngt_idx, align 8
  %119 = call i32 @TEST_note(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %116, i64 %117, i64 %118)
  br label %120

120:                                              ; preds = %113, %110
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = call i32 @uninstantiate(%struct.TYPE_14__* %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = call i32 @RAND_DRBG_free(%struct.TYPE_14__* %123)
  store i32* @rand_crngt_get_entropy_cb, i32** @crngt_get_entropy, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %126 = call i32 @OPENSSL_CTX_free(%struct.TYPE_14__* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %120, %21
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_14__* @OPENSSL_CTX_new(...) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @RAND_DRBG_new_ex(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @RAND_DRBG_set_callbacks(%struct.TYPE_14__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @RAND_DRBG_instantiate(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @RAND_DRBG_generate(%struct.TYPE_14__*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @RAND_DRBG_reseed(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @TEST_note(i8*, i32, i64, i64) #1

declare dso_local i32 @uninstantiate(%struct.TYPE_14__*) #1

declare dso_local i32 @RAND_DRBG_free(%struct.TYPE_14__*) #1

declare dso_local i32 @OPENSSL_CTX_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
