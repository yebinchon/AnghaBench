; ModuleID = '/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_connectby.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_connectby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"connectby: SPI_connect returned %d\00", align 1
@work_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32*)* @connectby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @connectby(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32* %11, i32** %24, align 8
  store i32* null, i32** %25, align 8
  store i32 1, i32* %28, align 4
  %29 = call i32 (...) @SPI_connect()
  store i32 %29, i32* %26, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %12
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* %26, align 4
  %34 = call i32 @elog(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %12
  %36 = load i32, i32* %22, align 4
  %37 = call i32 @MemoryContextSwitchTo(i32 %36)
  store i32 %37, i32* %27, align 4
  %38 = load i32, i32* %23, align 4
  %39 = load i32, i32* @work_mem, align 4
  %40 = call i32* @tuplestore_begin_heap(i32 %38, i32 0, i32 %39)
  store i32* %40, i32** %25, align 8
  %41 = load i32, i32* %27, align 4
  %42 = call i32 @MemoryContextSwitchTo(i32 %41)
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32*, i32** %24, align 8
  %55 = load i32*, i32** %25, align 8
  %56 = call i32 @build_tuplestore_recursively(i8* %43, i8* %44, i8* %45, i8* %46, i8* %47, i8* %48, i8* %49, i32 0, i32* %28, i32 %50, i32 %51, i32 %52, i32 %53, i32* %54, i32* %55)
  %57 = call i32 (...) @SPI_finish()
  %58 = load i32*, i32** %25, align 8
  ret i32* %58
}

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @tuplestore_begin_heap(i32, i32, i32) #1

declare dso_local i32 @build_tuplestore_recursively(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
