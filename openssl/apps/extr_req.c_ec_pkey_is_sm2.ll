; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_req.c_ec_pkey_is_sm2.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_req.c_ec_pkey_is_sm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_SM2 = common dso_local global i64 0, align 8
@EVP_PKEY_EC = common dso_local global i64 0, align 8
@NID_sm2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ec_pkey_is_sm2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_pkey_is_sm2(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @EVP_PKEY_id(i32* %6)
  %8 = load i64, i64* @EVP_PKEY_SM2, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @EVP_PKEY_id(i32* %12)
  %14 = load i64, i64* @EVP_PKEY_EC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @EVP_PKEY_get0_EC_KEY(i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @EC_KEY_get0_group(i32* %21)
  store i32* %22, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @EC_GROUP_get_curve_name(i32* %25)
  %27 = load i64, i64* @NID_sm2, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %24, %20, %16, %11
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32* @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i64 @EC_GROUP_get_curve_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
