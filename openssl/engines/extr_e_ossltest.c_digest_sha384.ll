; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_ossltest.c_digest_sha384.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_ossltest.c_digest_sha384.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_hidden_sha384_md = common dso_local global i32* null, align 8
@NID_sha384 = common dso_local global i32 0, align 4
@NID_sha384WithRSAEncryption = common dso_local global i32 0, align 4
@SHA384_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA512_CBLOCK = common dso_local global i32 0, align 4
@EVP_MD_FLAG_DIGALGID_ABSENT = common dso_local global i32 0, align 4
@digest_sha384_init = common dso_local global i32 0, align 4
@digest_sha512_update = common dso_local global i32 0, align 4
@digest_sha384_final = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @digest_sha384 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @digest_sha384() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @_hidden_sha384_md, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %48

4:                                                ; preds = %0
  %5 = load i32, i32* @NID_sha384, align 4
  %6 = load i32, i32* @NID_sha384WithRSAEncryption, align 4
  %7 = call i32* @EVP_MD_meth_new(i32 %5, i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %4
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @SHA384_DIGEST_LENGTH, align 4
  %12 = call i32 @EVP_MD_meth_set_result_size(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* @SHA512_CBLOCK, align 4
  %17 = call i32 @EVP_MD_meth_set_input_blocksize(i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @EVP_MD_meth_set_app_datasize(i32* %20, i32 12)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @EVP_MD_FLAG_DIGALGID_ABSENT, align 4
  %26 = call i32 @EVP_MD_meth_set_flags(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @digest_sha384_init, align 4
  %31 = call i32 @EVP_MD_meth_set_init(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32*, i32** %1, align 8
  %35 = load i32, i32* @digest_sha512_update, align 4
  %36 = call i32 @EVP_MD_meth_set_update(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @digest_sha384_final, align 4
  %41 = call i32 @EVP_MD_meth_set_final(i32* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %33, %28, %23, %19, %14, %9, %4
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @EVP_MD_meth_free(i32* %44)
  store i32* null, i32** %1, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32*, i32** %1, align 8
  store i32* %47, i32** @_hidden_sha384_md, align 8
  br label %48

48:                                               ; preds = %46, %0
  %49 = load i32*, i32** @_hidden_sha384_md, align 8
  ret i32* %49
}

declare dso_local i32* @EVP_MD_meth_new(i32, i32) #1

declare dso_local i32 @EVP_MD_meth_set_result_size(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_input_blocksize(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_app_datasize(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_flags(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_init(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_update(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_set_final(i32*, i32) #1

declare dso_local i32 @EVP_MD_meth_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
