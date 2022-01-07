; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_scrypt.c_kdf_scrypt_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_scrypt.c_kdf_scrypt_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@OSSL_KDF_PARAM_PASSWORD = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_N = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_R = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_P = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_MAXMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @kdf_scrypt_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdf_scrypt_set_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @OSSL_KDF_PARAM_PASSWORD, align 4
  %13 = call i32* @OSSL_PARAM_locate_const(i32* %11, i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @scrypt_set_membuf(i32* %17, i32* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %113

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %28 = call i32* @OSSL_PARAM_locate_const(i32* %26, i32 %27)
  store i32* %28, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @scrypt_set_membuf(i32* %32, i32* %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %113

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_N, align 4
  %43 = call i32* @OSSL_PARAM_locate_const(i32* %41, i32 %42)
  store i32* %43, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @OSSL_PARAM_get_uint64(i32* %46, i32* %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp sle i32 %50, 1
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @is_power_of_two(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52, %49, %45
  store i32 0, i32* %3, align 4
  br label %113

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %40
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_R, align 4
  %64 = call i32* @OSSL_PARAM_locate_const(i32* %62, i32 %63)
  store i32* %64, i32** %6, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @OSSL_PARAM_get_uint64(i32* %67, i32* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %66
  store i32 0, i32* %3, align 4
  br label %113

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %61
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_P, align 4
  %81 = call i32* @OSSL_PARAM_locate_const(i32* %79, i32 %80)
  store i32* %81, i32** %6, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @OSSL_PARAM_get_uint64(i32* %84, i32* %8)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %83
  store i32 0, i32* %3, align 4
  br label %113

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %78
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_MAXMEM, align 4
  %98 = call i32* @OSSL_PARAM_locate_const(i32* %96, i32 %97)
  store i32* %98, i32** %6, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @OSSL_PARAM_get_uint64(i32* %101, i32* %8)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %100
  store i32 0, i32* %3, align 4
  br label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %95
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %107, %90, %73, %56, %38, %23
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i32) #1

declare dso_local i32 @scrypt_set_membuf(i32*, i32*, i32*) #1

declare dso_local i32 @OSSL_PARAM_get_uint64(i32*, i32*) #1

declare dso_local i32 @is_power_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
