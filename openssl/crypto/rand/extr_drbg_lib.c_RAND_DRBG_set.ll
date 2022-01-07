; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_set.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)* }

@rand_drbg_type = common dso_local global i32* null, align 8
@RAND_DRBG_TYPE_MASTER = common dso_local global i64 0, align 8
@rand_drbg_flags = common dso_local global i32* null, align 8
@DRBG_UNINITIALISED = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_HMAC = common dso_local global i32 0, align 4
@RAND_F_RAND_DRBG_SET = common dso_local global i32 0, align 4
@RAND_R_UNSUPPORTED_DRBG_TYPE = common dso_local global i32 0, align 4
@DRBG_ERROR = common dso_local global i32 0, align 4
@RAND_R_ERROR_INITIALISING_DRBG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_DRBG_set(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32*, i32** @rand_drbg_type, align 8
  %16 = load i64, i64* @RAND_DRBG_TYPE_MASTER, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** @rand_drbg_flags, align 8
  %20 = load i64, i64* @RAND_DRBG_TYPE_MASTER, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %14, %11, %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34, %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = call i32 %45(%struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @rand_pool_free(i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %40, %34, %23
  %55 = load i32, i32* @DRBG_UNINITIALISED, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %68, align 8
  store i32 1, i32* %4, align 4
  br label %116

69:                                               ; preds = %54
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @is_ctr(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = call i32 @drbg_ctr_init(%struct.TYPE_9__* %74)
  store i32 %75, i32* %8, align 4
  br label %103

76:                                               ; preds = %69
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @is_digest(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @RAND_DRBG_FLAG_HMAC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = call i32 @drbg_hmac_init(%struct.TYPE_9__* %86)
  store i32 %87, i32* %8, align 4
  br label %91

88:                                               ; preds = %80
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = call i32 @drbg_hash_init(%struct.TYPE_9__* %89)
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %102

92:                                               ; preds = %76
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %98, align 8
  %99 = load i32, i32* @RAND_F_RAND_DRBG_SET, align 4
  %100 = load i32, i32* @RAND_R_UNSUPPORTED_DRBG_TYPE, align 4
  %101 = call i32 @RANDerr(i32 %99, i32 %100)
  store i32 0, i32* %4, align 4
  br label %116

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %73
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* @DRBG_ERROR, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @RAND_F_RAND_DRBG_SET, align 4
  %112 = load i32, i32* @RAND_R_ERROR_INITIALISING_DRBG, align 4
  %113 = call i32 @RANDerr(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %104
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %92, %66
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @rand_pool_free(i32*) #1

declare dso_local i64 @is_ctr(i32) #1

declare dso_local i32 @drbg_ctr_init(%struct.TYPE_9__*) #1

declare dso_local i64 @is_digest(i32) #1

declare dso_local i32 @drbg_hmac_init(%struct.TYPE_9__*) #1

declare dso_local i32 @drbg_hash_init(%struct.TYPE_9__*) #1

declare dso_local i32 @RANDerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
