; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server13_read_transition.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server13_read_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_8__, i32, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SSL_HRR_PENDING = common dso_local global i32 0, align 4
@SSL3_MT_CLIENT_HELLO = common dso_local global i32 0, align 4
@TLS_ST_SR_CLNT_HELLO = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i32 0, align 4
@SSL3_MT_END_OF_EARLY_DATA = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE = common dso_local global i32 0, align 4
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@TLS_ST_SR_FINISHED = common dso_local global i8* null, align 8
@SSL3_MT_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_READING = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i32 0, align 4
@SSL3_MT_KEY_UPDATE = common dso_local global i32 0, align 4
@TLS_ST_SR_KEY_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @ossl_statem_server13_read_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ossl_statem_server13_read_transition(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 6
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %6, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
    i32 133, label %13
    i32 129, label %45
    i32 128, label %45
    i32 131, label %71
    i32 130, label %97
    i32 132, label %107
  ]

12:                                               ; preds = %2
  br label %136

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SSL_HRR_PENDING, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SSL3_MT_CLIENT_HELLO, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @TLS_ST_SR_CLNT_HELLO, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 1, i32* %3, align 4
  br label %137

27:                                               ; preds = %19
  br label %136

28:                                               ; preds = %13
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SSL3_MT_END_OF_EARLY_DATA, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 129, i32* %41, align 4
  store i32 1, i32* %3, align 4
  br label %137

42:                                               ; preds = %35
  br label %136

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %2, %2, %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32 131, i32* %58, align 4
  store i32 1, i32* %3, align 4
  br label %137

59:                                               ; preds = %52
  br label %70

60:                                               ; preds = %45
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 1, i32* %3, align 4
  br label %137

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %59
  br label %136

71:                                               ; preds = %2
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  store i32 1, i32* %3, align 4
  br label %137

87:                                               ; preds = %78
  br label %96

88:                                               ; preds = %71
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SSL3_MT_CERTIFICATE_VERIFY, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 130, i32* %94, align 4
  store i32 1, i32* %3, align 4
  br label %137

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %87
  br label %136

97:                                               ; preds = %2
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  store i32 1, i32* %3, align 4
  br label %137

106:                                              ; preds = %97
  br label %136

107:                                              ; preds = %2
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SSL_EARLY_DATA_READING, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %136

114:                                              ; preds = %107
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SSL_PHA_REQUESTED, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i32 131, i32* %126, align 4
  store i32 1, i32* %3, align 4
  br label %137

127:                                              ; preds = %118, %114
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @SSL3_MT_KEY_UPDATE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* @TLS_ST_SR_KEY_UPDATE, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  store i32 1, i32* %3, align 4
  br label %137

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %113, %106, %96, %70, %42, %27, %12
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %131, %124, %101, %92, %82, %64, %56, %39, %23
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
