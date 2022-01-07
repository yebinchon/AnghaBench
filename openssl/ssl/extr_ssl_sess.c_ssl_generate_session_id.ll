; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_sess.c_ssl_generate_session_id.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_sess.c_ssl_generate_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__*, i32 (%struct.TYPE_14__*, i32, i32*)*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_14__*, i32, i32*)* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }

@SSL3_SSL_SESSION_ID_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL_GENERATE_SESSION_ID = common dso_local global i32 0, align 4
@SSL_R_UNSUPPORTED_SSL_VERSION = common dso_local global i32 0, align 4
@SSL_R_SSL_SESSION_ID_CALLBACK_FAILED = common dso_local global i32 0, align 4
@SSL_R_SSL_SESSION_ID_HAS_BAD_LENGTH = common dso_local global i32 0, align 4
@SSL_R_SSL_SESSION_ID_CONFLICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_generate_session_id(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.TYPE_14__*, i32, i32*)*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 (%struct.TYPE_14__*, i32, i32*)* @def_generate_session_id, i32 (%struct.TYPE_14__*, i32, i32*)** %7, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %15 [
    i32 132, label %11
    i32 128, label %11
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 134, label %11
    i32 133, label %11
    i32 135, label %11
  ]

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %12 = load i32, i32* @SSL3_SSL_SESSION_ID_LENGTH, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %18 = load i32, i32* @SSL_F_SSL_GENERATE_SESSION_ID, align 4
  %19 = load i32, i32* @SSL_R_UNSUPPORTED_SSL_VERSION, align 4
  %20 = call i32 @SSLfatal(%struct.TYPE_14__* %16, i32 %17, i32 %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %132

21:                                               ; preds = %11
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  store i32 1, i32* %3, align 4
  br label %132

30:                                               ; preds = %21
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CRYPTO_THREAD_read_lock(i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CRYPTO_THREAD_read_lock(i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %43 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_14__*, i32, i32*)* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  %48 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %47, align 8
  store i32 (%struct.TYPE_14__*, i32, i32*)* %48, i32 (%struct.TYPE_14__*, i32, i32*)** %7, align 8
  br label %63

49:                                               ; preds = %30
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %53, align 8
  %55 = icmp ne i32 (%struct.TYPE_14__*, i32, i32*)* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %60, align 8
  store i32 (%struct.TYPE_14__*, i32, i32*)* %61, i32 (%struct.TYPE_14__*, i32, i32*)** %7, align 8
  br label %62

62:                                               ; preds = %56, %49
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @CRYPTO_THREAD_unlock(i32 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CRYPTO_THREAD_unlock(i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @memset(i32 %76, i32 0, i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %7, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 %84(%struct.TYPE_14__* %85, i32 %88, i32* %6)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %63
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %94 = load i32, i32* @SSL_F_SSL_GENERATE_SESSION_ID, align 4
  %95 = load i32, i32* @SSL_R_SSL_SESSION_ID_CALLBACK_FAILED, align 4
  %96 = call i32 @SSLfatal(%struct.TYPE_14__* %92, i32 %93, i32 %94, i32 %95)
  store i32 0, i32* %3, align 4
  br label %132

97:                                               ; preds = %63
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ugt i32 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100, %97
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %109 = load i32, i32* @SSL_F_SSL_GENERATE_SESSION_ID, align 4
  %110 = load i32, i32* @SSL_R_SSL_SESSION_ID_HAS_BAD_LENGTH, align 4
  %111 = call i32 @SSLfatal(%struct.TYPE_14__* %107, i32 %108, i32 %109, i32 %110)
  store i32 0, i32* %3, align 4
  br label %132

112:                                              ; preds = %100
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @SSL_has_matching_session_id(%struct.TYPE_14__* %116, i32 %119, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %112
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %128 = load i32, i32* @SSL_F_SSL_GENERATE_SESSION_ID, align 4
  %129 = load i32, i32* @SSL_R_SSL_SESSION_ID_CONFLICT, align 4
  %130 = call i32 @SSLfatal(%struct.TYPE_14__* %126, i32 %127, i32 %128, i32 %129)
  store i32 0, i32* %3, align 4
  br label %132

131:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %125, %106, %91, %27, %15
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @def_generate_session_id(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_read_lock(i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @SSL_has_matching_session_id(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
