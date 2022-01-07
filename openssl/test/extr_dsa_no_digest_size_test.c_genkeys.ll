; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_dsa_no_digest_size_test.c_genkeys.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_dsa_no_digest_size_test.c_genkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsakey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @genkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genkeys() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @load_dsa_params()
  store i32 %2, i32* @dsakey, align 4
  %3 = call i32 @TEST_ptr(i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @dsakey, align 4
  %8 = call i32 @DSA_generate_key(i32 %7)
  %9 = call i32 @TEST_int_eq(i32 %8, i32 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %13

12:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %11, %5
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @load_dsa_params(...) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @DSA_generate_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
