; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_directory.c__LoadBlobs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_directory.c__LoadBlobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"blobs.toc\00", align 1
@PG_BINARY_R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"could not open large object TOC file \22%s\22 for input: %m\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%u %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"invalid line in large object TOC file \22%s\22: \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"error reading large object TOC file \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"could not close large object TOC file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @_LoadBlobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_LoadBlobs(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  %15 = load i32, i32* @MAXPGPATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* @MAXPGPATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = call i32 @StartRestoreBlobs(%struct.TYPE_15__* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = call i32 @setFilePath(%struct.TYPE_15__* %24, i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @PG_BINARY_R, align 4
  %27 = call i32* @cfopen_read(i8* %18, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %36

36:                                               ; preds = %34, %1
  br label %37

37:                                               ; preds = %56, %36
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @MAXPGPATH, align 4
  %42 = call i32* @cfgets(i32* %40, i8* %21, i32 %41)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %77

44:                                               ; preds = %37
  %45 = load i32, i32* @MAXPGPATH, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %8, align 8
  %48 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %9, align 8
  %49 = load i32, i32* @MAXPGPATH, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %10, align 8
  %52 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %3, i8* %48)
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %21)
  br label %56

56:                                               ; preds = %54, %44
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @StartRestoreBlob(%struct.TYPE_15__* %57, i32 %58, i32 %64)
  %66 = load i32, i32* @MAXPGPATH, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @snprintf(i8* %51, i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %69, i8* %48)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = call i32 @_PrintFileData(%struct.TYPE_15__* %71, i8* %51)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @EndRestoreBlob(%struct.TYPE_15__* %73, i32 %74)
  %76 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %76)
  br label %37

77:                                               ; preds = %37
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @cfeof(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %18)
  br label %85

85:                                               ; preds = %83, %77
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @cfclose(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %18)
  br label %93

93:                                               ; preds = %91, %85
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  store i32* null, i32** %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = call i32 @EndRestoreBlobs(%struct.TYPE_15__* %96)
  %98 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %98)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StartRestoreBlobs(%struct.TYPE_15__*) #2

declare dso_local i32 @setFilePath(%struct.TYPE_15__*, i8*, i8*) #2

declare dso_local i32* @cfopen_read(i8*, i32) #2

declare dso_local i32 @fatal(i8*, i8*, ...) #2

declare dso_local i32* @cfgets(i32*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #2

declare dso_local i32 @StartRestoreBlob(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @_PrintFileData(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @EndRestoreBlob(%struct.TYPE_15__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @cfeof(i32*) #2

declare dso_local i64 @cfclose(i32*) #2

declare dso_local i32 @EndRestoreBlobs(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
