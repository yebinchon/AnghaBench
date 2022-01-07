; ModuleID = '/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i64, i32, i32*, i32* }

@SM2_F_PKEY_SM2_CTRL = common dso_local global i32 0, align 4
@SM2_R_INVALID_CURVE = common dso_local global i32 0, align 4
@SM2_R_NO_PARAMETERS_SET = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i8*)* @pkey_sm2_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_sm2_ctrl(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %115 [
    i32 134, label %17
    i32 133, label %34
    i32 129, label %49
    i32 130, label %54
    i32 128, label %60
    i32 132, label %98
    i32 131, label %108
    i32 135, label %114
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = call i32* @EC_GROUP_new_by_curve_name(i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @SM2_F_PKEY_SM2_CTRL, align 4
  %24 = load i32, i32* @SM2_R_INVALID_CURVE, align 4
  %25 = call i32 @SM2err(i32 %23, i32 %24)
  store i32 0, i32* %5, align 4
  br label %116

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @EC_GROUP_free(i32* %29)
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  store i32 1, i32* %5, align 4
  br label %116

34:                                               ; preds = %4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @SM2_F_PKEY_SM2_CTRL, align 4
  %41 = load i32, i32* @SM2_R_NO_PARAMETERS_SET, align 4
  %42 = call i32 @SM2err(i32 %40, i32 %41)
  store i32 0, i32* %5, align 4
  br label %116

43:                                               ; preds = %34
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @EC_GROUP_set_asn1_flag(i32* %46, i32 %47)
  store i32 1, i32* %5, align 4
  br label %116

49:                                               ; preds = %4
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  store i32 1, i32* %5, align 4
  br label %116

54:                                               ; preds = %4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = bitcast i8* %58 to i32**
  store i32* %57, i32** %59, align 8
  store i32 1, i32* %5, align 4
  br label %116

60:                                               ; preds = %4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @OPENSSL_malloc(i32 %64)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @SM2_F_PKEY_SM2_CTRL, align 4
  %70 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %71 = call i32 @SM2err(i32 %69, i32 %70)
  store i32 0, i32* %5, align 4
  br label %116

72:                                               ; preds = %63
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @OPENSSL_free(i8* %79)
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %91

84:                                               ; preds = %60
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @OPENSSL_free(i8* %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* null, i8** %90, align 8
  br label %91

91:                                               ; preds = %84, %72
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  store i32 1, i32* %5, align 4
  br label %116

98:                                               ; preds = %4
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(i8* %99, i8* %102, i32 %106)
  store i32 1, i32* %5, align 4
  br label %116

108:                                              ; preds = %4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = bitcast i8* %112 to i64*
  store i64 %111, i64* %113, align 8
  store i32 1, i32* %5, align 4
  br label %116

114:                                              ; preds = %4
  store i32 1, i32* %5, align 4
  br label %116

115:                                              ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %114, %108, %98, %91, %68, %54, %49, %43, %39, %26, %22
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @SM2err(i32, i32) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @EC_GROUP_set_asn1_flag(i32*, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
