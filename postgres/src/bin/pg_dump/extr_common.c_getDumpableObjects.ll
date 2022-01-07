; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_getDumpableObjects.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_getDumpableObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allocedDumpIds = common dso_local global i32 0, align 4
@dumpIdMap = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getDumpableObjects(i32*** %0, i32* %1) #0 {
  %3 = alloca i32***, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32*** %0, i32**** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @allocedDumpIds, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = call i64 @pg_malloc(i32 %10)
  %12 = inttoptr i64 %11 to i32**
  %13 = load i32***, i32**** %3, align 8
  store i32** %12, i32*** %13, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %38, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @allocedDumpIds, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i32**, i32*** @dumpIdMap, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load i32**, i32*** @dumpIdMap, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32***, i32**** %3, align 8
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32*, i32** %32, i64 %35
  store i32* %30, i32** %36, align 8
  br label %37

37:                                               ; preds = %25, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %14

41:                                               ; preds = %14
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  ret void
}

declare dso_local i64 @pg_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
