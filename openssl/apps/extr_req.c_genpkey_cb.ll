; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_req.c_genpkey_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_req.c_genpkey_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @genpkey_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genpkey_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i8 42, i8* %3, align 1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @EVP_PKEY_CTX_get_app_data(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @EVP_PKEY_CTX_get_keygen_info(i32* %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8 46, i8* %3, align 1
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i8 43, i8* %3, align 1
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8 42, i8* %3, align 1
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8 10, i8* %3, align 1
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @BIO_write(i32* %26, i8* %3, i32 1)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @BIO_flush(i32* %28)
  ret i32 1
}

declare dso_local i32* @EVP_PKEY_CTX_get_app_data(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_get_keygen_info(i32*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BIO_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
