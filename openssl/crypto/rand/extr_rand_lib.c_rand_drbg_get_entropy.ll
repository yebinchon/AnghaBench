; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_rand_drbg_get_entropy.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_rand_drbg_get_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }

@RAND_F_RAND_DRBG_GET_ENTROPY = common dso_local global i32 0, align 4
@RAND_R_PARENT_STRENGTH_TOO_WEAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rand_drbg_get_entropy(%struct.TYPE_18__* %0, i8** %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %6
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @RAND_F_RAND_DRBG_GET_ENTROPY, align 4
  %36 = load i32, i32* @RAND_R_PARENT_STRENGTH_TOO_WEAK, align 4
  %37 = call i32 @RANDerr(i32 %35, i32 %36)
  store i64 0, i64* %7, align 8
  br label %134

38:                                               ; preds = %24, %6
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = icmp ne %struct.TYPE_17__* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %16, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %62

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call %struct.TYPE_17__* @rand_pool_new(i32 %51, i32 %54, i64 %55, i64 %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %16, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %59 = icmp eq %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i64 0, i64* %7, align 8
  br label %134

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %43
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = icmp ne %struct.TYPE_16__* %65, null
  br i1 %66, label %67, label %112

67:                                               ; preds = %62
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %69 = call i64 @rand_pool_bytes_needed(%struct.TYPE_17__* %68, i32 1)
  store i64 %69, i64* %17, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %71 = load i64, i64* %17, align 8
  %72 = call i8* @rand_pool_add_begin(%struct.TYPE_17__* %70, i64 %71)
  store i8* %72, i8** %18, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %111

75:                                               ; preds = %67
  store i64 0, i64* %19, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = call i32 @rand_drbg_lock(%struct.TYPE_16__* %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = load i8*, i8** %18, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load i32, i32* %13, align 4
  %86 = bitcast %struct.TYPE_18__** %8 to i8*
  %87 = call i64 @RAND_DRBG_generate(%struct.TYPE_16__* %82, i8* %83, i64 %84, i32 %85, i8* %86, i32 8)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %75
  %90 = load i64, i64* %17, align 8
  store i64 %90, i64* %19, align 8
  br label %91

91:                                               ; preds = %89, %75
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = call i32 @tsan_load(i32* %95)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = call i32 @rand_drbg_unlock(%struct.TYPE_16__* %101)
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* %19, align 8
  %106 = mul i64 8, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @rand_pool_add_end(%struct.TYPE_17__* %103, i64 %104, i32 %107)
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %110 = call i64 @rand_pool_entropy_available(%struct.TYPE_17__* %109)
  store i64 %110, i64* %15, align 8
  br label %111

111:                                              ; preds = %91, %67
  br label %115

112:                                              ; preds = %62
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %114 = call i64 @rand_pool_acquire_entropy(%struct.TYPE_17__* %113)
  store i64 %114, i64* %15, align 8
  br label %115

115:                                              ; preds = %112, %111
  %116 = load i64, i64* %15, align 8
  %117 = icmp ugt i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %120 = call i64 @rand_pool_length(%struct.TYPE_17__* %119)
  store i64 %120, i64* %14, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %122 = call i8* @rand_pool_detach(%struct.TYPE_17__* %121)
  %123 = load i8**, i8*** %9, align 8
  store i8* %122, i8** %123, align 8
  br label %124

124:                                              ; preds = %118, %115
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = icmp eq %struct.TYPE_17__* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %131 = call i32 @rand_pool_free(%struct.TYPE_17__* %130)
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i64, i64* %14, align 8
  store i64 %133, i64* %7, align 8
  br label %134

134:                                              ; preds = %132, %60, %34
  %135 = load i64, i64* %7, align 8
  ret i64 %135
}

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local %struct.TYPE_17__* @rand_pool_new(i32, i32, i64, i64) #1

declare dso_local i64 @rand_pool_bytes_needed(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @rand_pool_add_begin(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @rand_drbg_lock(%struct.TYPE_16__*) #1

declare dso_local i64 @RAND_DRBG_generate(%struct.TYPE_16__*, i8*, i64, i32, i8*, i32) #1

declare dso_local i32 @tsan_load(i32*) #1

declare dso_local i32 @rand_drbg_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @rand_pool_add_end(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i64 @rand_pool_entropy_available(%struct.TYPE_17__*) #1

declare dso_local i64 @rand_pool_acquire_entropy(%struct.TYPE_17__*) #1

declare dso_local i64 @rand_pool_length(%struct.TYPE_17__*) #1

declare dso_local i8* @rand_pool_detach(%struct.TYPE_17__*) #1

declare dso_local i32 @rand_pool_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
