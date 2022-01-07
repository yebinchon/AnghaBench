; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_names.c_evp_get_cipherbyname_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_names.c_evp_get_cipherbyname_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_INIT_ADD_ALL_CIPHERS = common dso_local global i32 0, align 4
@OBJ_NAME_TYPE_CIPHER_METH = common dso_local global i32 0, align 4
@cipher_from_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @evp_get_cipherbyname_ex(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @OPENSSL_INIT_ADD_ALL_CIPHERS, align 4
  %10 = call i32 @OPENSSL_init_crypto(i32 %9, i32* null)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %37

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @OBJ_NAME_TYPE_CIPHER_METH, align 4
  %16 = call i64 @OBJ_NAME_get(i8* %14, i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %3, align 8
  br label %37

22:                                               ; preds = %13
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @ossl_namemap_stored(i32* %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @ossl_namemap_name2num(i32* %25, i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %37

31:                                               ; preds = %22
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @cipher_from_name, align 4
  %35 = call i32 @ossl_namemap_doall_names(i32* %32, i32 %33, i32 %34, i32** %6)
  %36 = load i32*, i32** %6, align 8
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %31, %30, %20, %12
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i64 @OBJ_NAME_get(i8*, i32) #1

declare dso_local i32* @ossl_namemap_stored(i32*) #1

declare dso_local i32 @ossl_namemap_name2num(i32*, i8*) #1

declare dso_local i32 @ossl_namemap_doall_names(i32*, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
