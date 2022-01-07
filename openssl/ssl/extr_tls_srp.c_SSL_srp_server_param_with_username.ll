; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_SSL_srp_server_param_with_username.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_SSL_srp_server_param_with_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32)*, i32*, i32*, i32*, i32, i32*, i32*, i32 }

@SSL_MAX_MASTER_KEY_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_UNKNOWN_PSK_IDENTITY = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_AL_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_srp_server_param_with_username(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @SSL_MAX_MASTER_KEY_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @SSL_AD_UNKNOWN_PSK_IDENTITY, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32)* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %25(%struct.TYPE_6__* %26, i32* %27, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @SSL_ERROR_NONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %106

37:                                               ; preds = %21, %2
  %38 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %51, %45, %37
  %64 = load i32, i32* @SSL3_AL_FATAL, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %106

65:                                               ; preds = %57
  %66 = trunc i64 %11 to i32
  %67 = call i64 @RAND_priv_bytes(i8* %13, i32 %66)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @SSL3_AL_FATAL, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %106

71:                                               ; preds = %65
  %72 = trunc i64 %11 to i32
  %73 = call i32 @BN_bin2bn(i8* %13, i32 %72, i32* null)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = trunc i64 %11 to i32
  %78 = call i32 @OPENSSL_cleanse(i8* %13, i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32* @SRP_Calc_B(i32 %82, i32* %86, i32* %90, i32* %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 5
  store i32* %95, i32** %98, align 8
  %99 = icmp ne i32* %95, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %71
  %101 = load i32, i32* @SSL_ERROR_NONE, align 4
  br label %104

102:                                              ; preds = %71
  %103 = load i32, i32* @SSL3_AL_FATAL, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  store i32 %105, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %69, %63, %35
  %107 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RAND_priv_bytes(i8*, i32) #2

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32* @SRP_Calc_B(i32, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
