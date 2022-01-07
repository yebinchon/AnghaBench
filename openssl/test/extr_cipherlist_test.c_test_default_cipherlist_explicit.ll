; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cipherlist_test.c_test_default_cipherlist_explicit.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cipherlist_test.c_test_default_cipherlist_explicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@fixture = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_default_cipherlist_explicit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_default_cipherlist_explicit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @SETUP_CIPHERLIST_TEST_FIXTURE()
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fixture, align 8
  %4 = icmp eq %struct.TYPE_3__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fixture, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @SSL_CTX_set_cipher_list(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @TEST_true(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fixture, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SSL_CTX_set_cipher_list(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %6
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fixture, align 8
  %22 = call i32 @tear_down(%struct.TYPE_3__* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = call i32 (...) @EXECUTE_CIPHERLIST_TEST()
  %25 = load i32, i32* @result, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %23, %5
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @SETUP_CIPHERLIST_TEST_FIXTURE(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32, i8*) #1

declare dso_local i32 @tear_down(%struct.TYPE_3__*) #1

declare dso_local i32 @EXECUTE_CIPHERLIST_TEST(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
