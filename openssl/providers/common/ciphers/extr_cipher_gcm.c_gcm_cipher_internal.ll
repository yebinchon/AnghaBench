; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_cipher_internal.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_gcm.c_gcm_cipher_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i8*, i64, i8*)*, i32 (%struct.TYPE_11__*, i8*, i64)*, i32 (%struct.TYPE_11__*, i32, i32)* }

@UNINITIALISED_SIZET = common dso_local global i64 0, align 8
@IV_STATE_FINISHED = common dso_local global i64 0, align 8
@IV_STATE_UNINITIALISED = common dso_local global i64 0, align 8
@IV_STATE_BUFFERED = common dso_local global i64 0, align 8
@IV_STATE_COPIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i64*, i8*, i64)* @gcm_cipher_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_cipher_internal(%struct.TYPE_11__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %14, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNINITIALISED_SIZET, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @gcm_tls_cipher(%struct.TYPE_11__* %24, i8* %25, i64* %26, i8* %27, i64 %28)
  store i32 %29, i32* %6, align 4
  br label %147

30:                                               ; preds = %5
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IV_STATE_FINISHED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %30
  br label %143

42:                                               ; preds = %35
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IV_STATE_UNINITIALISED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = call i32 @gcm_iv_generate(%struct.TYPE_11__* %54, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53, %48
  br label %143

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IV_STATE_BUFFERED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %68(%struct.TYPE_11__* %69, i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  br label %143

79:                                               ; preds = %65
  %80 = load i64, i64* @IV_STATE_COPIED, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %59
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32 (%struct.TYPE_11__*, i8*, i64)*, i32 (%struct.TYPE_11__*, i8*, i64)** %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i64, i64* %11, align 8
  %96 = call i32 %92(%struct.TYPE_11__* %93, i8* %94, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %89
  br label %143

99:                                               ; preds = %89
  br label %112

100:                                              ; preds = %86
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32 (%struct.TYPE_11__*, i8*, i64, i8*)*, i32 (%struct.TYPE_11__*, i8*, i64, i8*)** %102, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 %103(%struct.TYPE_11__* %104, i8* %105, i64 %106, i8* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  br label %143

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %99
  br label %140

113:                                              ; preds = %83
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @UNINITIALISED_SIZET, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %143

125:                                              ; preds = %118, %113
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 %128(%struct.TYPE_11__* %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %125
  br label %143

136:                                              ; preds = %125
  %137 = load i64, i64* @IV_STATE_FINISHED, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  br label %142

140:                                              ; preds = %112
  %141 = load i64, i64* %11, align 8
  store i64 %141, i64* %12, align 8
  br label %142

142:                                              ; preds = %140, %136
  store i32 1, i32* %13, align 4
  br label %143

143:                                              ; preds = %142, %135, %124, %110, %98, %78, %57, %41
  %144 = load i64, i64* %12, align 8
  %145 = load i64*, i64** %9, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %143, %23
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @gcm_tls_cipher(%struct.TYPE_11__*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @gcm_iv_generate(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
