; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_my_sock_read.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_my_sock_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @my_sock_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_sock_read(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @BIO_get_data(i32* %11)
  %13 = inttoptr i64 %12 to i32*
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @secure_raw_read(i32* %13, i8* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @BIO_clear_retry_flags(i32* %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %10
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINTR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EWOULDBLOCK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EAGAIN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25, %21
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @BIO_set_retry_read(i32* %34)
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %10
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @secure_raw_read(i32*, i8*, i32) #1

declare dso_local i64 @BIO_get_data(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
