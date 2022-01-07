; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_ssl_connection.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_ssl_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_ssl_connection(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @create_bare_ssl_connection(i32* %11, i32* %12, i32 %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @SSL_read_ex(i32* %22, i8* %9, i32 1, i64* %10)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @TEST_ulong_eq(i64 %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %44

30:                                               ; preds = %25
  br label %39

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @SSL_get_error(i32* %32, i32 0)
  %34 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %35 = call i32 @TEST_int_eq(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %44

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %18

43:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %37, %29, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @create_bare_ssl_connection(i32*, i32*, i32, i32) #1

declare dso_local i64 @SSL_read_ex(i32*, i8*, i32, i64*) #1

declare dso_local i32 @TEST_ulong_eq(i64, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_get_error(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
