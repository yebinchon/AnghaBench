; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_psk_server_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_psk_server_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psk_server_cb_cnt = common dso_local global i32 0, align 4
@find_session_cb_cnt = common dso_local global i32 0, align 4
@serverpsk = common dso_local global i32* null, align 8
@srvid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @psk_server_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psk_server_cb(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @psk_server_cb_cnt, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @psk_server_cb_cnt, align 4
  %13 = load i32, i32* @find_session_cb_cnt, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

16:                                               ; preds = %4
  %17 = load i32*, i32** @serverpsk, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %38

20:                                               ; preds = %16
  %21 = load i32, i32* @srvid, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %38

26:                                               ; preds = %20
  %27 = load i32*, i32** @serverpsk, align 8
  %28 = call i32 @SSL_SESSION_get_master_key(i32* %27, i8* null, i32 0)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %38

32:                                               ; preds = %26
  %33 = load i32*, i32** @serverpsk, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @SSL_SESSION_get_master_key(i32* %33, i8* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %31, %25, %19, %15
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @SSL_SESSION_get_master_key(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
