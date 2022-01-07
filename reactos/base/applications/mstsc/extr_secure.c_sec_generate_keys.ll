; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_generate_keys.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_generate_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_sec_sign_key = common dso_local global i32* null, align 8
@g_sec_decrypt_key = common dso_local global i32* null, align 8
@g_sec_encrypt_key = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"40-bit encryption enabled\0A\00", align 1
@g_rc4_key_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"rc_4_key_size == %d, 128-bit encryption enabled\0A\00", align 1
@g_sec_decrypt_update_key = common dso_local global i32* null, align 8
@g_sec_encrypt_update_key = common dso_local global i32* null, align 8
@g_rc4_decrypt_key = common dso_local global i32 0, align 4
@g_rc4_encrypt_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @sec_generate_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_generate_keys(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [48 x i32], align 16
  %8 = alloca [48 x i32], align 16
  %9 = alloca [48 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [48 x i32], [48 x i32]* %7, i64 0, i64 0
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @memcpy(i32* %10, i32* %11, i32 24)
  %13 = getelementptr inbounds [48 x i32], [48 x i32]* %7, i64 0, i64 0
  %14 = getelementptr inbounds i32, i32* %13, i64 24
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @memcpy(i32* %14, i32* %15, i32 24)
  %17 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 0
  %18 = getelementptr inbounds [48 x i32], [48 x i32]* %7, i64 0, i64 0
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @sec_hash_48(i32* %17, i32* %18, i32* %19, i32* %20, i8 signext 65)
  %22 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 0
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @sec_hash_48(i32* %22, i32* %23, i32* %24, i32* %25, i8 signext 88)
  %27 = load i32*, i32** @g_sec_sign_key, align 8
  %28 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 0
  %29 = call i32 @memcpy(i32* %27, i32* %28, i32 16)
  %30 = load i32*, i32** @g_sec_decrypt_key, align 8
  %31 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 16
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @sec_hash_16(i32* %30, i32* %31, i32* %32, i32* %33)
  %35 = load i32*, i32** @g_sec_encrypt_key, align 8
  %36 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 32
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @sec_hash_16(i32* %35, i32* %36, i32* %37, i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %50

42:                                               ; preds = %3
  %43 = call i32 @DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32*, i32** @g_sec_sign_key, align 8
  %45 = call i32 @sec_make_40bit(i32* %44)
  %46 = load i32*, i32** @g_sec_decrypt_key, align 8
  %47 = call i32 @sec_make_40bit(i32* %46)
  %48 = load i32*, i32** @g_sec_encrypt_key, align 8
  %49 = call i32 @sec_make_40bit(i32* %48)
  store i32 8, i32* @g_rc4_key_len, align 4
  br label %55

50:                                               ; preds = %3
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @DEBUG(i8* %53)
  store i32 16, i32* @g_rc4_key_len, align 4
  br label %55

55:                                               ; preds = %50, %42
  %56 = load i32*, i32** @g_sec_decrypt_update_key, align 8
  %57 = load i32*, i32** @g_sec_decrypt_key, align 8
  %58 = call i32 @memcpy(i32* %56, i32* %57, i32 16)
  %59 = load i32*, i32** @g_sec_encrypt_update_key, align 8
  %60 = load i32*, i32** @g_sec_encrypt_key, align 8
  %61 = call i32 @memcpy(i32* %59, i32* %60, i32 16)
  %62 = load i32, i32* @g_rc4_decrypt_key, align 4
  %63 = call i32 @rdssl_rc4_info_delete(i32 %62)
  %64 = call i32 (...) @rdssl_rc4_info_create()
  store i32 %64, i32* @g_rc4_decrypt_key, align 4
  %65 = load i32, i32* @g_rc4_decrypt_key, align 4
  %66 = load i32*, i32** @g_sec_decrypt_key, align 8
  %67 = bitcast i32* %66 to i8*
  %68 = load i32, i32* @g_rc4_key_len, align 4
  %69 = call i32 @rdssl_rc4_set_key(i32 %65, i8* %67, i32 %68)
  %70 = load i32, i32* @g_rc4_encrypt_key, align 4
  %71 = call i32 @rdssl_rc4_info_delete(i32 %70)
  %72 = call i32 (...) @rdssl_rc4_info_create()
  store i32 %72, i32* @g_rc4_encrypt_key, align 4
  %73 = load i32, i32* @g_rc4_encrypt_key, align 4
  %74 = load i32*, i32** @g_sec_encrypt_key, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = load i32, i32* @g_rc4_key_len, align 4
  %77 = call i32 @rdssl_rc4_set_key(i32 %73, i8* %75, i32 %76)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sec_hash_48(i32*, i32*, i32*, i32*, i8 signext) #1

declare dso_local i32 @sec_hash_16(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @sec_make_40bit(i32*) #1

declare dso_local i32 @rdssl_rc4_info_delete(i32) #1

declare dso_local i32 @rdssl_rc4_info_create(...) #1

declare dso_local i32 @rdssl_rc4_set_key(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
