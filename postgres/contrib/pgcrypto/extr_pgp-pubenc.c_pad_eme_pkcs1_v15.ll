; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubenc.c_pad_eme_pkcs1_v15.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubenc.c_pad_eme_pkcs1_v15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PXE_BUG = common dso_local global i32 0, align 4
@PXE_NO_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i64**)* @pad_eme_pkcs1_v15 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pad_eme_pkcs1_v15(i64* %0, i32 %1, i32 %2, i64** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64** %3, i64*** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sub nsw i32 %13, 2
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @PXE_BUG, align 4
  store i32 %20, i32* %5, align 4
  br label %86

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = call i64* @px_alloc(i32 %22)
  store i64* %23, i64** %10, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 2, i64* %25, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @pg_strong_random(i64* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load i64*, i64** %10, align 8
  %33 = call i32 @px_free(i64* %32)
  %34 = load i32, i32* @PXE_NO_RANDOM, align 4
  store i32 %34, i32* %5, align 4
  br label %86

35:                                               ; preds = %21
  %36 = load i64*, i64** %10, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  store i64* %37, i64** %11, align 8
  br label %38

38:                                               ; preds = %69, %35
  %39 = load i64*, i64** %11, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = icmp ult i64* %39, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %38
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i64*, i64** %11, align 8
  %52 = call i32 @pg_strong_random(i64* %51, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i64*, i64** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @px_memset(i64* %55, i32 0, i32 %56)
  %58 = load i64*, i64** %10, align 8
  %59 = call i32 @px_free(i64* %58)
  %60 = load i32, i32* @PXE_NO_RANDOM, align 4
  store i32 %60, i32* %5, align 4
  br label %86

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i64*, i64** %11, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64*, i64** %11, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %11, align 8
  br label %69

69:                                               ; preds = %66, %62
  br label %38

70:                                               ; preds = %38
  %71 = load i64*, i64** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  store i64 0, i64* %75, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load i64*, i64** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @memcpy(i64* %80, i64* %81, i32 %82)
  %84 = load i64*, i64** %10, align 8
  %85 = load i64**, i64*** %9, align 8
  store i64* %84, i64** %85, align 8
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %70, %54, %31, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64* @px_alloc(i32) #1

declare dso_local i32 @pg_strong_random(i64*, i32) #1

declare dso_local i32 @px_free(i64*) #1

declare dso_local i32 @px_memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
