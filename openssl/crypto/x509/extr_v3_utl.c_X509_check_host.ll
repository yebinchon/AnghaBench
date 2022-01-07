; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_X509_check_host.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_X509_check_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GEN_DNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_check_host(i32* %0, i8* %1, i64 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 -2, i32* %6, align 4
  br label %58

15:                                               ; preds = %5
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %9, align 8
  br label %36

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %26, 1
  br label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i64 [ %27, %25 ], [ %29, %28 ]
  %32 = call i64 @memchr(i8* %22, i8 signext 0, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -2, i32* %6, align 4
  br label %58

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i64, i64* %9, align 8
  %38 = icmp ugt i64 %37, 1
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %47, %39, %36
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @GEN_DNS, align 4
  %56 = load i8**, i8*** %11, align 8
  %57 = call i32 @do_x509_check(i32* %51, i8* %52, i64 %53, i32 %54, i32 %55, i8** %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %50, %34, %14
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @do_x509_check(i32*, i8*, i64, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
