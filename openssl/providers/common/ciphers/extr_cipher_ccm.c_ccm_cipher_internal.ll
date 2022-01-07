; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm.c_ccm_cipher_internal.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm.c_ccm_cipher_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i64, i32, i32, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i8*, i8*, i64, i32, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i64, i32*, i32)*, i32 (%struct.TYPE_10__*, i8*, i64)* }

@UNINITIALISED_SIZET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i64*, i8*, i64)* @ccm_cipher_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_cipher_internal(%struct.TYPE_10__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %14, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %151

23:                                               ; preds = %5
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNINITIALISED_SIZET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @ccm_tls_cipher(%struct.TYPE_10__* %30, i8* %31, i64* %32, i8* %33, i64 %34)
  store i32 %35, i32* %6, align 4
  br label %151

36:                                               ; preds = %23
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %146

43:                                               ; preds = %39, %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %147

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  %53 = load i8*, i8** %10, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @ccm_set_iv(%struct.TYPE_10__* %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %147

61:                                               ; preds = %55
  br label %82

62:                                               ; preds = %52
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %147

71:                                               ; preds = %67, %62
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 %74(%struct.TYPE_10__* %75, i8* %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  br label %147

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %61
  br label %144

83:                                               ; preds = %49
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @ccm_set_iv(%struct.TYPE_10__* %89, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %147

94:                                               ; preds = %88, %83
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_10__*, i8*, i8*, i64, i32*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i64, i32*, i32)** %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i32 %102(%struct.TYPE_10__* %103, i8* %104, i8* %105, i64 %106, i32* null, i32 0)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %99
  br label %147

110:                                              ; preds = %99
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  br label %143

113:                                              ; preds = %94
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %147

119:                                              ; preds = %113
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32 (%struct.TYPE_10__*, i8*, i8*, i64, i32, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i64, i32, i32)** %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 %122(%struct.TYPE_10__* %123, i8* %124, i8* %125, i64 %126, i32 %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %119
  br label %147

136:                                              ; preds = %119
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %136, %110
  br label %144

144:                                              ; preds = %143, %82
  %145 = load i64, i64* %11, align 8
  store i64 %145, i64* %13, align 8
  br label %146

146:                                              ; preds = %144, %42
  store i32 1, i32* %12, align 4
  br label %147

147:                                              ; preds = %146, %135, %118, %109, %93, %80, %70, %60, %48
  %148 = load i64, i64* %13, align 8
  %149 = load i64*, i64** %9, align 8
  store i64 %148, i64* %149, align 8
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %147, %29, %22
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @ccm_tls_cipher(%struct.TYPE_10__*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @ccm_set_iv(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
