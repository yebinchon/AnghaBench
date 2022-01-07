; ModuleID = '/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_cmp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@IS_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @gmp_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmp_cmp(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @FETCH_GMP_ZVAL(i32 %13, i32* %14, i64 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @Z_TYPE_P(i32* %18)
  %20 = load i64, i64* @IS_LONG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @FETCH_GMP_ZVAL_DEP(i32 %25, i32* %26, i64 %28, i64 %30)
  br label %32

32:                                               ; preds = %24, %22
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @Z_LVAL_P(i32* %37)
  %39 = call i32 @mpz_cmp_si(i32 %36, i32 %38)
  store i32 %39, i32* %12, align 4
  br label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mpz_cmp(i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @FREE_GMP_TEMP(i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @FREE_GMP_TEMP(i64 %49)
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @RETURN_LONG(i32 %51)
  ret void
}

declare dso_local i32 @FETCH_GMP_ZVAL(i32, i32*, i64) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @FETCH_GMP_ZVAL_DEP(i32, i32*, i64, i64) #1

declare dso_local i32 @mpz_cmp_si(i32, i32) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @mpz_cmp(i32, i32) #1

declare dso_local i32 @FREE_GMP_TEMP(i64) #1

declare dso_local i32 @RETURN_LONG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
