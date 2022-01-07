; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_limit_handshake_reneg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_limit_handshake_reneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"reneg_limit_callback\00", align 1
@PHP_STREAM_FLAG_NO_FCLOSE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"SSL: failed invoking reneg limit notification callback\00", align 1
@IS_TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"SSL: client-initiated handshake rate limit exceeded by peer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @php_openssl_limit_handshake_reneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_openssl_limit_handshake_reneg(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.TYPE_8__* @php_openssl_get_stream_from_ssl_handle(i32* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  %16 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i64 %26, i64* %30, align 8
  br label %146

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %34, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i64 %44, i64* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %54, %59
  %61 = mul nsw i32 %49, %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, %61
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %31
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %31
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %90, %95
  br i1 %96, label %97, label %146

97:                                               ; preds = %79
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  store i32 1, i32* %101, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = call i64 @PHP_STREAM_CONTEXT(%struct.TYPE_8__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %142

105:                                              ; preds = %97
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = call i64 @PHP_STREAM_CONTEXT(%struct.TYPE_8__* %106)
  %108 = call i32* @php_stream_context_get_option(i64 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32* %108, i32** %7, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %142

110:                                              ; preds = %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = call i32 @php_stream_to_zval(%struct.TYPE_8__* %111, i32* %8)
  %113 = load i32, i32* @PHP_STREAM_FLAG_NO_FCLOSE, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i64, i64* @FAILURE, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i64 @call_user_function_ex(i32* null, i32* null, i32* %119, i32* %9, i32 1, i32* %8, i32 0, i32* null)
  %121 = icmp eq i64 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load i32, i32* @E_WARNING, align 4
  %124 = call i32 @php_error(i32 %123, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %110
  %126 = load i32, i32* @PHP_STREAM_FLAG_NO_FCLOSE, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = xor i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i64 @Z_TYPE(i32 %131)
  %133 = load i64, i64* @IS_TRUE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %125
  %141 = call i32 @zval_ptr_dtor(i32* %9)
  br label %145

142:                                              ; preds = %105, %97
  %143 = load i32, i32* @E_WARNING, align 4
  %144 = call i32 @php_error_docref(i32* null, i32 %143, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %140
  br label %146

146:                                              ; preds = %23, %145, %79
  ret void
}

declare dso_local %struct.TYPE_8__* @php_openssl_get_stream_from_ssl_handle(i32*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @PHP_STREAM_CONTEXT(%struct.TYPE_8__*) #1

declare dso_local i32* @php_stream_context_get_option(i64, i8*, i8*) #1

declare dso_local i32 @php_stream_to_zval(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @call_user_function_ex(i32*, i32*, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @php_error(i32, i8*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
