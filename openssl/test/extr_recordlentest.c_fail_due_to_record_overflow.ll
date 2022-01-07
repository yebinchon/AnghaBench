; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_recordlentest.c_fail_due_to_record_overflow.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_recordlentest.c_fail_due_to_record_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_R_ENCRYPTED_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@SSL_R_DATA_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@ERR_LIB_SSL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fail_due_to_record_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fail_due_to_record_overflow(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i64 (...) @ERR_peek_error()
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @SSL_R_ENCRYPTED_LENGTH_TOO_LONG, align 4
  store i32 %10, i32* %5, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SSL_R_DATA_LENGTH_TOO_LONG, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @ERR_GET_LIB(i64 %14)
  %16 = load i64, i64* @ERR_LIB_SSL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @ERR_GET_REASON(i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %18, %13
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i32 @ERR_GET_REASON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
