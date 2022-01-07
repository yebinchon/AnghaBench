; ModuleID = '/home/carl/AnghaBench/openssl/providers/extr_defltprov.c_deflt_get_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/extr_defltprov.c_deflt_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_PROV_PARAM_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"OpenSSL Default Provider\00", align 1
@OSSL_PROV_PARAM_VERSION = common dso_local global i32 0, align 4
@OPENSSL_VERSION_STR = common dso_local global i8* null, align 8
@OSSL_PROV_PARAM_BUILDINFO = common dso_local global i32 0, align 4
@OPENSSL_FULL_VERSION_STR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @deflt_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflt_get_params(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @OSSL_PROV_PARAM_NAME, align 4
  %9 = call i32* @OSSL_PARAM_locate(i32* %7, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @OSSL_PARAM_set_utf8_ptr(i32* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %42

17:                                               ; preds = %12, %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @OSSL_PROV_PARAM_VERSION, align 4
  %20 = call i32* @OSSL_PARAM_locate(i32* %18, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** @OPENSSL_VERSION_STR, align 8
  %26 = call i32 @OSSL_PARAM_set_utf8_ptr(i32* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %42

29:                                               ; preds = %23, %17
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @OSSL_PROV_PARAM_BUILDINFO, align 4
  %32 = call i32* @OSSL_PARAM_locate(i32* %30, i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** @OPENSSL_FULL_VERSION_STR, align 8
  %38 = call i32 @OSSL_PARAM_set_utf8_ptr(i32* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %35, %29
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %28, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_utf8_ptr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
