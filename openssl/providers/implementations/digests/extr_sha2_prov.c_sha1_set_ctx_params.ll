; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/digests/extr_sha2_prov.c_sha1_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/digests/extr_sha2_prov.c_sha1_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@OSSL_DIGEST_PARAM_SSL3_MS = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_STRING = common dso_local global i64 0, align 8
@EVP_CTRL_SSL3_MASTER_SECRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*)* @sha1_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_set_ctx_params(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = load i32, i32* @OSSL_DIGEST_PARAM_SSL3_MS, align 4
  %18 = call %struct.TYPE_5__* @OSSL_PARAM_locate_const(%struct.TYPE_5__* %16, i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OSSL_PARAM_OCTET_STRING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sha1_ctrl(i32* %28, i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %21, %15
  br label %38

38:                                               ; preds = %37, %12, %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_5__* @OSSL_PARAM_locate_const(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sha1_ctrl(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
