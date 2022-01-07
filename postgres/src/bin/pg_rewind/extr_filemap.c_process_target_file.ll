; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_filemap.c_process_target_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_filemap.c_process_target_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32* }
%struct.TYPE_10__ = type { i8*, i64, i8*, %struct.TYPE_10__*, i32, %struct.TYPE_8__, i64, i32, i64 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@filemap = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@datadir_target = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"source file list is empty\00", align 1
@path_cmp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"pg_wal\00", align 1
@FILE_TYPE_SYMLINK = common dso_local global i64 0, align 8
@FILE_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@FILE_ACTION_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_target_file(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @filemap, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %15, align 8
  %22 = trunc i64 %18 to i32
  %23 = load i8*, i8** @datadir_target, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @snprintf(i8* %20, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = call i64 @lstat(i8* %20, %struct.stat* %12)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %34

34:                                               ; preds = %32, %28
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %49 = call i32 @filemap_list_to_array(%struct.TYPE_9__* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @path_cmp, align 4
  %63 = call i32 @qsort(i32* %58, i32 %61, i32 8, i32 %62)
  br label %64

64:                                               ; preds = %47, %35
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @FILE_TYPE_SYMLINK, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* @FILE_TYPE_DIRECTORY, align 8
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %72, %68, %64
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i8* %75, i8** %76, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %14, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @path_cmp, align 4
  %84 = call i32* @bsearch(%struct.TYPE_10__** %14, i32* %79, i32 %82, i32 8, i32 %83)
  %85 = icmp ne i32* %84, null
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %150, label %89

89:                                               ; preds = %74
  %90 = call %struct.TYPE_10__* @pg_malloc(i32 80)
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %16, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i8* @pg_strdup(i8* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 8
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* @FILE_ACTION_REMOVE, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 6
  store i64 0, i64* %105, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %89
  %109 = load i8*, i8** %8, align 8
  %110 = call i8* @pg_strdup(i8* %109)
  br label %112

111:                                              ; preds = %89
  br label %112

112:                                              ; preds = %111, %108
  %113 = phi i8* [ %110, %108 ], [ null, %111 ]
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i32* null, i32** %120, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @isRelDataFile(i8* %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = icmp eq %struct.TYPE_10__* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %112
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %135, align 8
  br label %142

136:                                              ; preds = %112
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %141, align 8
  br label %142

142:                                              ; preds = %136, %132
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %145, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  br label %151

150:                                              ; preds = %74
  br label %151

151:                                              ; preds = %150, %142
  %152 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %152)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @pg_fatal(i8*, ...) #2

declare dso_local i32 @filemap_list_to_array(%struct.TYPE_9__*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @qsort(i32*, i32, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @bsearch(%struct.TYPE_10__**, i32*, i32, i32, i32) #2

declare dso_local %struct.TYPE_10__* @pg_malloc(i32) #2

declare dso_local i8* @pg_strdup(i8*) #2

declare dso_local i32 @isRelDataFile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
