; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_dec_tick_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_dec_tick_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dec_tick_called = common dso_local global i32 0, align 4
@SSL_TICKET_EMPTY = common dso_local global i32 0, align 4
@SSL_TICKET_RETURN_IGNORE_RENEW = common dso_local global i32 0, align 4
@SSL_TICKET_RETURN_ABORT = common dso_local global i32 0, align 4
@appdata = common dso_local global i32 0, align 4
@tick_key_cb_called = common dso_local global i64 0, align 8
@SSL_TICKET_RETURN_USE = common dso_local global i32 0, align 4
@SSL_TICKET_RETURN_USE_RENEW = common dso_local global i32 0, align 4
@tick_dec_ret = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, i32, i8*)* @dec_tick_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_tick_cb(i32* %0, i32* %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 1, i32* @dec_tick_called, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @SSL_TICKET_EMPTY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @SSL_TICKET_RETURN_IGNORE_RENEW, align 4
  store i32 %20, i32* %7, align 4
  br label %69

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 128
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ true, %21 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST_true(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @SSL_TICKET_RETURN_ABORT, align 4
  store i32 %33, i32* %7, align 4
  br label %69

34:                                               ; preds = %27
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @SSL_SESSION_get0_ticket_appdata(i32* %35, i8** %14, i64* %15)
  %37 = call i32 @TEST_true(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i64, i64* %15, align 8
  %41 = load i32, i32* @appdata, align 4
  %42 = call i32 @strlen(i32 %41)
  %43 = call i32 @TEST_size_t_eq(i64 %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* @appdata, align 4
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @memcmp(i8* %46, i32 %47, i64 %48)
  %50 = call i32 @TEST_int_eq(i32 %49, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45, %39, %34
  %53 = load i32, i32* @SSL_TICKET_RETURN_ABORT, align 4
  store i32 %53, i32* %7, align 4
  br label %69

54:                                               ; preds = %45
  %55 = load i64, i64* @tick_key_cb_called, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  switch i32 %58, label %65 [
    i32 130, label %59
    i32 129, label %61
    i32 128, label %63
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* @SSL_TICKET_RETURN_IGNORE_RENEW, align 4
  store i32 %60, i32* %7, align 4
  br label %69

61:                                               ; preds = %57
  %62 = load i32, i32* @SSL_TICKET_RETURN_USE, align 4
  store i32 %62, i32* %7, align 4
  br label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @SSL_TICKET_RETURN_USE_RENEW, align 4
  store i32 %64, i32* %7, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load i32, i32* @SSL_TICKET_RETURN_ABORT, align 4
  store i32 %66, i32* %7, align 4
  br label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @tick_dec_ret, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %65, %63, %61, %59, %52, %32, %19
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @SSL_SESSION_get0_ticket_appdata(i32*, i8**, i64*) #1

declare dso_local i32 @TEST_size_t_eq(i64, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
