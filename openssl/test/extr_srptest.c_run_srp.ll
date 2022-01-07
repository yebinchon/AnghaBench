; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_srptest.c_run_srp.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_srptest.c_run_srp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@RANDOM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Salt\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Verifier\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Client's key\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Server's key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @run_srp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_srp(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %23 = load i32, i32* @RANDOM_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %19, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %20, align 8
  %27 = call %struct.TYPE_4__* @SRP_get_default_gN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %21, align 8
  %28 = call i32 @TEST_ptr(%struct.TYPE_4__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %179

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @SRP_create_verifier_BN(i8* %32, i8* %33, i32** %9, i32** %10, i32* %36, i32* %39)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %157

44:                                               ; preds = %31
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @test_output_bignum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @test_output_bignum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %55)
  %57 = trunc i64 %24 to i32
  %58 = call i32 @RAND_bytes(i8* %26, i32 %57)
  %59 = trunc i64 %24 to i32
  %60 = call i32* @BN_bin2bn(i8* %26, i32 %59, i32* null)
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @TEST_BN_ne_zero(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %44
  br label %157

65:                                               ; preds = %44
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32* @SRP_Calc_B(i32* %68, i32* %71, i32* %74, i32* %75)
  store i32* %76, i32** %16, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* %77)
  %79 = load i32*, i32** %16, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @SRP_Verify_B_mod_N(i32* %79, i32* %82)
  %84 = call i32 @TEST_true(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %65
  br label %157

87:                                               ; preds = %65
  %88 = trunc i64 %24 to i32
  %89 = call i32 @RAND_bytes(i8* %26, i32 %88)
  %90 = trunc i64 %24 to i32
  %91 = call i32* @BN_bin2bn(i8* %26, i32 %90, i32* null)
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @TEST_BN_ne_zero(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  br label %157

96:                                               ; preds = %87
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %97)
  %99 = load i32*, i32** %11, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32* @SRP_Calc_A(i32* %99, i32* %102, i32* %105)
  store i32* %106, i32** %15, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32* %107)
  %109 = load i32*, i32** %15, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @SRP_Verify_A_mod_N(i32* %109, i32* %112)
  %114 = call i32 @TEST_true(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %96
  br label %157

117:                                              ; preds = %96
  %118 = load i32*, i32** %15, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32* @SRP_Calc_u(i32* %118, i32* %119, i32* %122)
  store i32* %123, i32** %13, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i32* @SRP_Calc_x(i32* %124, i8* %125, i8* %126)
  store i32* %127, i32** %14, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = call i32* @SRP_Calc_client_key(i32* %130, i32* %131, i32* %134, i32* %135, i32* %136, i32* %137)
  store i32* %138, i32** %17, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = call i32 @test_output_bignum(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %139)
  %141 = load i32*, i32** %15, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32* @SRP_Calc_server_key(i32* %141, i32* %142, i32* %143, i32* %144, i32* %147)
  store i32* %148, i32** %18, align 8
  %149 = load i32*, i32** %18, align 8
  %150 = call i32 @test_output_bignum(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32* %149)
  %151 = load i32*, i32** %17, align 8
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @TEST_BN_eq(i32* %151, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %117
  br label %157

156:                                              ; preds = %117
  store i32 1, i32* %8, align 4
  br label %157

157:                                              ; preds = %156, %155, %116, %95, %86, %64, %43
  %158 = load i32*, i32** %17, align 8
  %159 = call i32 @BN_clear_free(i32* %158)
  %160 = load i32*, i32** %18, align 8
  %161 = call i32 @BN_clear_free(i32* %160)
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @BN_clear_free(i32* %162)
  %164 = load i32*, i32** %13, align 8
  %165 = call i32 @BN_free(i32* %164)
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @BN_free(i32* %166)
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @BN_clear_free(i32* %168)
  %170 = load i32*, i32** %16, align 8
  %171 = call i32 @BN_free(i32* %170)
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @BN_clear_free(i32* %172)
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @BN_free(i32* %174)
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @BN_clear_free(i32* %176)
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %179

179:                                              ; preds = %157, %30
  %180 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_4__*) #2

declare dso_local %struct.TYPE_4__* @SRP_get_default_gN(i8*) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @SRP_create_verifier_BN(i8*, i8*, i32**, i32**, i32*, i32*) #2

declare dso_local i32 @test_output_bignum(i8*, i32*) #2

declare dso_local i32 @RAND_bytes(i8*, i32) #2

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @TEST_BN_ne_zero(i32*) #2

declare dso_local i32* @SRP_Calc_B(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @SRP_Verify_B_mod_N(i32*, i32*) #2

declare dso_local i32* @SRP_Calc_A(i32*, i32*, i32*) #2

declare dso_local i32 @SRP_Verify_A_mod_N(i32*, i32*) #2

declare dso_local i32* @SRP_Calc_u(i32*, i32*, i32*) #2

declare dso_local i32* @SRP_Calc_x(i32*, i8*, i8*) #2

declare dso_local i32* @SRP_Calc_client_key(i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32* @SRP_Calc_server_key(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

declare dso_local i32 @BN_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
