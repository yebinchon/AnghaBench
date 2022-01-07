; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_ok.c_ok_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_ok.c_ok_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@EVP_F_OK_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ok_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ok_new(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %4, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @EVP_F_OK_NEW, align 4
  %9 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %10 = call i32 @EVPerr(i32 %8, i32 %9)
  store i32 0, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = call i32* (...) @EVP_MD_CTX_new()
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = call i32 @OPENSSL_free(%struct.TYPE_5__* %24)
  store i32 0, i32* %2, align 4
  br label %32

26:                                               ; preds = %11
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @BIO_set_init(i32* %27, i32 0)
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = call i32 @BIO_set_data(i32* %29, %struct.TYPE_5__* %30)
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %23, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

declare dso_local i32 @BIO_set_data(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
