; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-fsstubs.c_newLOfd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-fsstubs.c_newLOfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cookies_size = common dso_local global i32 0, align 4
@cookies = common dso_local global i32** null, align 8
@fscxt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @newLOfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newLOfd(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @cookies_size, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load i32**, i32*** @cookies, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  %19 = load i32**, i32*** @cookies, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  store i32* %18, i32** %22, align 8
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load i32, i32* @cookies_size, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  store i32 64, i32* %5, align 4
  %32 = load i32, i32* @fscxt, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @MemoryContextAllocZero(i32 %32, i32 %36)
  %38 = inttoptr i64 %37 to i32**
  store i32** %38, i32*** @cookies, align 8
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* @cookies_size, align 4
  br label %63

40:                                               ; preds = %28
  %41 = load i32, i32* @cookies_size, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @cookies_size, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %5, align 4
  %44 = load i32**, i32*** @cookies, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = call i64 @repalloc(i32** %44, i32 %48)
  %50 = inttoptr i64 %49 to i32**
  store i32** %50, i32*** @cookies, align 8
  %51 = load i32**, i32*** @cookies, align 8
  %52 = load i32, i32* @cookies_size, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @cookies_size, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @MemSet(i32** %54, i32 0, i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* @cookies_size, align 4
  br label %63

63:                                               ; preds = %40, %31
  %64 = load i32**, i32*** @cookies, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @Assert(i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32**, i32*** @cookies, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  store i32* %72, i32** %76, align 8
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %63, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i64 @repalloc(i32**, i32) #1

declare dso_local i32 @MemSet(i32**, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
