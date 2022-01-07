; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_growalloc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_growalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTRDIFF_MAX = common dso_local global i32 0, align 4
@WORK_AROUND_QTBUG_53071 = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i32*)* @growalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @growalloc(i8* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %5, align 8
  br label %55

18:                                               ; preds = %4
  %19 = load i32, i32* @PTRDIFF_MAX, align 4
  %20 = load i32, i32* @WORK_AROUND_QTBUG_53071, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @SIZE_MAX, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @SIZE_MAX, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sdiv i32 %32, 3
  %34 = mul nsw i32 %33, 2
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @memory_exhausted(i32 %39)
  br label %41

41:                                               ; preds = %38, %29
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 1
  %45 = add nsw i32 %44, 1
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @size_product(i32 %51, i64 %52)
  %54 = call i8* @erealloc(i8* %49, i32 %53)
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %41, %16
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i32 @memory_exhausted(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @erealloc(i8*, i32) #1

declare dso_local i32 @size_product(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
