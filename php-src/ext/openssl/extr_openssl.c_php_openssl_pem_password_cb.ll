; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_pem_password_cb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_pem_password_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_openssl_pem_password = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @php_openssl_pem_password_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_pem_password_cb(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.php_openssl_pem_password*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to %struct.php_openssl_pem_password*
  store %struct.php_openssl_pem_password* %12, %struct.php_openssl_pem_password** %10, align 8
  %13 = load %struct.php_openssl_pem_password*, %struct.php_openssl_pem_password** %10, align 8
  %14 = icmp eq %struct.php_openssl_pem_password* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.php_openssl_pem_password*, %struct.php_openssl_pem_password** %10, align 8
  %17 = getelementptr inbounds %struct.php_openssl_pem_password, %struct.php_openssl_pem_password* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %42

21:                                               ; preds = %15
  %22 = load %struct.php_openssl_pem_password*, %struct.php_openssl_pem_password** %10, align 8
  %23 = getelementptr inbounds %struct.php_openssl_pem_password, %struct.php_openssl_pem_password* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.php_openssl_pem_password*, %struct.php_openssl_pem_password** %10, align 8
  %31 = getelementptr inbounds %struct.php_openssl_pem_password, %struct.php_openssl_pem_password* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %28, %27 ], [ %32, %29 ]
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.php_openssl_pem_password*, %struct.php_openssl_pem_password** %10, align 8
  %37 = getelementptr inbounds %struct.php_openssl_pem_password, %struct.php_openssl_pem_password* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i8* %35, i32* %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %33, %20
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
