; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_pg_rewind.c_getTimelineHistory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_pg_rewind.c_getTimelineHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@ControlFile_source = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@ControlFile_target = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@datadir_target = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid control file\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Source timeline history:\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Target timeline history:\00", align 1
@targetNentries = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%d: %X/%X - %X/%X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, i32*)* @getTimelineHistory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @getTimelineHistory(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = call i64 @pg_malloc(i32 12)
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @InvalidXLogRecPtr, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 1, i32* %29, align 4
  br label %58

30:                                               ; preds = %2
  %31 = load i32, i32* @MAXPGPATH, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %7, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @TLHistoryFilePath(i8* %34, i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, @ControlFile_source
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = call i8* @fetchFile(i8* %34, i32* null)
  store i8* %40, i8** %9, align 8
  br label %50

41:                                               ; preds = %30
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, @ControlFile_target
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @datadir_target, align 4
  %46 = call i8* @slurpFile(i32 %45, i8* %34, i32* null)
  store i8* %46, i8** %9, align 8
  br label %49

47:                                               ; preds = %41
  %48 = call i32 @pg_fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = call %struct.TYPE_10__* @rewind_parseTimeLineHistory(i8* %51, i32 %52, i32* %53)
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %5, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @pg_free(i8* %55)
  %57 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %57)
  br label %58

58:                                               ; preds = %50, %18
  %59 = load i64, i64* @debug, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %58
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = icmp eq %struct.TYPE_11__* %62, @ControlFile_source
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @pg_log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %74

66:                                               ; preds = %61
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = icmp eq %struct.TYPE_11__* %67, @ControlFile_target
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 (i8*, ...) @pg_log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %73

71:                                               ; preds = %66
  %72 = call i32 @Assert(i32 0)
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %64
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %102, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @targetNentries, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %75
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %82
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %11, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 32
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 32
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @pg_log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %90, i32 %93, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %79
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %75

105:                                              ; preds = %75
  br label %106

106:                                              ; preds = %105, %58
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %107
}

declare dso_local i64 @pg_malloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TLHistoryFilePath(i8*, i32) #1

declare dso_local i8* @fetchFile(i8*, i32*) #1

declare dso_local i8* @slurpFile(i32, i8*, i32*) #1

declare dso_local i32 @pg_fatal(i8*) #1

declare dso_local %struct.TYPE_10__* @rewind_parseTimeLineHistory(i8*, i32, i32*) #1

declare dso_local i32 @pg_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pg_log_debug(i8*, ...) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
