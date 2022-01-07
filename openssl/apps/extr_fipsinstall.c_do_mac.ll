; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_fipsinstall.c_do_mac.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_fipsinstall.c_do_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i8*, i64*)* @do_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mac(i32* %0, i8* %1, i32* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64*, i64** %10, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @EVP_MAC_init(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %54

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @EVP_MAC_size(i32* %21)
  %23 = load i64, i64* %13, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %45

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @BUFSIZE, align 4
  %31 = call i32 @BIO_read(i32* %28, i8* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @EVP_MAC_update(i32* %37, i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36, %33
  br label %54

43:                                               ; preds = %36
  br label %27

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @EVP_MAC_final(i32* %46, i8* %47, i64* %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %54

53:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %52, %42, %19
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local i32 @EVP_MAC_init(i32*) #1

declare dso_local i64 @EVP_MAC_size(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @EVP_MAC_update(i32*, i8*, i32) #1

declare dso_local i32 @EVP_MAC_final(i32*, i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
