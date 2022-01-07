; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_capture_session_meta.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_capture_session_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cipher_name\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cipher_bits\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"cipher_version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @php_openssl_capture_session_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_openssl_capture_session_meta(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @SSL_version(i32* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @SSL_get_current_cipher(i32* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i64, i64* %5, align 8
  switch i64 %11, label %13 [
    i64 128, label %12
  ]

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %14

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %14

14:                                               ; preds = %13, %12
  %15 = call i32 @array_init(i32* %3)
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @add_assoc_string(i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @SSL_CIPHER_get_name(i32* %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @add_assoc_string(i32* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @SSL_CIPHER_get_bits(i32* %22, i32* null)
  %24 = call i32 @add_assoc_long(i32* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i8* @SSL_CIPHER_get_version(i32* %25)
  %27 = call i32 @add_assoc_string(i32* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32* @Z_ARR(i32 %28)
  ret i32* %29
}

declare dso_local i64 @SSL_version(i32*) #1

declare dso_local i32* @SSL_get_current_cipher(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i64 @SSL_CIPHER_get_name(i32*) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i32) #1

declare dso_local i32 @SSL_CIPHER_get_bits(i32*, i32*) #1

declare dso_local i8* @SSL_CIPHER_get_version(i32*) #1

declare dso_local i32* @Z_ARR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
