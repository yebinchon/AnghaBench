; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_provider_test.c_test_builtin_provider.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_provider_test.c_test_builtin_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"p_test_builtin\00", align 1
@PROVIDER_INIT_FUNCTION_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_builtin_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_builtin_provider() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i32, i32* @PROVIDER_INIT_FUNCTION_NAME, align 4
  %4 = call i32 @OSSL_PROVIDER_add_builtin(i32* null, i8* %2, i32 %3)
  %5 = call i64 @TEST_true(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i64 @test_provider(i8* %8)
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @OSSL_PROVIDER_add_builtin(i32*, i8*, i32) #1

declare dso_local i64 @test_provider(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
