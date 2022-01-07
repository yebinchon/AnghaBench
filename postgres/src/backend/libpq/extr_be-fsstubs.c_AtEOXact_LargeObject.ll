; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-fsstubs.c_AtEOXact_LargeObject.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-fsstubs.c_AtEOXact_LargeObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fscxt = common dso_local global i32* null, align 8
@cookies_size = common dso_local global i32 0, align 4
@cookies = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOXact_LargeObject(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @fscxt, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %41

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @cookies_size, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i32**, i32*** @cookies, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32**, i32*** @cookies, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @inv_close(i32* %27)
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @deleteLOfd(i32 %30)
  br label %32

32:                                               ; preds = %29, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %8
  store i32** null, i32*** @cookies, align 8
  store i32 0, i32* @cookies_size, align 4
  %37 = load i32*, i32** @fscxt, align 8
  %38 = call i32 @MemoryContextDelete(i32* %37)
  store i32* null, i32** @fscxt, align 8
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @close_lo_relation(i32 %39)
  br label %41

41:                                               ; preds = %36, %6
  ret void
}

declare dso_local i32 @inv_close(i32*) #1

declare dso_local i32 @deleteLOfd(i32) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

declare dso_local i32 @close_lo_relation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
