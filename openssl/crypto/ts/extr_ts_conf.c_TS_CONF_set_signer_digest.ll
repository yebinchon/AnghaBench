; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_conf.c_TS_CONF_set_signer_digest.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_conf.c_TS_CONF_set_signer_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENV_SIGNER_DIGEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_CONF_set_signer_digest(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @ENV_SIGNER_DIGEST, align 4
  %17 = call i8* @NCONF_get_string(i32* %14, i8* %15, i32 %16)
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %13, %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @ENV_SIGNER_DIGEST, align 4
  %24 = call i32 @ts_CONF_lookup_fail(i8* %22, i32 %23)
  br label %41

25:                                               ; preds = %18
  %26 = load i8*, i8** %7, align 8
  %27 = call i32* @EVP_get_digestbyname(i8* %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @ENV_SIGNER_DIGEST, align 4
  %33 = call i32 @ts_CONF_invalid(i8* %31, i32 %32)
  br label %41

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @TS_RESP_CTX_set_signer_digest(i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %41

40:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %39, %30, %21
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i8* @NCONF_get_string(i32*, i8*, i32) #1

declare dso_local i32 @ts_CONF_lookup_fail(i8*, i32) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i32 @ts_CONF_invalid(i8*, i32) #1

declare dso_local i32 @TS_RESP_CTX_set_signer_digest(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
