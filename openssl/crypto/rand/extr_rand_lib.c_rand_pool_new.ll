; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_rand_pool_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_rand_pool_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32* }

@RAND_F_RAND_POOL_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RAND_POOL_MAX_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @rand_pool_new(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i8* @OPENSSL_zalloc(i32 40)
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @RAND_POOL_MIN_ALLOCATION(i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @RAND_F_RAND_POOL_NEW, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @RANDerr(i32 %19, i32 %20)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %100

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @RAND_POOL_MAX_LENGTH, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @RAND_POOL_MAX_LENGTH, align 8
  br label %33

31:                                               ; preds = %22
  %32 = load i64, i64* %9, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %11, align 8
  br label %44

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %44
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32* @OPENSSL_secure_zalloc(i64 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  br label %80

71:                                               ; preds = %61
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i8* @OPENSSL_zalloc(i32 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  store i32* %77, i32** %79, align 8
  br label %80

80:                                               ; preds = %71, %64
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @RAND_F_RAND_POOL_NEW, align 4
  %87 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %88 = call i32 @RANDerr(i32 %86, i32 %87)
  br label %97

89:                                               ; preds = %80
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %96, %struct.TYPE_4__** %5, align 8
  br label %100

97:                                               ; preds = %85
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %99 = call i32 @OPENSSL_free(%struct.TYPE_4__* %98)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %100

100:                                              ; preds = %97, %89, %18
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %101
}

declare dso_local i8* @OPENSSL_zalloc(i32) #1

declare dso_local i64 @RAND_POOL_MIN_ALLOCATION(i32) #1

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i32* @OPENSSL_secure_zalloc(i64) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
