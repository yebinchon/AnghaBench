; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_writeTimeLineHistoryFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_writeTimeLineHistoryFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* (...)*, i64 (i32*, i32)*, i64 (i32*, i8*, i32)*, i32* (i8*, i8*, i32)* }

@MAXFNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"server reported unexpected history file name for timeline %u: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"could not create timeline history file \22%s\22: %s\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"could not write timeline history file \22%s\22: %s\00", align 1
@CLOSE_UNLINK = common dso_local global i32 0, align 4
@CLOSE_NORMAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*)* @writeTimeLineHistoryFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeTimeLineHistoryFile(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @MAXFNAMELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @TLHistoryFileName(i8* %18, i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strcmp(i8* %18, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @pg_log_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

32:                                               ; preds = %3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32* (i8*, i8*, i32)*, i32* (i8*, i8*, i32)** %36, align 8
  %38 = call i32* %37(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8* (...)*, i8* (...)** %45, align 8
  %47 = call i8* (...) %46()
  %48 = call i32 @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %47)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

49:                                               ; preds = %32
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i64 (i32*, i8*, i32)*, i64 (i32*, i8*, i32)** %53, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 %54(i32* %55, i8* %56, i32 %57)
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %49
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8* (...)*, i8* (...)** %66, align 8
  %68 = call i8* (...) %67()
  %69 = call i32 @pg_log_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %18, i8* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64 (i32*, i32)*, i64 (i32*, i32)** %73, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* @CLOSE_UNLINK, align 4
  %77 = call i64 %74(i32* %75, i32 %76)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

78:                                               ; preds = %49
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64 (i32*, i32)*, i64 (i32*, i32)** %82, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* @CLOSE_NORMAL, align 4
  %86 = call i64 %83(i32* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i8* (...)*, i8* (...)** %92, align 8
  %94 = call i8* (...) %93()
  %95 = call i32 @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %18, i8* %94)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

96:                                               ; preds = %78
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = call i32 @mark_file_as_archived(%struct.TYPE_6__* %102, i8* %18)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %96
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %108

108:                                              ; preds = %107, %105, %88, %62, %41, %26
  %109 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TLHistoryFileName(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pg_log_error(i8*, i8*, i8*) #1

declare dso_local i32 @mark_file_as_archived(%struct.TYPE_6__*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
