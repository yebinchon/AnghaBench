; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_print_key_details.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_print_key_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_EC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%d bits EC (%s)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%d bits %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @print_key_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_key_details(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @EVP_PKEY_id(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EVP_PKEY_EC, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @EC_KEY_get0_group(i32* %18)
  %20 = call i32 @EC_GROUP_get_curve_name(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @EC_KEY_free(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @EC_curve_nid2nist(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @OBJ_nid2sn(i32 %28)
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %27, %15
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @EVP_PKEY_bits(i32* %32)
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @BIO_printf(i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %34)
  br label %50

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %41 [
    i32 128, label %38
    i32 129, label %39
    i32 130, label %40
  ]

38:                                               ; preds = %36
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %44

39:                                               ; preds = %36
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %44

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @OBJ_nid2sn(i32 %42)
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %41, %40, %39, %38
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @EVP_PKEY_bits(i32* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @BIO_printf(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %44, %30
  ret void
}

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i8* @EC_curve_nid2nist(i32) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i32 @BIO_printf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @EVP_PKEY_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
