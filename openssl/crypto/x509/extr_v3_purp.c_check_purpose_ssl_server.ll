; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_purp.c_check_purpose_ssl_server.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_purp.c_check_purpose_ssl_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XKU_SSL_SERVER = common dso_local global i32 0, align 4
@XKU_SGC = common dso_local global i32 0, align 4
@NS_SSL_SERVER = common dso_local global i32 0, align 4
@KU_TLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @check_purpose_ssl_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_purpose_ssl_server(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* @XKU_SSL_SERVER, align 4
  %10 = load i32, i32* @XKU_SGC, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @xku_reject(i32* %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @check_ssl_ca(i32* %19)
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @NS_SSL_SERVER, align 4
  %24 = call i64 @ns_reject(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %34

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @KU_TLS, align 4
  %30 = call i64 @ku_reject(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %34

33:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32, %26, %18, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @xku_reject(i32*, i32) #1

declare dso_local i32 @check_ssl_ca(i32*) #1

declare dso_local i64 @ns_reject(i32*, i32) #1

declare dso_local i64 @ku_reject(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
