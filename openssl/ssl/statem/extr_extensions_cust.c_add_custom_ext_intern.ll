; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_cust.c_add_custom_ext_intern.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_cust.c_add_custom_ext_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i8*, i8*, i32*, i32*, i32, i32 }

@TLSEXT_TYPE_signed_certificate_timestamp = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i32, i32*, i32*, i8*, i32, i8*)* @add_custom_ext_intern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_custom_ext_intern(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i8* %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %20, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %9
  %30 = load i32*, i32** %16, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %124

33:                                               ; preds = %29, %9
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @TLSEXT_TYPE_signed_certificate_timestamp, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %44 = call i64 @SSL_CTX_ct_is_enabled(%struct.TYPE_14__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %124

47:                                               ; preds = %42, %37, %33
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @SSL_extension_supported(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @TLSEXT_TYPE_signed_certificate_timestamp, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %124

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %13, align 4
  %58 = icmp ugt i32 %57, 65535
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %124

60:                                               ; preds = %56
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @custom_ext_find(%struct.TYPE_12__* %61, i32 %62, i32 %63, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %124

67:                                               ; preds = %60
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 48
  %77 = trunc i64 %76 to i32
  %78 = call %struct.TYPE_13__* @OPENSSL_realloc(%struct.TYPE_13__* %70, i32 %77)
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %22, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %80 = icmp eq %struct.TYPE_13__* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %124

82:                                               ; preds = %67
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %92
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %21, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %95 = call i32 @memset(%struct.TYPE_13__* %94, i32 0, i32 48)
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %18, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 5
  store i32* %105, i32** %107, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  store i32* %108, i32** %110, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i8*, i8** %17, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %19, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  store i32 1, i32* %10, align 4
  br label %124

124:                                              ; preds = %82, %81, %66, %59, %55, %46, %32
  %125 = load i32, i32* %10, align 4
  ret i32 %125
}

declare dso_local i64 @SSL_CTX_ct_is_enabled(%struct.TYPE_14__*) #1

declare dso_local i64 @SSL_extension_supported(i32) #1

declare dso_local i64 @custom_ext_find(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @OPENSSL_realloc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
