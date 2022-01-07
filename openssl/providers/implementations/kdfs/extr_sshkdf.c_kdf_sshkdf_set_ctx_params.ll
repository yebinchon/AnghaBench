; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sshkdf.c_kdf_sshkdf_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sshkdf.c_kdf_sshkdf_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_9__ = type { i8, i32, i32, i32, i32, i32, i32, i32, i32 }

@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SSHKDF_XCGHASH = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SSHKDF_SESSION_ID = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SSHKDF_TYPE = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_VALUE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_8__*)* @kdf_sshkdf_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdf_sshkdf_set_ctx_params(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @ossl_prov_digest_load_from_params(i32* %17, %struct.TYPE_8__* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %26 = call %struct.TYPE_8__* @OSSL_PARAM_locate_const(%struct.TYPE_8__* %24, i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %6, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = call i32 @sshkdf_set_membuf(i32* %30, i32* %32, %struct.TYPE_8__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %106

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load i32, i32* @OSSL_KDF_PARAM_SSHKDF_XCGHASH, align 4
  %41 = call %struct.TYPE_8__* @OSSL_PARAM_locate_const(%struct.TYPE_8__* %39, i32 %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %6, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = call i32 @sshkdf_set_membuf(i32* %45, i32* %47, %struct.TYPE_8__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %106

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load i32, i32* @OSSL_KDF_PARAM_SSHKDF_SESSION_ID, align 4
  %56 = call %struct.TYPE_8__* @OSSL_PARAM_locate_const(%struct.TYPE_8__* %54, i32 %55)
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %6, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = call i32 @sshkdf_set_membuf(i32* %60, i32* %62, %struct.TYPE_8__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %106

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = load i32, i32* @OSSL_KDF_PARAM_SSHKDF_TYPE, align 4
  %71 = call %struct.TYPE_8__* @OSSL_PARAM_locate_const(%struct.TYPE_8__* %69, i32 %70)
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %6, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %105

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %73
  store i32 0, i32* %3, align 4
  br label %106

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 65
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %94, 70
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %84
  %97 = load i32, i32* @ERR_LIB_PROV, align 4
  %98 = load i32, i32* @PROV_R_VALUE_ERROR, align 4
  %99 = call i32 @ERR_raise(i32 %97, i32 %98)
  store i32 0, i32* %3, align 4
  br label %106

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = trunc i32 %101 to i8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i8 %102, i8* %104, align 4
  br label %105

105:                                              ; preds = %100, %68
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %96, %83, %66, %51, %36, %22
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_digest_load_from_params(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_8__* @OSSL_PARAM_locate_const(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sshkdf_set_membuf(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
