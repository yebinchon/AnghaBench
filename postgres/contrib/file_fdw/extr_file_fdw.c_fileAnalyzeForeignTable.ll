; ModuleID = '/home/carl/AnghaBench/postgres/contrib/file_fdw/extr_file_fdw.c_fileAnalyzeForeignTable.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/file_fdw/extr_file_fdw.c_fileAnalyzeForeignTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@BLCKSZ = common dso_local global i32 0, align 4
@file_acquire_sample_rows = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @fileAnalyzeForeignTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fileAnalyzeForeignTable(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.stat, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @RelationGetRelid(i32 %12)
  %14 = call i32 @fileGetOptions(i32 %13, i8** %8, i32* %9, i32** %10)
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @stat(i8* %19, %struct.stat* %11)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 (...) @errcode_for_file_access()
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BLCKSZ, align 4
  %32 = sub nsw i32 %31, 1
  %33 = add nsw i32 %30, %32
  %34 = load i32, i32* @BLCKSZ, align 4
  %35 = sdiv i32 %33, %34
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32*, i32** %7, align 8
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %28
  %43 = load i32, i32* @file_acquire_sample_rows, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @fileGetOptions(i32, i8**, i32*, i32**) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
