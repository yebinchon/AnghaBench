; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_save_u16.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_save_u16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_F_TLS1_SAVE_U16 = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_save_u16(i32* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @PACKET_remaining(i32* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  %18 = and i64 %17, 1
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %66

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = lshr i64 %22, 1
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = mul i64 %24, 4
  %26 = call i32* @OPENSSL_malloc(i64 %25)
  store i32* %26, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @SSL_F_TLS1_SAVE_U16, align 4
  %30 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %31 = call i32 @SSLerr(i32 %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %66

32:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @PACKET_get_net_2(i32* %38, i32* %8)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %10, align 8
  br label %33

51:                                               ; preds = %41
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @OPENSSL_free(i32* %56)
  store i32 0, i32* %4, align 4
  br label %66

58:                                               ; preds = %51
  %59 = load i32**, i32*** %6, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @OPENSSL_free(i32* %60)
  %62 = load i32*, i32** %11, align 8
  %63 = load i32**, i32*** %6, align 8
  store i32* %62, i32** %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %55, %28, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i64) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
