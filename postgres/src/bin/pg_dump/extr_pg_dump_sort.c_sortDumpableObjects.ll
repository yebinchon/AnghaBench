; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump_sort.c_sortDumpableObjects.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump_sort.c_sortDumpableObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@preDataBoundId = common dso_local global i8* null, align 8
@postDataBoundId = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sortDumpableObjects(i32** %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %45

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** @preDataBoundId, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** @postDataBoundId, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @pg_malloc(i32 %20)
  %22 = inttoptr i64 %21 to i32**
  store i32** %22, i32*** %9, align 8
  br label %23

23:                                               ; preds = %30, %14
  %24 = load i32**, i32*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32**, i32*** %9, align 8
  %27 = call i32 @TopoSort(i32** %24, i32 %25, i32** %26, i32* %10)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32**, i32*** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @findDependencyLoops(i32** %31, i32 %32, i32 %33)
  br label %23

35:                                               ; preds = %23
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32**, i32*** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcpy(i32** %36, i32** %37, i32 %41)
  %43 = load i32**, i32*** %9, align 8
  %44 = call i32 @free(i32** %43)
  br label %45

45:                                               ; preds = %35, %13
  ret void
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @TopoSort(i32**, i32, i32**, i32*) #1

declare dso_local i32 @findDependencyLoops(i32**, i32, i32) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
