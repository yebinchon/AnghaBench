; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_get_dh1024dsa.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_get_dh1024dsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_dh1024dsa.dh1024_p = internal global [128 x i8] c"\C8\00\F7\08\07\89M\90S\F3\D5\00!\1B\F71\A6\A2\DA#\9A\C7\87\19;G\B6\8C\04o\FF\C6\9B\B8e\D2\C2_1\83J\A7_/\888\B6U\CF\D9\87mo\9F\DA\AC\A6H\AF\FC3\847[\82J1]\E7\BDR\97\A1w\BF\10\9E7\EAd\FA\CA(\8D\9D;\D2n\09\\h\C7E\90\FD\BBp\C9:\BB\DF\D4!\0F\C4j<\F6a\CF?\D6\13\F1_\BC\CF\BC&\9E\BC\0B\BD\AB]\C9T9", align 16
@get_dh1024dsa.dh1024_g = internal global [128 x i8] c";@\86\E7\F3l\DEg\1C\CC\80\05Z\DF\FE\BD 'tl$\C9\03\F3\E1\8D\C3}\98'@\08\B8\8Cj\E9\BB\1A:\D6\86\83^rA\CE\85<\D2\B3\FC\13\CE7\81\9EL\1C{e\D3\E6\A6\00\F5Z\95C^\81\CF`\A2#\FC6\A7]zL\06\91n\F6W\EE6\CB\06\EA\F5=\95I\CB\A7\DD\81\DF\80\09J\97M\A8\22r\A1\7F\C4pVp\E8 \10\18\8F.`\07\E7h\1A\82]2\A2", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_dh1024dsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dh1024dsa() #0 {
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
  br label %33

8:                                                ; preds = %0
  %9 = call i32* @BN_bin2bn(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @get_dh1024dsa.dh1024_p, i64 0, i64 0), i32 128, i32* null)
  store i32* %9, i32** %3, align 8
  %10 = call i32* @BN_bin2bn(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @get_dh1024dsa.dh1024_g, i64 0, i64 0), i32 128, i32* null)
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
  br label %33

29:                                               ; preds = %16
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @DH_set_length(i32* %30, i32 160)
  %32 = load i32*, i32** %2, align 8
  store i32* %32, i32** %1, align 8
  br label %33

33:                                               ; preds = %29, %22, %7
  %34 = load i32*, i32** %1, align 8
  ret i32* %34
}

declare dso_local i32* @DH_new(...) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @DH_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @DH_set_length(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
