; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_conf.c_TS_CONF_set_ess_cert_id_digest.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_conf.c_TS_CONF_set_ess_cert_id_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENV_ESS_CERT_ID_ALG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_CONF_set_ess_cert_id_digest(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @ENV_ESS_CERT_ID_ALG, align 4
  %13 = call i8* @NCONF_get_string(i32* %10, i8* %11, i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i8*, i8** %9, align 8
  %19 = call i32* @EVP_get_digestbyname(i8* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @ENV_ESS_CERT_ID_ALG, align 4
  %25 = call i32 @ts_CONF_invalid(i8* %23, i32 %24)
  br label %33

26:                                               ; preds = %17
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @TS_RESP_CTX_set_ess_cert_id_digest(i32* %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %33

32:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %31, %22
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i8* @NCONF_get_string(i32*, i8*, i32) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i32 @ts_CONF_invalid(i8*, i32) #1

declare dso_local i32 @TS_RESP_CTX_set_ess_cert_id_digest(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
