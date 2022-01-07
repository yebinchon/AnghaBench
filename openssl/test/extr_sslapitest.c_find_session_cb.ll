; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_find_session_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_find_session_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_session_cb_cnt = common dso_local global i32 0, align 4
@serverpsk = common dso_local global i32* null, align 8
@srvid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32**)* @find_session_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_session_cb(i32* %0, i8* %1, i64 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32** %3, i32*** %9, align 8
  %10 = load i32, i32* @find_session_cb_cnt, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @find_session_cb_cnt, align 4
  %12 = load i32, i32* @find_session_cb_cnt, align 4
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

15:                                               ; preds = %4
  %16 = load i32*, i32** @serverpsk, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %37

19:                                               ; preds = %15
  %20 = load i32, i32* @srvid, align 4
  %21 = call i64 @strlen(i32 %20)
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @srvid, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @strncmp(i32 %25, i8* %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %19
  %31 = load i32**, i32*** %9, align 8
  store i32* null, i32** %31, align 8
  store i32 1, i32* %5, align 4
  br label %37

32:                                               ; preds = %24
  %33 = load i32*, i32** @serverpsk, align 8
  %34 = call i32 @SSL_SESSION_up_ref(i32* %33)
  %35 = load i32*, i32** @serverpsk, align 8
  %36 = load i32**, i32*** %9, align 8
  store i32* %35, i32** %36, align 8
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %30, %18, %14
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i64) #1

declare dso_local i32 @SSL_SESSION_up_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
