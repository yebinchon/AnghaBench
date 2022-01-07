; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_read_whole_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_read_whole_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@MaxAllocSize = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"file \22%s\22 is too large\00", align 1
@PG_BINARY_R = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"could not open file \22%s\22 for reading: %m\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @read_whole_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_whole_file(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %8)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @ERROR, align 4
  %14 = call i32 (...) @errcode_for_file_access()
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32 @ereport(i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MaxAllocSize, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = call i32 @ereport(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %24, %18
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @PG_BINARY_R, align 4
  %37 = call i32* @AllocateFile(i8* %35, i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32, i32* @ERROR, align 4
  %41 = call i32 (...) @errcode_for_file_access()
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = call i32 @ereport(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %31
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  %48 = call i64 @palloc(i64 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @fread(i8* %50, i32 1, i64 %51, i32* %52)
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @ferror(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %45
  %59 = load i32, i32* @ERROR, align 4
  %60 = call i32 (...) @errcode_for_file_access()
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = call i32 @ereport(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %45
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @FreeFile(i32* %65)
  %67 = load i8*, i8** %5, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %5, align 8
  ret i8* %72
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32* @AllocateFile(i8*, i32) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @FreeFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
