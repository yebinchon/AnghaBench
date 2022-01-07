; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_parse_public_sig.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_parse_public_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_MAX_MODULUS_SIZE = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@SEC_EXPONENT_SIZE = common dso_local global i32 0, align 4
@g_server_public_key_len = common dso_local global i32 0, align 4
@SEC_MODULUS_SIZE = common dso_local global i32 0, align 4
@g_testkey = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"key signature doesn't match test key\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @sec_parse_public_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_parse_public_sig(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @SEC_MAX_MODULUS_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @SEC_MAX_MODULUS_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 72
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @True, align 4
  store i32 %25, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %54

26:                                               ; preds = %4
  %27 = mul nuw i64 4, %16
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %18, i32 0, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 8
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @in_uint8a(i32 %32, i32* %18, i32 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load i32, i32* @SEC_EXPONENT_SIZE, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* @g_server_public_key_len, align 4
  %41 = bitcast i32* %21 to i8*
  %42 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %43 = bitcast i32* %18 to i8*
  %44 = load i32, i32* %13, align 4
  %45 = load i64, i64* @g_testkey, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i64 @rdssl_sign_ok(i8* %36, i32 %37, i8* %39, i32 %40, i8* %41, i32 %42, i8* %43, i32 %44, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %26
  %50 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %26
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @s_check(i32 %52)
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %54

54:                                               ; preds = %51, %24
  %55 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @in_uint8a(i32, i32*, i32) #2

declare dso_local i64 @rdssl_sign_ok(i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @DEBUG_RDP5(i8*) #2

declare dso_local i32 @s_check(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
