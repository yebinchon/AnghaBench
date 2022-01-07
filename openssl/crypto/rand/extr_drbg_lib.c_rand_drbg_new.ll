; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_rand_drbg_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_rand_drbg_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_11__*, i32, i32* }

@RAND_F_RAND_DRBG_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@rand_drbg_get_entropy = common dso_local global i8* null, align 8
@rand_drbg_cleanup_entropy = common dso_local global i8* null, align 8
@rand_drbg_get_nonce = common dso_local global i32 0, align 4
@rand_drbg_cleanup_nonce = common dso_local global i32 0, align 4
@master_reseed_interval = common dso_local global i32 0, align 4
@master_reseed_time_interval = common dso_local global i32 0, align 4
@slave_reseed_interval = common dso_local global i32 0, align 4
@slave_reseed_time_interval = common dso_local global i32 0, align 4
@RAND_R_PARENT_STRENGTH_TOO_WEAK = common dso_local global i32 0, align 4
@rand_crngt_cleanup_entropy = common dso_local global i8* null, align 8
@rand_crngt_get_entropy = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i32, i32, i32, %struct.TYPE_11__*)* @rand_drbg_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @rand_drbg_new(i32* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call %struct.TYPE_11__* @OPENSSL_secure_zalloc(i32 72)
  br label %19

17:                                               ; preds = %5
  %18 = call %struct.TYPE_11__* @OPENSSL_zalloc(i32 72)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi %struct.TYPE_11__* [ %16, %15 ], [ %18, %17 ]
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %12, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %22 = icmp eq %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @RAND_F_RAND_DRBG_NEW, align 4
  %25 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %26 = call i32 @RANDerr(i32 %24, i32 %25)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %116

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 10
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = call i64 @CRYPTO_secure_allocated(%struct.TYPE_11__* %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ false, %27 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = call i32 (...) @openssl_get_fork_id()
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 8
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = icmp eq %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %37
  %51 = load i8*, i8** @rand_drbg_get_entropy, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @rand_drbg_cleanup_entropy, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @rand_drbg_get_nonce, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @rand_drbg_cleanup_nonce, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @master_reseed_interval, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @master_reseed_time_interval, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %82

69:                                               ; preds = %37
  %70 = load i8*, i8** @rand_drbg_get_entropy, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @rand_drbg_cleanup_entropy, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @slave_reseed_interval, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @slave_reseed_time_interval, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %69, %50
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @RAND_DRBG_set(%struct.TYPE_11__* %83, i32 %84, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %113

89:                                               ; preds = %82
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %91 = icmp ne %struct.TYPE_11__* %90, null
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %94 = call i32 @rand_drbg_lock(%struct.TYPE_11__* %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = call i32 @rand_drbg_unlock(%struct.TYPE_11__* %103)
  %105 = load i32, i32* @RAND_F_RAND_DRBG_NEW, align 4
  %106 = load i32, i32* @RAND_R_PARENT_STRENGTH_TOO_WEAK, align 4
  %107 = call i32 @RANDerr(i32 %105, i32 %106)
  br label %113

108:                                              ; preds = %92
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = call i32 @rand_drbg_unlock(%struct.TYPE_11__* %109)
  br label %111

111:                                              ; preds = %108, %89
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %6, align 8
  br label %116

113:                                              ; preds = %102, %88
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %115 = call i32 @RAND_DRBG_free(%struct.TYPE_11__* %114)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %116

116:                                              ; preds = %113, %111, %23
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %117
}

declare dso_local %struct.TYPE_11__* @OPENSSL_secure_zalloc(i32) #1

declare dso_local %struct.TYPE_11__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i64 @CRYPTO_secure_allocated(%struct.TYPE_11__*) #1

declare dso_local i32 @openssl_get_fork_id(...) #1

declare dso_local i64 @RAND_DRBG_set(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @rand_drbg_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @rand_drbg_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @RAND_DRBG_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
