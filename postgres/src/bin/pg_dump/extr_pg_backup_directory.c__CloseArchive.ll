; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_directory.c__CloseArchive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_directory.c__CloseArchive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32*, i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32* }

@archModeWrite = common dso_local global i64 0, align 8
@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"toc.dat\00", align 1
@PG_BINARY_W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not open output file \22%s\22: %m\00", align 1
@archTar = common dso_local global i32 0, align 4
@archDirectory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not close TOC file: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @_CloseArchive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_CloseArchive(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @archModeWrite, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %74

16:                                               ; preds = %1
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = call i32 @setFilePath(%struct.TYPE_11__* %21, i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = call i32 @ParallelBackupStart(%struct.TYPE_11__* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @PG_BINARY_W, align 4
  %28 = call i32* @cfopen_write(i8* %20, i32 %27, i32 0)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* @archTar, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = call i32 @WriteHead(%struct.TYPE_11__* %40)
  %42 = load i32, i32* @archDirectory, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = call i32 @WriteToc(%struct.TYPE_11__* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @cfclose(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %33
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WriteDataChunks(%struct.TYPE_11__* %53, i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ParallelBackupEnd(%struct.TYPE_11__* %58, i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %52
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @fsync_dir_recurse(i32 %70)
  br label %72

72:                                               ; preds = %67, %52
  %73 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %73)
  br label %74

74:                                               ; preds = %72, %1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setFilePath(%struct.TYPE_11__*, i8*, i8*) #2

declare dso_local i32 @ParallelBackupStart(%struct.TYPE_11__*) #2

declare dso_local i32* @cfopen_write(i8*, i32, i32) #2

declare dso_local i32 @fatal(i8*, ...) #2

declare dso_local i32 @WriteHead(%struct.TYPE_11__*) #2

declare dso_local i32 @WriteToc(%struct.TYPE_11__*) #2

declare dso_local i64 @cfclose(i32*) #2

declare dso_local i32 @WriteDataChunks(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @ParallelBackupEnd(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @fsync_dir_recurse(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
