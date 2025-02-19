; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/digests/extr_mdc2_prov.c_mdc2_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/digests/extr_mdc2_prov.c_mdc2_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@OSSL_DIGEST_PARAM_PAD_TYPE = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_GET_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @mdc2_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc2_set_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %7, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @OSSL_DIGEST_PARAM_PAD_TYPE, align 4
  %18 = call i32* @OSSL_PARAM_locate_const(i32* %16, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @OSSL_PARAM_get_uint(i32* %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ERR_LIB_PROV, align 4
  %29 = load i32, i32* @PROV_R_FAILED_TO_GET_PARAMETER, align 4
  %30 = call i32 @ERR_raise(i32 %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %33

31:                                               ; preds = %21, %15
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %27
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_uint(i32*, i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
