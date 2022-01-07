; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_cert.c_ssl_security_default_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_cert.c_ssl_security_default_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@ssl_security_default_callback.minbits_table = internal constant [5 x i32] [i32 80, i32 112, i32 128, i32 192, i32 256], align 16
@SSL_SECOP_TMP_DH = common dso_local global i32 0, align 4
@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_MD5 = common dso_local global i32 0, align 4
@SSL_SHA1 = common dso_local global i32 0, align 4
@SSL_RC4 = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@SSL_kEDH = common dso_local global i32 0, align 4
@SSL_kEECDH = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@TLS1_1_VERSION = common dso_local global i32 0, align 4
@DTLS1_2_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i8*, i8*)* @ssl_security_default_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_security_default_callback(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @SSL_CTX_get_security_level(i32* %22)
  store i32 %23, i32* %16, align 4
  br label %27

24:                                               ; preds = %7
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @SSL_get_security_level(i32* %25)
  store i32 %26, i32* %16, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %16, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @SSL_SECOP_TMP_DH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 80
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %171

38:                                               ; preds = %34, %30
  store i32 1, i32* %8, align 4
  br label %171

39:                                               ; preds = %27
  %40 = load i32, i32* %16, align 4
  %41 = icmp sgt i32 %40, 5
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 5, i32* %16, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %16, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* @ssl_security_default_callback.minbits_table, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %11, align 4
  switch i32 %49, label %164 [
    i32 131, label %50
    i32 132, label %50
    i32 133, label %50
    i32 128, label %114
    i32 130, label %154
    i32 129, label %159
  ]

50:                                               ; preds = %43, %43, %43
  %51 = load i8*, i8** %14, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %18, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %171

57:                                               ; preds = %50
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SSL_aNULL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %171

65:                                               ; preds = %57
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SSL_MD5, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %171

73:                                               ; preds = %65
  %74 = load i32, i32* %17, align 4
  %75 = icmp sgt i32 %74, 160
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SSL_SHA1, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %171

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %16, align 4
  %86 = icmp sge i32 %85, 2
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SSL_RC4, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  br label %171

94:                                               ; preds = %87, %84
  %95 = load i32, i32* %16, align 4
  %96 = icmp sge i32 %95, 3
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TLS1_3_VERSION, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SSL_kEDH, align 4
  %108 = load i32, i32* @SSL_kEECDH, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  br label %171

113:                                              ; preds = %103, %97, %94
  br label %170

114:                                              ; preds = %43
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @SSL_IS_DTLS(i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %143, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @SSL3_VERSION, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* %16, align 4
  %124 = icmp sge i32 %123, 2
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* %8, align 4
  br label %171

126:                                              ; preds = %122, %118
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @TLS1_VERSION, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* %16, align 4
  %132 = icmp sge i32 %131, 3
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 0, i32* %8, align 4
  br label %171

134:                                              ; preds = %130, %126
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @TLS1_1_VERSION, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = icmp sge i32 %139, 4
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 0, i32* %8, align 4
  br label %171

142:                                              ; preds = %138, %134
  br label %153

143:                                              ; preds = %114
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @DTLS1_2_VERSION, align 4
  %146 = call i32 @DTLS_VERSION_LT(i32 %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %16, align 4
  %150 = icmp sge i32 %149, 4
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %171

152:                                              ; preds = %148, %143
  br label %153

153:                                              ; preds = %152, %142
  br label %170

154:                                              ; preds = %43
  %155 = load i32, i32* %16, align 4
  %156 = icmp sge i32 %155, 2
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %8, align 4
  br label %171

158:                                              ; preds = %154
  br label %170

159:                                              ; preds = %43
  %160 = load i32, i32* %16, align 4
  %161 = icmp sge i32 %160, 3
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 0, i32* %8, align 4
  br label %171

163:                                              ; preds = %159
  br label %170

164:                                              ; preds = %43
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 0, i32* %8, align 4
  br label %171

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169, %163, %158, %153, %113
  store i32 1, i32* %8, align 4
  br label %171

171:                                              ; preds = %170, %168, %162, %157, %151, %141, %133, %125, %112, %93, %83, %72, %64, %56, %38, %37
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i32 @SSL_CTX_get_security_level(i32*) #1

declare dso_local i32 @SSL_get_security_level(i32*) #1

declare dso_local i32 @SSL_IS_DTLS(i32*) #1

declare dso_local i32 @DTLS_VERSION_LT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
