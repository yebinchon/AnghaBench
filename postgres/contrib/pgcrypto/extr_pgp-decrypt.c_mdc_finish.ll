; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_mdc_finish.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_mdc_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@PXE_BUG = common dso_local global i32 0, align 4
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"no mdc\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"mdc_finish: read failed, res=%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"mdc_finish: mdc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @mdc_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc_finish(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x i32], align 16
  %10 = alloca [20 x i32], align 16
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @PXE_BUG, align 4
  store i32 %17, i32* %4, align 4
  br label %68

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 20
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %29 = call i32 @pullf_read_max(i32* %26, i32 %27, i32** %11, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %68

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %39, i32* %4, align 4
  br label %68

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 20
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %46, i32* %4, align 4
  br label %68

47:                                               ; preds = %40
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %52 = call i32 @px_md_finish(i32 %50, i32* %51)
  %53 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @memcmp(i32* %53, i32* %54, i32 20)
  store i32 %55, i32* %8, align 4
  %56 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %57 = call i32 @px_memset(i32* %56, i32 0, i32 20)
  %58 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %59 = call i32 @px_memset(i32* %58, i32 0, i32 80)
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %47
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %62, %43, %37, %32, %21, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @pullf_read_max(i32*, i32, i32**, i32*) #1

declare dso_local i32 @px_debug(i8*, ...) #1

declare dso_local i32 @px_md_finish(i32, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @px_memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
