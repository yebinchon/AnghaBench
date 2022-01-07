; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_CreateOptsFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_CreateOptsFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"postmaster.opts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not create file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@OPTS_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @CreateOptsFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateOptsFile(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call i32* @fopen(i32 ptrtoint ([16 x i8]* @.str to i32), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %8, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @LOG, align 4
  %14 = call i32 @elog(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 ptrtoint ([16 x i8]* @.str to i32))
  store i32 0, i32* %4, align 4
  br label %44

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @fprintf(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  store i32 1, i32* %9, align 4
  br label %19

19:                                               ; preds = %31, %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @fprintf(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @fclose(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @LOG, align 4
  %42 = call i32 @elog(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 ptrtoint ([16 x i8]* @.str to i32))
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
