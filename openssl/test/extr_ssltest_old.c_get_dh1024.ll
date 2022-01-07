; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_get_dh1024.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_get_dh1024.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_dh1024.dh1024_p = internal global [128 x i8] c"\F8\81\89}\14$\C5\D1\E6\F7\BF:\E4\90\F4\FCs\FB4\B5\FALV\A2\EA\A7\E9\C0\C0\CE\89\E1\FAc?\B0k2f\F1\D1{\B0\00\8F\CA\87\C2\AE\98\89&\17\C2\05\D2\EC\08\D0\8C\FF\17R\8C\C5\07\93\03\B1\F6/\B8\1CRG'\1B\DB\D1\8D\9Di\1DRK2\81\AA\7F\00\C8\DC\E6\D9\CC\C1\11-74l\EA\02\97K\0E\BB\B1q3\09\15\FD\DD#\87\07^\89\ABk|_\EC\A6$\DCS", align 16
@get_dh1024.dh1024_g = internal global [1 x i8] c"\02", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_dh1024 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dh1024() #0 {
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
  %9 = call i32* @BN_bin2bn(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @get_dh1024.dh1024_p, i64 0, i64 0), i32 128, i32* null)
  store i32* %9, i32** %3, align 8
  %10 = call i32* @BN_bin2bn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @get_dh1024.dh1024_g, i64 0, i64 0), i32 1, i32* null)
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
