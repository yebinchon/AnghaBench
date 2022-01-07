; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_key_unsupported.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_key_unsupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_LIB_EVP = common dso_local global i64 0, align 8
@EVP_R_UNSUPPORTED_ALGORITHM = common dso_local global i64 0, align 8
@ERR_LIB_EC = common dso_local global i64 0, align 8
@EC_R_UNKNOWN_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @key_unsupported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_unsupported() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 (...) @ERR_peek_error()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @ERR_GET_LIB(i64 %4)
  %6 = load i64, i64* @ERR_LIB_EVP, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i64, i64* %2, align 8
  %10 = call i64 @ERR_GET_REASON(i64 %9)
  %11 = load i64, i64* @EVP_R_UNSUPPORTED_ALGORITHM, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @ERR_clear_error()
  store i32 1, i32* %1, align 4
  br label %28

15:                                               ; preds = %8, %0
  %16 = load i64, i64* %2, align 8
  %17 = call i64 @ERR_GET_LIB(i64 %16)
  %18 = load i64, i64* @ERR_LIB_EC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @ERR_GET_REASON(i64 %21)
  %23 = load i64, i64* @EC_R_UNKNOWN_GROUP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @ERR_clear_error()
  store i32 1, i32* %1, align 4
  br label %28

27:                                               ; preds = %20, %15
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %25, %13
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i64 @ERR_GET_REASON(i64) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
