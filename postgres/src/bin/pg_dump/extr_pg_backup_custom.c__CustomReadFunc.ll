; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_custom.c__CustomReadFunc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_custom.c__CustomReadFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8**, i64*)* @_CustomReadFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_CustomReadFunc(i32* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @ReadInt(i32* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %36

14:                                               ; preds = %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @free(i8* %21)
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @pg_malloc(i64 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = load i8**, i8*** %6, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %19, %14
  %30 = load i32*, i32** %5, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @_ReadBuf(i32* %30, i8* %32, i64 %33)
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %29, %13
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i64 @ReadInt(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @pg_malloc(i64) #1

declare dso_local i32 @_ReadBuf(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
