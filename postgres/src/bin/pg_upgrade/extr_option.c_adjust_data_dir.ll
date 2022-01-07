; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_option.c_adjust_data_dir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_option.c_adjust_data_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@MAX_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s/postgresql.conf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s/PG_VERSION\00", align 1
@old_cluster = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"Finding the real data directory for the source cluster\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Finding the real data directory for the target cluster\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\22%s/postgres\22 -D \22%s\22 -C data_directory\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"could not get data directory using %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust_data_dir(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %10 = load i32, i32* @MAXPGPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @MAXPGPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = load i32, i32* @MAX_STRING, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @pg_strdup(i8* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = trunc i64 %11 to i32
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %82

34:                                               ; preds = %1
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = trunc i64 %11 to i32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %42, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @fclose(i32* %45)
  store i32 1, i32* %9, align 4
  br label %82

47:                                               ; preds = %34
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = icmp eq %struct.TYPE_4__* %48, @old_cluster
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @prep_status(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %54

52:                                               ; preds = %47
  %53 = call i32 @prep_status(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %50
  %55 = trunc i64 %15 to i32
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %16, i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %58, i8* %61)
  %63 = call i32* @popen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %63, i32** %8, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %54
  %66 = trunc i64 %18 to i32
  %67 = load i32*, i32** %8, align 8
  %68 = call i32* @fgets(i8* %19, i32 %66, i32* %67)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65, %54
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 @strerror(i32 %71)
  %73 = call i32 @pg_fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %16, i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @pclose(i32* %75)
  %77 = call i32 @pg_strip_crlf(i8* %19)
  %78 = call i8* @pg_strdup(i8* %19)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = call i32 (...) @check_ok()
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %74, %44, %33
  %83 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %9, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @pg_strdup(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @prep_status(i8*) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @pg_fatal(i8*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @pclose(i32*) #2

declare dso_local i32 @pg_strip_crlf(i8*) #2

declare dso_local i32 @check_ok(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
