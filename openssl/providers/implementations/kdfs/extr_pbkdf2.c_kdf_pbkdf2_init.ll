; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_pbkdf2.c_kdf_pbkdf2_init.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_pbkdf2.c_kdf_pbkdf2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@OSSL_PARAM_END = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@SN_sha1 = common dso_local global i32 0, align 4
@PKCS5_DEFAULT_ITER = common dso_local global i32 0, align 4
@kdf_pbkdf2_default_checks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @kdf_pbkdf2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdf_pbkdf2_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %6 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %14 = load i32, i32* @SN_sha1, align 4
  %15 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %13, i32 %14, i32 0)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ossl_prov_digest_load_from_params(i32* %18, i32* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call i32 @ossl_prov_digest_reset(i32* %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i32, i32* @PKCS5_DEFAULT_ITER, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @kdf_pbkdf2_default_checks, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i32, i32) #1

declare dso_local i32 @ossl_prov_digest_load_from_params(i32*, i32*, i32*) #1

declare dso_local i32 @ossl_prov_digest_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
