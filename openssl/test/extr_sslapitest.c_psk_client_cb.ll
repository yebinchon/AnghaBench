; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_psk_client_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_psk_client_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psk_client_cb_cnt = common dso_local global i32 0, align 4
@pskid = common dso_local global i32 0, align 4
@clientpsk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32, i8*, i32)* @psk_client_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psk_client_cb(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @psk_client_cb_cnt, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @psk_client_cb_cnt, align 4
  %17 = load i32, i32* @pskid, align 4
  %18 = call i32 @strlen(i32 %17)
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* %11, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %47

23:                                               ; preds = %6
  %24 = load i32, i32* @psk_client_cb_cnt, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %47

27:                                               ; preds = %23
  %28 = load i32*, i32** @clientpsk, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %47

31:                                               ; preds = %27
  %32 = load i32*, i32** @clientpsk, align 8
  %33 = call i32 @SSL_SESSION_get_master_key(i32* %32, i8* null, i32 0)
  %34 = load i32, i32* %13, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %47

37:                                               ; preds = %31
  %38 = load i32*, i32** @clientpsk, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @SSL_SESSION_get_master_key(i32* %38, i8* %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @pskid, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @strncpy(i8* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %37, %36, %30, %26, %22
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @SSL_SESSION_get_master_key(i32*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
