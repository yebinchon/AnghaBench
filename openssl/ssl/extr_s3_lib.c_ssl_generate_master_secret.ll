; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_generate_master_secret.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl_generate_master_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i8*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)* }

@SSL_PSK = common dso_local global i64 0, align 8
@SSL_kPSK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_generate_master_secret(%struct.TYPE_17__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @SSL_PSK, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %121

26:                                               ; preds = %4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @SSL_kPSK, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %36, %26
  %39 = load i64, i64* %7, align 8
  %40 = add i64 4, %39
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i8* @OPENSSL_malloc(i64 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %146

48:                                               ; preds = %38
  %49 = load i8*, i8** %11, align 8
  store i8* %49, i8** %12, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @s2n(i64 %50, i8* %51)
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @SSL_kPSK, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i8*, i8** %12, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @memset(i8* %58, i32 0, i64 %59)
  br label %66

61:                                               ; preds = %48
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @memcpy(i8* %62, i8* %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i64, i64* %7, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @s2n(i64 %70, i8* %71)
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @memcpy(i8* %73, i8* %78, i64 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @OPENSSL_clear_free(i8* %85, i64 %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  store i8* null, i8** %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)*, i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)** %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = call i32 %98(%struct.TYPE_17__* %99, i32 %104, i8* %105, i64 %106, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %66
  %114 = load i8*, i8** %11, align 8
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @OPENSSL_clear_free(i8* %114, i64 %115)
  br label %146

117:                                              ; preds = %66
  %118 = load i8*, i8** %11, align 8
  %119 = load i64, i64* %14, align 8
  %120 = call i32 @OPENSSL_clear_free(i8* %118, i64 %119)
  br label %145

121:                                              ; preds = %4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)*, i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)** %127, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = call i32 %128(%struct.TYPE_17__* %129, i32 %134, i8* %135, i64 %136, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %121
  br label %146

144:                                              ; preds = %121
  br label %145

145:                                              ; preds = %144, %117
  store i32 1, i32* %10, align 4
  br label %146

146:                                              ; preds = %145, %143, %113, %47
  %147 = load i8*, i8** %6, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i8*, i8** %6, align 8
  %154 = load i64, i64* %7, align 8
  %155 = call i32 @OPENSSL_clear_free(i8* %153, i64 %154)
  br label %160

156:                                              ; preds = %149
  %157 = load i8*, i8** %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @OPENSSL_cleanse(i8* %157, i64 %158)
  br label %160

160:                                              ; preds = %156, %152
  br label %161

161:                                              ; preds = %160, %146
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  store i32* null, i32** %170, align 8
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i32, i32* %10, align 4
  ret i32 %172
}

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @s2n(i64, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
