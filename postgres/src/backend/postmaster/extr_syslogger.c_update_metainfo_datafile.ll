; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_update_metainfo_datafile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_update_metainfo_datafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Log_destination = common dso_local global i32 0, align 4
@LOG_DESTINATION_STDERR = common dso_local global i32 0, align 4
@LOG_DESTINATION_CSVLOG = common dso_local global i32 0, align 4
@LOG_METAINFO_DATAFILE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1
@pg_mode_mask = common dso_local global i32 0, align 4
@LOG_METAINFO_DATAFILE_TMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@PG_IOLBF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@last_file_name = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"stderr %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@last_csv_file_name = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"csvlog %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"could not rename file \22%s\22 to \22%s\22: %m\00", align 1
@_O_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_metainfo_datafile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_metainfo_datafile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @Log_destination, align 4
  %4 = load i32, i32* @LOG_DESTINATION_STDERR, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @Log_destination, align 4
  %9 = load i32, i32* @LOG_DESTINATION_CSVLOG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @LOG_METAINFO_DATAFILE, align 4
  %14 = call i64 @unlink(i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOENT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* @LOG, align 4
  %22 = call i32 (...) @errcode_for_file_access()
  %23 = load i32, i32* @LOG_METAINFO_DATAFILE, align 4
  %24 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @ereport(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %16, %12
  br label %104

27:                                               ; preds = %7, %0
  %28 = load i32, i32* @pg_mode_mask, align 4
  %29 = call i32 @umask(i32 %28)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* @LOG_METAINFO_DATAFILE_TMP, align 4
  %31 = call i32* @fopen(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %1, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @umask(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @PG_IOLBF, align 4
  %39 = call i32 @setvbuf(i32* %37, i32* null, i32 %38, i32 0)
  br label %46

40:                                               ; preds = %27
  %41 = load i32, i32* @LOG, align 4
  %42 = call i32 (...) @errcode_for_file_access()
  %43 = load i32, i32* @LOG_METAINFO_DATAFILE_TMP, align 4
  %44 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %104

46:                                               ; preds = %36
  %47 = load i8*, i8** @last_file_name, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i32, i32* @Log_destination, align 4
  %51 = load i32, i32* @LOG_DESTINATION_STDERR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i32*, i32** %1, align 8
  %56 = load i8*, i8** @last_file_name, align 8
  %57 = call i64 @fprintf(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* @LOG, align 4
  %61 = call i32 (...) @errcode_for_file_access()
  %62 = load i32, i32* @LOG_METAINFO_DATAFILE_TMP, align 4
  %63 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = call i32 @ereport(i32 %60, i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @fclose(i32* %65)
  br label %104

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %49, %46
  %69 = load i8*, i8** @last_csv_file_name, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load i32, i32* @Log_destination, align 4
  %73 = load i32, i32* @LOG_DESTINATION_CSVLOG, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load i32*, i32** %1, align 8
  %78 = load i8*, i8** @last_csv_file_name, align 8
  %79 = call i64 @fprintf(i32* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* @LOG, align 4
  %83 = call i32 (...) @errcode_for_file_access()
  %84 = load i32, i32* @LOG_METAINFO_DATAFILE_TMP, align 4
  %85 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = call i32 @ereport(i32 %82, i32 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i32 @fclose(i32* %87)
  br label %104

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %71, %68
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @fclose(i32* %91)
  %93 = load i32, i32* @LOG_METAINFO_DATAFILE_TMP, align 4
  %94 = load i32, i32* @LOG_METAINFO_DATAFILE, align 4
  %95 = call i64 @rename(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32, i32* @LOG, align 4
  %99 = call i32 (...) @errcode_for_file_access()
  %100 = load i32, i32* @LOG_METAINFO_DATAFILE_TMP, align 4
  %101 = load i32, i32* @LOG_METAINFO_DATAFILE, align 4
  %102 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %100, i32 %101)
  %103 = call i32 @ereport(i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %26, %40, %59, %81, %97, %90
  ret void
}

declare dso_local i64 @unlink(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @rename(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
