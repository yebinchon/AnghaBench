; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_post_handshake_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_post_handshake_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @post_handshake_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_handshake_verify(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %8 = call i32 @SSL_set_verify(i32* %6, i32 %7, i32* null)
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @SSL_verify_client_post_handshake(i32* %9)
  %11 = call i32 @TEST_true(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @SSL_do_handshake(i32* %15)
  %17 = call i32 @TEST_int_eq(i32 %16, i32 1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @SSL_read(i32* %20, i32* null, i32 0)
  %22 = call i32 @TEST_int_le(i32 %21, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @SSL_read(i32* %25, i32* null, i32 0)
  %27 = call i32 @TEST_int_le(i32 %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @SSL_ERROR_NONE, align 4
  %33 = call i32 @create_ssl_connection(i32* %30, i32* %31, i32 %32)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29, %24, %19, %14
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @SSL_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @SSL_verify_client_post_handshake(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_do_handshake(i32*) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i32 @SSL_read(i32*, i32*, i32) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
