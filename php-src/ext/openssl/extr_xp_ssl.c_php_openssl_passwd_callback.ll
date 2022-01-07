; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_passwd_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_passwd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"passphrase\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @php_openssl_passwd_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_passwd_callback(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i8* null, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = call i32 @GET_VER_OPT_STRING(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %4
  %20 = load i32*, i32** %11, align 8
  %21 = call i64 @Z_STRLEN_P(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 1
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @Z_STRVAL_P(i32* %28)
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @Z_STRLEN_P(i32* %30)
  %32 = add i64 %31, 1
  %33 = call i32 @memcpy(i8* %27, i32 %29, i64 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call i64 @Z_STRLEN_P(i32* %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @GET_VER_OPT_STRING(i8*, i8*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
