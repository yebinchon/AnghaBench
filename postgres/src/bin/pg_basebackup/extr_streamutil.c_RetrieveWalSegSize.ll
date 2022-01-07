; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_RetrieveWalSegSize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_RetrieveWalSegSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINIMUM_VERSION_FOR_SHOW_CMD = common dso_local global i64 0, align 8
@DEFAULT_XLOG_SEG_SIZE = common dso_local global i32 0, align 4
@WalSegSz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SHOW wal_segment_size\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"could not send replication command \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"could not fetch WAL segment size: got %d rows and %d fields, expected %d rows and %d or more fields\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"WAL segment size could not be parsed\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.7 = private unnamed_addr constant [113 x i8] c"WAL segment size must be a power of two between 1 MB and 1 GB, but the remote server reported a value of %d byte\00", align 1
@.str.8 = private unnamed_addr constant [114 x i8] c"WAL segment size must be a power of two between 1 MB and 1 GB, but the remote server reported a value of %d bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RetrieveWalSegSize(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @PQserverVersion(i32* %12)
  %14 = load i64, i64* @MINIMUM_VERSION_FOR_SHOW_CMD, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @DEFAULT_XLOG_SEG_SIZE, align 4
  store i32 %17, i32* @WalSegSz, align 4
  store i32 1, i32* %2, align 4
  br label %83

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @PQexec(i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @PQresultStatus(i32* %21)
  %23 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @PQerrorMessage(i32* %26)
  %28 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @PQclear(i32* %29)
  store i32 0, i32* %2, align 4
  br label %83

31:                                               ; preds = %18
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @PQntuples(i32* %32)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @PQnfields(i32* %36)
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %35, %31
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @PQntuples(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @PQnfields(i32* %42)
  %44 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %43, i32 1, i32 1)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @PQclear(i32* %45)
  store i32 0, i32* %2, align 4
  br label %83

47:                                               ; preds = %35
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @PQgetvalue(i32* %48, i32 0, i32 0)
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %51 = call i32 @sscanf(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %6, i8* %50)
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %83

55:                                               ; preds = %47
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1048576, i32* %7, align 4
  br label %66

60:                                               ; preds = %55
  %61 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1073741824, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %60
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* @WalSegSz, align 4
  %70 = load i32, i32* @WalSegSz, align 4
  %71 = call i32 @IsValidWalSegSize(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @WalSegSz, align 4
  %75 = call i32 @ngettext(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load i32, i32* @WalSegSz, align 4
  %79 = call i32 (i8*, ...) @pg_log_error(i8* %77, i32 %78)
  store i32 0, i32* %2, align 4
  br label %83

80:                                               ; preds = %66
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @PQclear(i32* %81)
  store i32 1, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %73, %53, %39, %25, %16
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PQserverVersion(i32*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i8*) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @IsValidWalSegSize(i32) #1

declare dso_local i32 @ngettext(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
