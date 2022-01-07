; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-s2k.c_pgp_s2k_process.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-s2k.c_pgp_s2k_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }

@PXE_PGP_UNSUPPORTED_CIPHER = common dso_local global i32 0, align 4
@PXE_PGP_BAD_S2K_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_s2k_process(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @pgp_get_cipher_key_size(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @PXE_PGP_UNSUPPORTED_CIPHER, align 4
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pgp_load_digest(i32 %25, i32** %11)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %59

31:                                               ; preds = %22
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %53 [
    i32 0, label %35
    i32 1, label %41
    i32 3, label %47
  ]

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @calc_s2k_simple(%struct.TYPE_6__* %36, i32* %37, i32* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %55

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @calc_s2k_salted(%struct.TYPE_6__* %42, i32* %43, i32* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %55

47:                                               ; preds = %31
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @calc_s2k_iter_salted(%struct.TYPE_6__* %48, i32* %49, i32* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  br label %55

53:                                               ; preds = %31
  %54 = load i32, i32* @PXE_PGP_BAD_S2K_MODE, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %47, %41, %35
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @px_md_free(i32* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %29, %20
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @pgp_get_cipher_key_size(i32) #1

declare dso_local i32 @pgp_load_digest(i32, i32**) #1

declare dso_local i32 @calc_s2k_simple(%struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i32 @calc_s2k_salted(%struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i32 @calc_s2k_iter_salted(%struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i32 @px_md_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
