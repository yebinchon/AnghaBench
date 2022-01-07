; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_mdc_read.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_mdc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"mdc_read: unexpected eof\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32**, i32*, i32)* @mdc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc_read(i8* %0, i32* %1, i32 %2, i32** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %15, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22, %6
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32**, i32*** %11, align 8
  %31 = call i32 @pullf_read(i32* %28, i32 %29, i32** %30)
  store i32 %31, i32* %7, align 4
  br label %56

32:                                               ; preds = %22
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32**, i32*** %11, align 8
  %36 = call i32 @pullf_read(i32* %33, i32 %34, i32** %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %7, align 4
  br label %56

41:                                               ; preds = %32
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = call i32 @px_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %46, i32* %7, align 4
  br label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32**, i32*** %11, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @px_md_update(i32 %50, i32* %52, i32 %53)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %47, %44, %39, %27
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @pullf_read(i32*, i32, i32**) #1

declare dso_local i32 @px_debug(i8*) #1

declare dso_local i32 @px_md_update(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
