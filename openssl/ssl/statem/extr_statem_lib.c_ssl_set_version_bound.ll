; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_ssl_set_version_bound.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_ssl_set_version_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL3_VERSION = common dso_local global i32 0, align 4
@TLS_MAX_VERSION_INTERNAL = common dso_local global i32 0, align 4
@DTLS_MAX_VERSION_INTERNAL = common dso_local global i32 0, align 4
@DTLS1_BAD_VER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_set_version_bound(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  store i32 1, i32* %4, align 4
  br label %41

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %15 [
    i32 128, label %16
    i32 129, label %26
  ]

15:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %41

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SSL3_VERSION, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @TLS_MAX_VERSION_INTERNAL, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DTLS_MAX_VERSION_INTERNAL, align 4
  %29 = call i32 @DTLS_VERSION_GT(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DTLS1_BAD_VER, align 4
  %34 = call i32 @DTLS_VERSION_LT(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26
  store i32 0, i32* %4, align 4
  br label %41

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %36, %24, %15, %10
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @DTLS_VERSION_GT(i32, i32) #1

declare dso_local i32 @DTLS_VERSION_LT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
