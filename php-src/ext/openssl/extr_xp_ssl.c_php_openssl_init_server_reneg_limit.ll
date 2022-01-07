; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_init_server_reneg_limit.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_init_server_reneg_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@OPENSSL_DEFAULT_RENEG_LIMIT = common dso_local global i64 0, align 8
@OPENSSL_DEFAULT_RENEG_WINDOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"reneg_limit\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"reneg_window\00", align 1
@php_openssl_info_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @php_openssl_init_server_reneg_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_openssl_init_server_reneg_limit(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load i64, i64* @OPENSSL_DEFAULT_RENEG_LIMIT, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @OPENSSL_DEFAULT_RENEG_WINDOW, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @PHP_STREAM_CONTEXT(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @PHP_STREAM_CONTEXT(i32* %14)
  %16 = call i32* @php_stream_context_get_option(i64 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  %17 = icmp ne i32* null, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @zval_get_long(i32* %19)
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %18, %13, %2
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %72

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @PHP_STREAM_CONTEXT(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @PHP_STREAM_CONTEXT(i32* %30)
  %32 = call i32* @php_stream_context_get_option(i64 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %32, i32** %5, align 8
  %33 = icmp ne i32* null, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @zval_get_long(i32* %35)
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %34, %29, %25
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @php_stream_is_persistent(i32* %38)
  %40 = call i64 @pemalloc(i32 4, i32 %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = bitcast i8* %41 to %struct.TYPE_4__*
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  store i64 %45, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i64 %50, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @php_openssl_info_callback, align 4
  %71 = call i32 @SSL_set_info_callback(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %37, %24
  ret void
}

declare dso_local i64 @PHP_STREAM_CONTEXT(i32*) #1

declare dso_local i32* @php_stream_context_get_option(i64, i8*, i8*) #1

declare dso_local i64 @zval_get_long(i32*) #1

declare dso_local i64 @pemalloc(i32, i32) #1

declare dso_local i32 @php_stream_is_persistent(i32*) #1

declare dso_local i32 @SSL_set_info_callback(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
