; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_directory.c__PrintFileData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_directory.c__PrintFileData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfp = common dso_local global i32 0, align 4
@PG_BINARY_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not open input file \22%s\22: %m\00", align 1
@ZLIB_OUT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"could not close data file: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @_PrintFileData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PrintFileData(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @cfp, align 4
  %9 = load i32, i32* @cfp, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %46

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @PG_BINARY_R, align 4
  %17 = call i32 @cfopen_read(i8* %15, i32 %16)
  store i32 %17, i32* @cfp, align 4
  %18 = load i32, i32* @cfp, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i64, i64* @ZLIB_OUT_SIZE, align 8
  %25 = call i8* @pg_malloc(i64 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i64, i64* @ZLIB_OUT_SIZE, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %33, %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @cfp, align 4
  %31 = call i64 @cfread(i8* %28, i64 %29, i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @ahwrite(i8* %34, i32 1, i64 %35, i32* %36)
  br label %27

38:                                               ; preds = %27
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* @cfp, align 4
  %42 = call i64 @cfclose(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %13, %44, %38
  ret void
}

declare dso_local i32 @cfopen_read(i8*, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i8* @pg_malloc(i64) #1

declare dso_local i64 @cfread(i8*, i64, i32) #1

declare dso_local i32 @ahwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @cfclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
