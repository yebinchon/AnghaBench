; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-internal.c_mp_px_rand.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-internal.c_mp_px_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PXE_NO_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @mp_px_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_px_rand(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 7
  %11 = sdiv i32 %10, 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 7
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32* @px_alloc(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pg_strong_random(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @px_free(i32* %21)
  %23 = load i32, i32* @PXE_NO_RANDOM, align 4
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 8, %28
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 1, %35
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %46

41:                                               ; preds = %24
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 128
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %27
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @mp_int_read_unsigned(i32* %47, i32* %48, i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @px_free(i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32* @px_alloc(i32) #1

declare dso_local i32 @pg_strong_random(i32*, i32) #1

declare dso_local i32 @px_free(i32*) #1

declare dso_local i32 @mp_int_read_unsigned(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
