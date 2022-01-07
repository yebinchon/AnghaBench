; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_qtext_load_file.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_qtext_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@PGSS_TEXT_FILE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@MaxAllocHugeSize = common dso_local global i64 0, align 8
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Could not allocate enough memory to read file \22%s\22.\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*)* @qtext_load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qtext_load_file(i64* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  store i64* %0, i64** %3, align 8
  %7 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = load i32, i32* @PG_BINARY, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @OpenTransientFile(i32 %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOENT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* @LOG, align 4
  %20 = call i32 (...) @errcode_for_file_access()
  %21 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @ereport(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %14
  store i8* null, i8** %2, align 8
  br label %99

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @fstat(i32 %26, %struct.stat* %6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* @LOG, align 4
  %31 = call i32 (...) @errcode_for_file_access()
  %32 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %33 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = call i32 @ereport(i32 %30, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @CloseTransientFile(i32 %35)
  store i8* null, i8** %2, align 8
  br label %99

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MaxAllocHugeSize, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @malloc(i64 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %4, align 8
  br label %48

47:                                               ; preds = %37
  store i8* null, i8** %4, align 8
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i8*, i8** %4, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32, i32* @LOG, align 4
  %53 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %57 = call i32 @errdetail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = call i32 @ereport(i32 %52, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @CloseTransientFile(i32 %59)
  store i8* null, i8** %2, align 8
  br label %99

61:                                               ; preds = %48
  store i64 0, i64* @errno, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @read(i32 %62, i8* %63, i64 %65)
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %61
  %71 = load i64, i64* @errno, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @LOG, align 4
  %75 = call i32 (...) @errcode_for_file_access()
  %76 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %77 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = call i32 @ereport(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %70
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @CloseTransientFile(i32 %82)
  store i8* null, i8** %2, align 8
  br label %99

84:                                               ; preds = %61
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @CloseTransientFile(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* @LOG, align 4
  %90 = call i32 (...) @errcode_for_file_access()
  %91 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %92 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = call i32 @ereport(i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %84
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %3, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i8*, i8** %4, align 8
  store i8* %98, i8** %2, align 8
  br label %99

99:                                               ; preds = %94, %79, %51, %29, %24
  %100 = load i8*, i8** %2, align 8
  ret i8* %100
}

declare dso_local i32 @OpenTransientFile(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @CloseTransientFile(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errdetail(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
