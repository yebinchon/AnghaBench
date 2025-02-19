; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-s2k.c_pgp_s2k_fill.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-s2k.c_pgp_s2k_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@PGP_S2K_SALT = common dso_local global i32 0, align 4
@PXE_NO_RANDOM = common dso_local global i32 0, align 4
@PXE_PGP_BAD_S2K_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_s2k_fill(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %52 [
    i32 128, label %21
    i32 129, label %22
    i32 130, label %32
  ]

21:                                               ; preds = %4
  br label %54

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @PGP_S2K_SALT, align 4
  %27 = call i32 @pg_strong_random(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @PXE_NO_RANDOM, align 4
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %22
  br label %54

32:                                               ; preds = %4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @PGP_S2K_SALT, align 4
  %37 = call i32 @pg_strong_random(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @PXE_NO_RANDOM, align 4
  store i32 %40, i32* %5, align 4
  br label %56

41:                                               ; preds = %32
  %42 = call i32 @pg_strong_random(i32* %11, i32 1)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @PXE_NO_RANDOM, align 4
  store i32 %45, i32* %5, align 4
  br label %56

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @decide_s2k_iter(i32 %47, i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %54

52:                                               ; preds = %4
  %53 = load i32, i32* @PXE_PGP_BAD_S2K_MODE, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %46, %31, %21
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %44, %39, %29
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @pg_strong_random(i32*, i32) #1

declare dso_local i32 @decide_s2k_iter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
