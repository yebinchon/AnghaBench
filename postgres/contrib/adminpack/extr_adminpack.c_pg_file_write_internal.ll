; ModuleID = '/home/carl/AnghaBench/postgres/contrib/adminpack/extr_adminpack.c_pg_file_write_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/adminpack/extr_adminpack.c_pg_file_write_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"file \22%s\22 exists\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"could not open file \22%s\22 for writing: %m\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @pg_file_write_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pg_file_write_internal(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @convert_and_check_filename(i32* %11, i32 0)
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @stat(i8* %16, %struct.stat* %10)
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_DUPLICATE_FILE, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @ereport(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i8*, i8** %8, align 8
  %27 = call i32* @AllocateFile(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %7, align 8
  br label %31

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = call i32* @AllocateFile(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %30, i32** %7, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 (...) @errcode_for_file_access()
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @VARDATA_ANY(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @VARSIZE_ANY_EXHDR(i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @fwrite(i32 %42, i32 1, i64 %44, i32* %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @VARSIZE_ANY_EXHDR(i32* %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %40
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 @FreeFile(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51, %40
  %56 = load i32, i32* @ERROR, align 4
  %57 = call i32 (...) @errcode_for_file_access()
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = call i32 @ereport(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i64, i64* %9, align 8
  ret i64 %62
}

declare dso_local i8* @convert_and_check_filename(i32*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32* @AllocateFile(i8*, i8*) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i64 @fwrite(i32, i32, i64, i32*) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

declare dso_local i64 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i64 @FreeFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
