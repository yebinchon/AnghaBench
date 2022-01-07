; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_rand_pool_bytes_needed.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_rand_pool_bytes_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@RAND_F_RAND_POOL_BYTES_NEEDED = common dso_local global i32 0, align 4
@RAND_R_ARGUMENT_OUT_OF_RANGE = common dso_local global i32 0, align 4
@RAND_R_RANDOM_POOL_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rand_pool_bytes_needed(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i64 @rand_pool_entropy_needed(%struct.TYPE_5__* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @RAND_F_RAND_POOL_BYTES_NEEDED, align 4
  %14 = load i32, i32* @RAND_R_ARGUMENT_OUT_OF_RANGE, align 4
  %15 = call i32 @RANDerr(i32 %13, i32 %14)
  store i64 0, i64* %3, align 8
  br label %71

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @ENTROPY_TO_BYTES(i64 %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  %28 = icmp ugt i64 %20, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load i32, i32* @RAND_F_RAND_POOL_BYTES_NEEDED, align 4
  %31 = load i32, i32* @RAND_R_RANDOM_POOL_OVERFLOW, align 4
  %32 = call i32 @RANDerr(i32 %30, i32 %31)
  store i64 0, i64* %3, align 8
  br label %71

33:                                               ; preds = %16
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %33
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = icmp ult i64 %42, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %51, %41, %33
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @rand_pool_grow(%struct.TYPE_5__* %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  store i64 0, i64* %3, align 8
  br label %71

69:                                               ; preds = %59
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %69, %64, %29, %12
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i64 @rand_pool_entropy_needed(%struct.TYPE_5__*) #1

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i64 @ENTROPY_TO_BYTES(i64, i32) #1

declare dso_local i32 @rand_pool_grow(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
