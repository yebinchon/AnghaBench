; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_key.c_dh_key2buf.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_key.c_dh_key2buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DH_F_DH_KEY2BUF = common dso_local global i32 0, align 4
@DH_R_INVALID_PUBKEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@DH_R_BN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dh_key2buf(i32* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @DH_get0_pqg(i32* %10, i32** %8, i32* null, i32* null)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @DH_get0_key(i32* %12, i32** %6, i32* null)
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @BN_num_bytes(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @BN_num_bytes(i32* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %19, %16, %2
  %28 = load i32, i32* @DH_F_DH_KEY2BUF, align 4
  %29 = load i32, i32* @DH_R_INVALID_PUBKEY, align 4
  %30 = call i32 @DHerr(i32 %28, i32 %29)
  store i64 0, i64* %3, align 8
  br label %56

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @OPENSSL_malloc(i32 %32)
  store i8* %33, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @DH_F_DH_KEY2BUF, align 4
  %37 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %38 = call i32 @DHerr(i32 %36, i32 %37)
  store i64 0, i64* %3, align 8
  br label %56

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @BN_bn2binpad(i32* %40, i8* %41, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @OPENSSL_free(i8* %46)
  %48 = load i32, i32* @DH_F_DH_KEY2BUF, align 4
  %49 = load i32, i32* @DH_R_BN_ERROR, align 4
  %50 = call i32 @DHerr(i32 %48, i32 %49)
  store i64 0, i64* %3, align 8
  br label %56

51:                                               ; preds = %39
  %52 = load i8*, i8** %7, align 8
  %53 = load i8**, i8*** %5, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %51, %45, %35, %27
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i64 @BN_bn2binpad(i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
