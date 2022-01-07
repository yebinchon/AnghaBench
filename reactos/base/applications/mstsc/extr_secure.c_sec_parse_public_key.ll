; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_parse_public_key.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_parse_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_RSA_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"RSA magic 0x%x\0A\00", align 1
@False = common dso_local global i32 0, align 4
@SEC_PADDING_SIZE = common dso_local global i64 0, align 8
@SEC_MODULUS_SIZE = common dso_local global i64 0, align 8
@SEC_MAX_MODULUS_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Bad server public key size (%u bits)\0A\00", align 1
@SEC_EXPONENT_SIZE = common dso_local global i64 0, align 8
@g_server_public_key_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @sec_parse_public_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_parse_public_key(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @in_uint32_le(i32 %10, i64 %11)
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @SEC_RSA_MAGIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @False, align 4
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @in_uint32_le(i32 %21, i64 %22)
  %24 = load i64, i64* @SEC_PADDING_SIZE, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub nsw i64 %25, %24
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @SEC_MODULUS_SIZE, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @SEC_MAX_MODULUS_SIZE, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %20
  %35 = load i64, i64* %9, align 8
  %36 = mul nsw i64 %35, 8
  %37 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @False, align 4
  store i32 %38, i32* %4, align 4
  br label %56

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @in_uint8s(i32 %40, i64 8)
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i64, i64* @SEC_EXPONENT_SIZE, align 8
  %45 = call i32 @in_uint8a(i32 %42, i32* %43, i64 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @in_uint8a(i32 %46, i32* %47, i64 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* @SEC_PADDING_SIZE, align 8
  %52 = call i32 @in_uint8s(i32 %50, i64 %51)
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* @g_server_public_key_len, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @s_check(i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %39, %34, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @in_uint32_le(i32, i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @in_uint8s(i32, i64) #1

declare dso_local i32 @in_uint8a(i32, i32*, i64) #1

declare dso_local i32 @s_check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
