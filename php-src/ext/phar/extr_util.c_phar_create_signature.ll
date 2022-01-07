; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_create_signature.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_create_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@SEEK_END = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@openssl_privatekey = common dso_local global i32 0, align 4
@openssl_privatekey_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"unable to write phar \22%s\22 with requested openssl signature\00", align 1
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phar_create_signature(%struct.TYPE_3__* %0, i32* %1, i8** %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca [32 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [20 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca [16 x i8], align 16
  %23 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @php_stream_rewind(i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @efree(i8* %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i8* null, i8** %36, align 8
  br label %37

37:                                               ; preds = %30, %5
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %107 [
    i32 128, label %41
    i32 129, label %59
    i32 131, label %77
    i32 130, label %110
    i32 132, label %128
  ]

41:                                               ; preds = %37
  %42 = call i32 @PHP_SHA512Init(i32* %15)
  br label %43

43:                                               ; preds = %48, %41
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %46 = call i64 @php_stream_read(i32* %44, i8* %45, i32 1024)
  store i64 %46, i64* %13, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @PHP_SHA512Update(i32* %15, i8* %49, i64 %50)
  br label %43

52:                                               ; preds = %43
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %54 = call i32 @PHP_SHA512Final(i8* %53, i32* %15)
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %56 = call i8* @estrndup(i8* %55, i32 64)
  %57 = load i8**, i8*** %9, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i64*, i64** %10, align 8
  store i64 64, i64* %58, align 8
  br label %146

59:                                               ; preds = %37
  %60 = call i32 @PHP_SHA256Init(i32* %17)
  br label %61

61:                                               ; preds = %66, %59
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %64 = call i64 @php_stream_read(i32* %62, i8* %63, i32 1024)
  store i64 %64, i64* %13, align 8
  %65 = icmp ugt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @PHP_SHA256Update(i32* %17, i8* %67, i64 %68)
  br label %61

70:                                               ; preds = %61
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %72 = call i32 @PHP_SHA256Final(i8* %71, i32* %17)
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %74 = call i8* @estrndup(i8* %73, i32 32)
  %75 = load i8**, i8*** %9, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i64*, i64** %10, align 8
  store i64 32, i64* %76, align 8
  br label %146

77:                                               ; preds = %37
  store i8* null, i8** %18, align 8
  store i64 0, i64* %19, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @SEEK_END, align 4
  %80 = call i32 @php_stream_seek(i32* %78, i32 0, i32 %79)
  %81 = load i32, i32* @FAILURE, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @php_stream_tell(i32* %83)
  %85 = load i32, i32* @openssl_privatekey, align 4
  %86 = call i32 @PHAR_G(i32 %85)
  %87 = load i32, i32* @openssl_privatekey_len, align 4
  %88 = call i32 @PHAR_G(i32 %87)
  %89 = call i32 @phar_call_openssl_signverify(i32 1, i32* %82, i32 %84, i32 %86, i32 %88, i8** %18, i64* %19)
  %90 = icmp eq i32 %81, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %77
  %92 = load i8**, i8*** %11, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i8**, i8*** %11, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %95, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* @FAILURE, align 4
  store i32 %101, i32* %6, align 4
  br label %157

102:                                              ; preds = %77
  %103 = load i8*, i8** %18, align 8
  %104 = load i8**, i8*** %9, align 8
  store i8* %103, i8** %104, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i64*, i64** %10, align 8
  store i64 %105, i64* %106, align 8
  br label %146

107:                                              ; preds = %37
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i32 130, i32* %109, align 8
  br label %110

110:                                              ; preds = %37, %107
  %111 = call i32 @PHP_SHA1Init(i32* %21)
  br label %112

112:                                              ; preds = %117, %110
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %115 = call i64 @php_stream_read(i32* %113, i8* %114, i32 1024)
  store i64 %115, i64* %13, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @PHP_SHA1Update(i32* %21, i8* %118, i64 %119)
  br label %112

121:                                              ; preds = %112
  %122 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %123 = call i32 @PHP_SHA1Final(i8* %122, i32* %21)
  %124 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %125 = call i8* @estrndup(i8* %124, i32 20)
  %126 = load i8**, i8*** %9, align 8
  store i8* %125, i8** %126, align 8
  %127 = load i64*, i64** %10, align 8
  store i64 20, i64* %127, align 8
  br label %146

128:                                              ; preds = %37
  %129 = call i32 @PHP_MD5Init(i32* %23)
  br label %130

130:                                              ; preds = %135, %128
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %133 = call i64 @php_stream_read(i32* %131, i8* %132, i32 1024)
  store i64 %133, i64* %13, align 8
  %134 = icmp ugt i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @PHP_MD5Update(i32* %23, i8* %136, i64 %137)
  br label %130

139:                                              ; preds = %130
  %140 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %141 = call i32 @PHP_MD5Final(i8* %140, i32* %23)
  %142 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %143 = call i8* @estrndup(i8* %142, i32 16)
  %144 = load i8**, i8*** %9, align 8
  store i8* %143, i8** %144, align 8
  %145 = load i64*, i64** %10, align 8
  store i64 16, i64* %145, align 8
  br label %146

146:                                              ; preds = %139, %121, %102, %70, %52
  %147 = load i8**, i8*** %9, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = load i64*, i64** %10, align 8
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = call i32 @phar_hex_str(i8* %148, i64 %150, i8** %152)
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @SUCCESS, align 4
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %146, %100
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @php_stream_rewind(i32*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @PHP_SHA512Init(i32*) #1

declare dso_local i64 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i32 @PHP_SHA512Update(i32*, i8*, i64) #1

declare dso_local i32 @PHP_SHA512Final(i8*, i32*) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i32 @PHP_SHA256Init(i32*) #1

declare dso_local i32 @PHP_SHA256Update(i32*, i8*, i64) #1

declare dso_local i32 @PHP_SHA256Final(i8*, i32*) #1

declare dso_local i32 @php_stream_seek(i32*, i32, i32) #1

declare dso_local i32 @phar_call_openssl_signverify(i32, i32*, i32, i32, i32, i8**, i64*) #1

declare dso_local i32 @php_stream_tell(i32*) #1

declare dso_local i32 @PHAR_G(i32) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, ...) #1

declare dso_local i32 @PHP_SHA1Init(i32*) #1

declare dso_local i32 @PHP_SHA1Update(i32*, i8*, i64) #1

declare dso_local i32 @PHP_SHA1Final(i8*, i32*) #1

declare dso_local i32 @PHP_MD5Init(i32*) #1

declare dso_local i32 @PHP_MD5Update(i32*, i8*, i64) #1

declare dso_local i32 @PHP_MD5Final(i8*, i32*) #1

declare dso_local i32 @phar_hex_str(i8*, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
