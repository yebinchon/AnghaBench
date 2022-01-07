; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_search_directory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_search_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@WalSegSz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"WAL segment size must be a power of two between 1 MB and 1 GB, but the WAL file \22%s\22 header specifies %d byte\00", align 1
@.str.1 = private unnamed_addr constant [111 x i8] c"WAL segment size must be a power of two between 1 MB and 1 GB, but the WAL file \22%s\22 header specifies %d bytes\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"could not read file \22%s\22: read %d of %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @search_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_directory(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @open_file_in_directory(i8* %15, i8* %16)
  store i32 %17, i32* %6, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32* @opendir(i8* %19)
  store i32* %20, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32*, i32** %7, align 8
  %25 = call %struct.dirent* @readdir(i32* %24)
  store %struct.dirent* %25, %struct.dirent** %8, align 8
  %26 = icmp ne %struct.dirent* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.dirent*, %struct.dirent** %8, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IsXLogFileName(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.dirent*, %struct.dirent** %8, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @open_file_in_directory(i8* %34, i8* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.dirent*, %struct.dirent** %8, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %5, align 8
  br label %43

42:                                               ; preds = %27
  br label %23

43:                                               ; preds = %33, %23
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @closedir(i32* %44)
  br label %46

46:                                               ; preds = %43, %18
  br label %47

47:                                               ; preds = %46, %14
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @XLOG_BLCKSZ, align 4
  %55 = call i32 @read(i32 %51, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @XLOG_BLCKSZ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %11, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* @WalSegSz, align 4
  %67 = load i32, i32* @WalSegSz, align 4
  %68 = call i32 @IsValidWalSegSize(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @WalSegSz, align 4
  %72 = call i32 @ngettext(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* @WalSegSz, align 4
  %77 = call i32 (i8*, i8*, i32, ...) @fatal_error(i8* %74, i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %59
  br label %93

79:                                               ; preds = %50
  %80 = load i64, i64* @errno, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i8*, i8** %5, align 8
  %84 = load i64, i64* @errno, align 8
  %85 = call i32 @strerror(i64 %84)
  %86 = call i32 (i8*, i8*, i32, ...) @fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %83, i32 %85)
  br label %92

87:                                               ; preds = %79
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @XLOG_BLCKSZ, align 4
  %91 = call i32 (i8*, i8*, i32, ...) @fatal_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @close(i32 %94)
  store i32 1, i32* %3, align 4
  br label %97

96:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @open_file_in_directory(i8*, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @IsXLogFileName(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @IsValidWalSegSize(i32) #1

declare dso_local i32 @fatal_error(i8*, i8*, i32, ...) #1

declare dso_local i32 @ngettext(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
