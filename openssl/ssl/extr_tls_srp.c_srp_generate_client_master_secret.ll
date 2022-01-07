; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_srp_generate_client_master_secret.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_srp_generate_client_master_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* (%struct.TYPE_8__*, i32)*, i32, i32, i32, i32, i32, i32, i32, i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_CALLBACK_FAILED = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srp_generate_client_master_secret(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @SRP_Verify_B_mod_N(i32 %13, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @SRP_Calc_u(i32 %24, i32 %28, i32 %32)
  store i32* %33, i32** %4, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %20
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8* (%struct.TYPE_8__*, i32)*, i8* (%struct.TYPE_8__*, i32)** %38, align 8
  %40 = icmp eq i8* (%struct.TYPE_8__*, i32)* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35, %20, %1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %44 = load i32, i32* @SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET, align 4
  %45 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %46 = call i32 @SSLfatal(%struct.TYPE_8__* %42, i32 %43, i32 %44, i32 %45)
  br label %124

47:                                               ; preds = %35
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8* (%struct.TYPE_8__*, i32)*, i8* (%struct.TYPE_8__*, i32)** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i8* %51(%struct.TYPE_8__* %52, i32 %56)
  store i8* %57, i8** %8, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %62 = load i32, i32* @SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET, align 4
  %63 = load i32, i32* @SSL_R_CALLBACK_FAILED, align 4
  %64 = call i32 @SSLfatal(%struct.TYPE_8__* %60, i32 %61, i32 %62, i32 %63)
  br label %124

65:                                               ; preds = %47
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32* @SRP_Calc_x(i32 %69, i32 %73, i8* %74)
  store i32* %75, i32** %3, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %98, label %77

77:                                               ; preds = %65
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i32* @SRP_Calc_client_key(i32 %81, i32 %85, i32 %89, i32* %90, i32 %94, i32* %95)
  store i32* %96, i32** %5, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %77, %65
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %101 = load i32, i32* @SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET, align 4
  %102 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %103 = call i32 @SSLfatal(%struct.TYPE_8__* %99, i32 %100, i32 %101, i32 %102)
  br label %124

104:                                              ; preds = %77
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @BN_num_bytes(i32* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i8* @OPENSSL_malloc(i32 %107)
  store i8* %108, i8** %9, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %113 = load i32, i32* @SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET, align 4
  %114 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %115 = call i32 @SSLfatal(%struct.TYPE_8__* %111, i32 %112, i32 %113, i32 %114)
  br label %124

116:                                              ; preds = %104
  %117 = load i32*, i32** %5, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @BN_bn2bin(i32* %117, i8* %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @ssl_generate_master_secret(%struct.TYPE_8__* %120, i8* %121, i32 %122, i32 1)
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %116, %110, %98, %59, %41
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @BN_clear_free(i32* %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @BN_clear_free(i32* %127)
  %129 = load i8*, i8** %8, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = call i32 @OPENSSL_clear_free(i8* %132, i32 %134)
  br label %136

136:                                              ; preds = %131, %124
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @BN_clear_free(i32* %137)
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i64 @SRP_Verify_B_mod_N(i32, i32) #1

declare dso_local i32* @SRP_Calc_u(i32, i32, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32* @SRP_Calc_x(i32, i32, i8*) #1

declare dso_local i32* @SRP_Calc_client_key(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @ssl_generate_master_secret(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
