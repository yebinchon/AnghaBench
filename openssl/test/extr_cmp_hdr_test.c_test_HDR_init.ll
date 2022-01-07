; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_test_HDR_init.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_test_HDR_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@CMP_HDR_TEST_FIXTURE = common dso_local global i32 0, align 4
@set_up = common dso_local global i32 0, align 4
@CMP_TEST_REFVALUE_LENGTH = common dso_local global i32 0, align 4
@fixture = common dso_local global %struct.TYPE_4__* null, align 8
@execute_HDR_init_test = common dso_local global i32 0, align 4
@result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_HDR_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_HDR_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @CMP_HDR_TEST_FIXTURE, align 4
  %4 = load i32, i32* @set_up, align 4
  %5 = call i32 @SETUP_TEST_FIXTURE(i32 %3, i32 %4)
  %6 = load i32, i32* @CMP_TEST_REFVALUE_LENGTH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fixture, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = trunc i64 %7 to i32
  %13 = call i32 @RAND_bytes(i8* %9, i32 %12)
  %14 = call i32 @TEST_int_eq(i32 1, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fixture, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = trunc i64 %7 to i32
  %21 = call i32 @OSSL_CMP_CTX_set1_referenceValue(i32 %19, i8* %9, i32 %20)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16, %0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fixture, align 8
  %26 = call i32 @tear_down(%struct.TYPE_4__* %25)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @fixture, align 8
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i32, i32* @execute_HDR_init_test, align 4
  %29 = call i32 @EXECUTE_TEST(i32 %28, i32 (%struct.TYPE_4__*)* @tear_down)
  %30 = load i32, i32* @result, align 4
  %31 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %31)
  ret i32 %30
}

declare dso_local i32 @SETUP_TEST_FIXTURE(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @OSSL_CMP_CTX_set1_referenceValue(i32, i8*, i32) #1

declare dso_local i32 @tear_down(%struct.TYPE_4__*) #1

declare dso_local i32 @EXECUTE_TEST(i32, i32 (%struct.TYPE_4__*)*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
