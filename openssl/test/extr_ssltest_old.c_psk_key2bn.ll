; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_psk_key2bn.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_psk_key2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not convert PSK key '%s' to BIGNUM\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"psk buffer of callback is too small (%d) for key (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @psk_key2bn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psk_key2bn(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @BN_hex2bn(i32** %9, i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @bio_err, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i32, i8*, ...) @BIO_printf(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @BN_free(i32* %18)
  store i32 0, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @BN_num_bytes(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* @bio_err, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @BN_num_bytes(i32* %28)
  %30 = call i32 (i32, i8*, ...) @BIO_printf(i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @BN_free(i32* %31)
  store i32 0, i32* %4, align 4
  br label %40

33:                                               ; preds = %20
  %34 = load i32*, i32** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @BN_bn2bin(i32* %34, i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @BN_free(i32* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %25, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
