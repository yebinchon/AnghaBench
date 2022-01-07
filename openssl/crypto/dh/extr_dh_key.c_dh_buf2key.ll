; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_key.c_dh_buf2key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_key.c_dh_buf2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DH_R_BN_ERROR = common dso_local global i32 0, align 4
@DH_R_NO_PARAMETERS_SET = common dso_local global i32 0, align 4
@DH_R_INVALID_PUBKEY = common dso_local global i32 0, align 4
@DH_F_DH_BUF2KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dh_buf2key(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @DH_R_BN_ERROR, align 4
  store i32 %12, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32* @BN_bin2bn(i8* %13, i64 %14, i32* null)
  store i32* %15, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %46

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @DH_get0_pqg(i32* %19, i32** %10, i32* null, i32* null)
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %10, align 8
  %25 = call i64 @BN_num_bytes(i32* %24)
  store i64 %25, i64* %11, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %18
  %28 = load i32, i32* @DH_R_NO_PARAMETERS_SET, align 4
  store i32 %28, i32* %8, align 4
  br label %46

29:                                               ; preds = %23
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @BN_is_zero(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @DH_R_INVALID_PUBKEY, align 4
  store i32 %38, i32* %8, align 4
  br label %46

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @DH_set0_key(i32* %40, i32* %41, i32* null)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %46

45:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %52

46:                                               ; preds = %44, %37, %27, %17
  %47 = load i32, i32* @DH_F_DH_BUF2KEY, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @DHerr(i32 %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @BN_free(i32* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32* @BN_bin2bn(i8*, i64, i32*) #1

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32*, i32*) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @DH_set0_key(i32*, i32*, i32*) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
