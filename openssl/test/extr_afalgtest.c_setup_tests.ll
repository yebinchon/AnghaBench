; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_afalgtest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_afalgtest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"afalg\00", align 1
@e = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't load AFALG engine\00", align 1
@test_afalg_aes_cbc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = call i32* @ENGINE_by_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %1, i32** @e, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @TEST_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @test_afalg_aes_cbc, align 4
  %7 = call i32 @ADD_ALL_TESTS(i32 %6, i32 3)
  br label %8

8:                                                ; preds = %5, %3
  ret i32 1
}

declare dso_local i32* @ENGINE_by_id(i8*) #1

declare dso_local i32 @TEST_info(i8*) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
