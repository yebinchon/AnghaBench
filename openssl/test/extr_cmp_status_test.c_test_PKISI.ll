; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_status_test.c_test_PKISI.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_status_test.c_test_PKISI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i32 }

@CMP_STATUS_TEST_FIXTURE = common dso_local global i32 0, align 4
@set_up = common dso_local global i32 0, align 4
@OSSL_CMP_PKISTATUS_revocationNotification = common dso_local global i32 0, align 4
@fixture = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [75 x i8] c"PKIStatus: revocation notification - a revocation of the cert has occurred\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"this is an additional text describing the failure\00", align 1
@OSSL_CMP_CTX_FAILINFO_unsupportedVersion = common dso_local global i32 0, align 4
@OSSL_CMP_CTX_FAILINFO_badDataFormat = common dso_local global i32 0, align 4
@execute_PKISI_test = common dso_local global i32 0, align 4
@tear_down = common dso_local global i32 0, align 4
@result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_PKISI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_PKISI() #0 {
  %1 = load i32, i32* @CMP_STATUS_TEST_FIXTURE, align 4
  %2 = load i32, i32* @set_up, align 4
  %3 = call i32 @SETUP_TEST_FIXTURE(i32 %1, i32 %2)
  %4 = load i32, i32* @OSSL_CMP_PKISTATUS_revocationNotification, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  store i32 %4, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* @OSSL_CMP_CTX_FAILINFO_unsupportedVersion, align 4
  %12 = load i32, i32* @OSSL_CMP_CTX_FAILINFO_badDataFormat, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fixture, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @execute_PKISI_test, align 4
  %17 = load i32, i32* @tear_down, align 4
  %18 = call i32 @EXECUTE_TEST(i32 %16, i32 %17)
  %19 = load i32, i32* @result, align 4
  ret i32 %19
}

declare dso_local i32 @SETUP_TEST_FIXTURE(i32, i32) #1

declare dso_local i32 @EXECUTE_TEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
