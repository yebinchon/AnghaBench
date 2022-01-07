; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_hkdf.c_HKDF_Extract.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_hkdf.c_HKDF_Extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_WRONG_OUTPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i8*, i64)* @HKDF_Extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HKDF_Extract(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @EVP_MD_size(i32* %17)
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %41

22:                                               ; preds = %7
  %23 = load i64, i64* %15, align 8
  %24 = load i32, i32* %16, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @ERR_LIB_PROV, align 4
  %29 = load i32, i32* @PROV_R_WRONG_OUTPUT_BUFFER_SIZE, align 4
  %30 = call i32 @ERR_raise(i32 %28, i32 %29)
  store i32 0, i32* %8, align 4
  br label %41

31:                                               ; preds = %22
  %32 = load i32*, i32** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = call i32* @HMAC(i32* %32, i8* %33, i64 %34, i8* %35, i64 %36, i8* %37, i32* null)
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %31, %27, %21
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32* @HMAC(i32*, i8*, i64, i8*, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
