; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_decrypt_session_ticket_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_decrypt_session_ticket_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_TICKET_RETURN_IGNORE_RENEW = common dso_local global i32 0, align 4
@SSL_TICKET_RETURN_USE = common dso_local global i32 0, align 4
@SSL_TICKET_RETURN_USE_RENEW = common dso_local global i32 0, align 4
@SSL_TICKET_RETURN_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, i32, i8*)* @decrypt_session_ticket_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt_session_ticket_cb(i32* %0, i32* %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %14 = load i32, i32* %12, align 4
  switch i32 %14, label %21 [
    i32 131, label %15
    i32 130, label %15
    i32 129, label %17
    i32 128, label %19
  ]

15:                                               ; preds = %6, %6
  %16 = load i32, i32* @SSL_TICKET_RETURN_IGNORE_RENEW, align 4
  store i32 %16, i32* %7, align 4
  br label %24

17:                                               ; preds = %6
  %18 = load i32, i32* @SSL_TICKET_RETURN_USE, align 4
  store i32 %18, i32* %7, align 4
  br label %24

19:                                               ; preds = %6
  %20 = load i32, i32* @SSL_TICKET_RETURN_USE_RENEW, align 4
  store i32 %20, i32* %7, align 4
  br label %24

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* @SSL_TICKET_RETURN_ABORT, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %19, %17, %15
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
