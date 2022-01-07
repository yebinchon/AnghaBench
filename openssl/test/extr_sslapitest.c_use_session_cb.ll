; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_use_session_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_use_session_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_session_cb_cnt = common dso_local global i32 0, align 4
@clientpsk = common dso_local global i32* null, align 8
@pskid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i64*, i32**)* @use_session_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_session_cb(i32* %0, i32* %1, i8** %2, i64* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32**, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32** %4, i32*** %11, align 8
  %12 = load i32, i32* @use_session_cb_cnt, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @use_session_cb_cnt, align 4
  switch i32 %13, label %24 [
    i32 1, label %14
    i32 2, label %19
  ]

14:                                               ; preds = %5
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %40

18:                                               ; preds = %14
  br label %25

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %40

23:                                               ; preds = %19
  br label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %40

25:                                               ; preds = %23, %18
  %26 = load i32*, i32** @clientpsk, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** @clientpsk, align 8
  %30 = call i32 @SSL_SESSION_up_ref(i32* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** @clientpsk, align 8
  %33 = load i32**, i32*** %11, align 8
  store i32* %32, i32** %33, align 8
  %34 = load i64, i64* @pskid, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %9, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* @pskid, align 8
  %38 = call i64 @strlen(i64 %37)
  %39 = load i64*, i64** %10, align 8
  store i64 %38, i64* %39, align 8
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %31, %24, %22, %17
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @SSL_SESSION_up_ref(i32*) #1

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
