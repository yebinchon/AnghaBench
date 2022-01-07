; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_cust.c_custom_ext_parse.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_cust.c_custom_ext_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 (%struct.TYPE_11__*, i32, i32, i8*, i64, i32*, i64, i32*, i32)*, i32, i32 }

@ENDPOINT_BOTH = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_2_SERVER_HELLO = common dso_local global i32 0, align 4
@ENDPOINT_SERVER = common dso_local global i32 0, align 4
@ENDPOINT_CLIENT = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS = common dso_local global i32 0, align 4
@SSL_EXT_FLAG_SENT = common dso_local global i32 0, align 4
@TLS1_AD_UNSUPPORTED_EXTENSION = common dso_local global i32 0, align 4
@SSL_F_CUSTOM_EXT_PARSE = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@SSL_EXT_FLAG_RECEIVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @custom_ext_parse(%struct.TYPE_11__* %0, i32 %1, i32 %2, i8* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32* %23, i32** %17, align 8
  %24 = load i32, i32* @ENDPOINT_BOTH, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %27 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %7
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @ENDPOINT_SERVER, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @ENDPOINT_CLIENT, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %19, align 4
  br label %42

42:                                               ; preds = %40, %7
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.TYPE_10__* @custom_ext_find(i32* %43, i32 %44, i32 %45, i32* null)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %18, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 1, i32* %8, align 4
  br label %122

50:                                               ; preds = %42
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @extension_is_relevant(%struct.TYPE_11__* %51, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %122

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  %62 = load i32, i32* @SSL_EXT_TLS1_3_SERVER_HELLO, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SSL_EXT_FLAG_SENT, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = load i32, i32* @TLS1_AD_UNSUPPORTED_EXTENSION, align 4
  %78 = load i32, i32* @SSL_F_CUSTOM_EXT_PARSE, align 4
  %79 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %80 = call i32 @SSLfatal(%struct.TYPE_11__* %76, i32 %77, i32 %78, i32 %79)
  store i32 0, i32* %8, align 4
  br label %122

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @SSL_EXT_FLAG_RECEIVED, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64 (%struct.TYPE_11__*, i32, i32, i8*, i64, i32*, i64, i32*, i32)*, i64 (%struct.TYPE_11__*, i32, i32, i8*, i64, i32*, i64, i32*, i32)** %95, align 8
  %97 = icmp ne i64 (%struct.TYPE_11__*, i32, i32, i8*, i64, i32*, i64, i32*, i32)* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i32 1, i32* %8, align 4
  br label %122

99:                                               ; preds = %93
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i64 (%struct.TYPE_11__*, i32, i32, i8*, i64, i32*, i64, i32*, i32)*, i64 (%struct.TYPE_11__*, i32, i32, i8*, i64, i32*, i64, i32*, i32)** %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i8*, i8** %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i64 %102(%struct.TYPE_11__* %103, i32 %104, i32 %105, i8* %106, i64 %107, i32* %108, i64 %109, i32* %16, i32 %112)
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %99
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @SSL_F_CUSTOM_EXT_PARSE, align 4
  %119 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %120 = call i32 @SSLfatal(%struct.TYPE_11__* %116, i32 %117, i32 %118, i32 %119)
  store i32 0, i32* %8, align 4
  br label %122

121:                                              ; preds = %99
  store i32 1, i32* %8, align 4
  br label %122

122:                                              ; preds = %121, %115, %98, %75, %58, %49
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_10__* @custom_ext_find(i32*, i32, i32, i32*) #1

declare dso_local i32 @extension_is_relevant(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
