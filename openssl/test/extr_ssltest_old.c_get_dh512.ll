; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_get_dh512.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_get_dh512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_dh512.dh512_p = internal global [64 x i8] c"\CB\C8\E1\86\D0\1F\94\17\A6\99\F0\C6\1F\0D\AC\B6%>\069\CAr\04\B0n\DA\C0a\E6zw%\E8;\B9_\9A\B6\B5\FE\99\0B\A1\93N53\B8\E1\F1\13OY\1A\D2W\C0&!3\02\C5\AE#", align 16
@get_dh512.dh512_g = internal global [1 x i8] c"\02", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_dh512 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dh512() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32* (...) @DH_new()
  store i32* %5, i32** %2, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %31

8:                                                ; preds = %0
  %9 = call i32* @BN_bin2bn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_dh512.dh512_p, i64 0, i64 0), i32 64, i32* null)
  store i32* %9, i32** %3, align 8
  %10 = call i32* @BN_bin2bn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @get_dh512.dh512_g, i64 0, i64 0), i32 1, i32* null)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @DH_set0_pqg(i32* %17, i32* %18, i32* null, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16, %13, %8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @DH_free(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @BN_free(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @BN_free(i32* %27)
  store i32* null, i32** %1, align 8
  br label %31

29:                                               ; preds = %16
  %30 = load i32*, i32** %2, align 8
  store i32* %30, i32** %1, align 8
  br label %31

31:                                               ; preds = %29, %22, %7
  %32 = load i32*, i32** %1, align 8
  ret i32* %32
}

declare dso_local i32* @DH_new(...) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @DH_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
