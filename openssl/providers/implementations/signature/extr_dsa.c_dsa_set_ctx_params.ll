; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/signature/extr_dsa.c_dsa_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/signature/extr_dsa.c_dsa_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32* }

@OSSL_SIGNATURE_PARAM_DIGEST_SIZE = common dso_local global i32 0, align 4
@OSSL_SIGNATURE_PARAM_DIGEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsa_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_set_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %51

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %51

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @OSSL_SIGNATURE_PARAM_DIGEST_SIZE, align 4
  %26 = call i32* @OSSL_PARAM_locate_const(i32* %24, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @OSSL_PARAM_get_size_t(i32* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %51

36:                                               ; preds = %29, %23
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @OSSL_SIGNATURE_PARAM_DIGEST, align 4
  %39 = call i32* @OSSL_PARAM_locate_const(i32* %37, i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @OSSL_PARAM_get_utf8_string(i32* %46, i8** %8, i32 8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %51

50:                                               ; preds = %45, %36
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %35, %22, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(i32*, i32*) #1

declare dso_local i32 @OSSL_PARAM_get_utf8_string(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
