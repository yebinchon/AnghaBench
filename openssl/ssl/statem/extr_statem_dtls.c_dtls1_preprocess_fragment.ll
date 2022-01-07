; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls1_preprocess_fragment.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls1_preprocess_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.hm_header_st = type { i64, i64, i64, i32, i32 }

@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_F_DTLS1_PREPROCESS_FRAGMENT = common dso_local global i32 0, align 4
@SSL_R_EXCESSIVE_MESSAGE_SIZE = common dso_local global i32 0, align 4
@DTLS1_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.hm_header_st*)* @dtls1_preprocess_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtls1_preprocess_fragment(%struct.TYPE_13__* %0, %struct.hm_header_st* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.hm_header_st*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.hm_header_st* %1, %struct.hm_header_st** %5, align 8
  %9 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %10 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %13 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %16 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %18, %19
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = call i64 @dtls1_max_handshake_message_len(%struct.TYPE_13__* %25)
  %27 = icmp ugt i64 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %31 = load i32, i32* @SSL_F_DTLS1_PREPROCESS_FRAGMENT, align 4
  %32 = load i32, i32* @SSL_R_EXCESSIVE_MESSAGE_SIZE, align 4
  %33 = call i32 @SSLfatal(%struct.TYPE_13__* %29, i32 %30, i32 %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %109

34:                                               ; preds = %23
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %48 = add i64 %46, %47
  %49 = call i32 @BUF_MEM_grow_clean(i32 %45, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %54 = load i32, i32* @SSL_F_DTLS1_PREPROCESS_FRAGMENT, align 4
  %55 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %56 = call i32 @SSLfatal(%struct.TYPE_13__* %52, i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %109

57:                                               ; preds = %42
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i64 %63, i64* %68, align 8
  %69 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %70 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 8
  %76 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %77 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i32 %78, i32* %83, align 4
  %84 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %85 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  store i32 %86, i32* %91, align 8
  br label %108

92:                                               ; preds = %34
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %93, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %104 = load i32, i32* @SSL_F_DTLS1_PREPROCESS_FRAGMENT, align 4
  %105 = load i32, i32* @SSL_R_EXCESSIVE_MESSAGE_SIZE, align 4
  %106 = call i32 @SSLfatal(%struct.TYPE_13__* %102, i32 %103, i32 %104, i32 %105)
  store i32 0, i32* %3, align 4
  br label %109

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %57
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %101, %51, %28
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @dtls1_max_handshake_message_len(%struct.TYPE_13__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @BUF_MEM_grow_clean(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
