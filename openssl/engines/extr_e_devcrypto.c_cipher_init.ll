; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_cipher_init.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_ctx = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64, i8*, i32, i32 }
%struct.cipher_data_st = type { i32, i32, i32, i32 }

@COP_ENCRYPT = common dso_local global i32 0, align 4
@COP_DECRYPT = common dso_local global i32 0, align 4
@EVP_CIPH_MODE = common dso_local global i32 0, align 4
@cfd = common dso_local global i32 0, align 4
@CIOCGSESSION = common dso_local global i32 0, align 4
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"calling ioctl()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @cipher_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_init(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cipher_ctx*, align 8
  %11 = alloca %struct.cipher_data_st*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @EVP_CIPHER_CTX_get_cipher_data(i32* %12)
  %14 = inttoptr i64 %13 to %struct.cipher_ctx*
  store %struct.cipher_ctx* %14, %struct.cipher_ctx** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @EVP_CIPHER_CTX_nid(i32* %15)
  %17 = call %struct.cipher_data_st* @get_cipher_data(i32 %16)
  store %struct.cipher_data_st* %17, %struct.cipher_data_st** %11, align 8
  %18 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %25 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %24, i32 0, i32 1
  %26 = call i64 @clean_devcrypto_session(%struct.TYPE_3__* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %79

29:                                               ; preds = %23, %4
  %30 = load %struct.cipher_data_st*, %struct.cipher_data_st** %11, align 8
  %31 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %34 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.cipher_data_st*, %struct.cipher_data_st** %11, align 8
  %37 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %40 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %44 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* @COP_ENCRYPT, align 4
  br label %52

50:                                               ; preds = %29
  %51 = load i32, i32* @COP_DECRYPT, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %55 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.cipher_data_st*, %struct.cipher_data_st** %11, align 8
  %57 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EVP_CIPH_MODE, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %62 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.cipher_data_st*, %struct.cipher_data_st** %11, align 8
  %64 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %67 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @cfd, align 4
  %69 = load i32, i32* @CIOCGSESSION, align 4
  %70 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %71 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %70, i32 0, i32 1
  %72 = call i64 @ioctl(i32 %68, i32 %69, %struct.TYPE_3__* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %52
  %75 = load i32, i32* @ERR_LIB_SYS, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @ERR_raise_data(i32 %75, i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %79

78:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %74, %28
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @EVP_CIPHER_CTX_get_cipher_data(i32*) #1

declare dso_local %struct.cipher_data_st* @get_cipher_data(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_nid(i32*) #1

declare dso_local i64 @clean_devcrypto_session(%struct.TYPE_3__*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
