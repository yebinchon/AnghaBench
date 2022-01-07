; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl3_get_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl3_get_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL3_NUM_CIPHERS = common dso_local global i32 0, align 4
@ssl3_ciphers = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ssl3_get_cipher(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SSL3_NUM_CIPHERS, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32*, i32** @ssl3_ciphers, align 8
  %9 = load i32, i32* @SSL3_NUM_CIPHERS, align 4
  %10 = sub i32 %9, 1
  %11 = load i32, i32* %3, align 4
  %12 = sub i32 %10, %11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  store i32* %14, i32** %2, align 8
  br label %16

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %16

16:                                               ; preds = %15, %7
  %17 = load i32*, i32** %2, align 8
  ret i32* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
