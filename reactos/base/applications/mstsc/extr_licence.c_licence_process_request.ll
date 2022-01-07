; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_process_request.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_MODULUS_SIZE = common dso_local global i32 0, align 4
@LICENCE_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@LICENCE_HWID_SIZE = common dso_local global i32 0, align 4
@SEC_RANDOM_SIZE = common dso_local global i32 0, align 4
@g_licence_sign_key = common dso_local global i32 0, align 4
@g_licence_key = common dso_local global i64 0, align 8
@g_username = common dso_local global i32 0, align 4
@g_hostname = common dso_local global i32 0, align 4
@LICENCE_TAG_LICENCE_INFO = common dso_local global i32 0, align 4
@LICENCE_TAG_NEW_LICENCE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @licence_process_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @licence_process_request(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @LICENCE_SIGNATURE_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = load i32, i32* @LICENCE_HWID_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %25 = call i32 @in_uint8p(i32 %22, i32* %23, i32 %24)
  %26 = mul nuw i64 4, %13
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32* %15, i32 0, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @licence_generate_keys(i32* %15, i32* %29, i32* %15)
  %31 = call i32 @load_licence(i32** %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %1
  %35 = call i32 @licence_generate_hwid(i32* %21)
  %36 = load i32, i32* @g_licence_sign_key, align 4
  %37 = mul nuw i64 4, %20
  %38 = trunc i64 %37 to i32
  %39 = call i32 @sec_sign(i32* %18, i32 16, i32 %36, i32 16, i32* %21, i32 %38)
  %40 = call i8* (...) @rdssl_rc4_info_create()
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* @g_licence_key, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @rdssl_rc4_set_key(i8* %41, i8* %43, i32 16)
  %45 = load i8*, i8** %10, align 8
  %46 = bitcast i32* %21 to i8*
  %47 = bitcast i32* %21 to i8*
  %48 = mul nuw i64 4, %20
  %49 = trunc i64 %48 to i32
  %50 = call i32 @rdssl_rc4_crypt(i8* %45, i8* %46, i8* %47, i32 %49)
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @rdssl_rc4_info_delete(i8* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @licence_info(i32* %15, i32* %15, i32* %53, i32 %54, i32* %21, i32* %18)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @xfree(i32* %56)
  store i32 1, i32* %11, align 4
  br label %62

58:                                               ; preds = %1
  %59 = load i32, i32* @g_username, align 4
  %60 = load i32, i32* @g_hostname, align 4
  %61 = call i32 @licence_send_new_licence_request(i32* %15, i32* %15, i32 %59, i32 %60)
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %34
  %63 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %11, align 4
  switch i32 %64, label %66 [
    i32 0, label %65
    i32 1, label %65
  ]

65:                                               ; preds = %62, %62
  ret void

66:                                               ; preds = %62
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @licence_generate_keys(i32*, i32*, i32*) #2

declare dso_local i32 @load_licence(i32**) #2

declare dso_local i32 @licence_generate_hwid(i32*) #2

declare dso_local i32 @sec_sign(i32*, i32, i32, i32, i32*, i32) #2

declare dso_local i8* @rdssl_rc4_info_create(...) #2

declare dso_local i32 @rdssl_rc4_set_key(i8*, i8*, i32) #2

declare dso_local i32 @rdssl_rc4_crypt(i8*, i8*, i8*, i32) #2

declare dso_local i32 @rdssl_rc4_info_delete(i8*) #2

declare dso_local i32 @licence_info(i32*, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @xfree(i32*) #2

declare dso_local i32 @licence_send_new_licence_request(i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
