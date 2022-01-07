; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_misc.c_stream_dump.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_misc.c_stream_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i32, %struct.MPOpts* }
%struct.MPOpts = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Error opening dump file: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@KEEP_PLAYING = common dso_local global i64 0, align 8
@MSGL_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Dumping %lld/%lld...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stream_dump(%struct.MPContext* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.MPOpts*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4096 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 2
  %16 = load %struct.MPOpts*, %struct.MPOpts** %15, align 8
  store %struct.MPOpts* %16, %struct.MPOpts** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_6__* @stream_open(i8* %17, i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %111

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = call i64 @stream_get_size(%struct.TYPE_6__* %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %29 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @fopen(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @mp_strerror(i32 %36)
  %38 = call i32 @MP_ERR(%struct.MPContext* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %3, align 4
  br label %111

39:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %85, %39
  %41 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %42 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KEEP_PLAYING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi i1 [ false, %40 ], [ %48, %46 ]
  br i1 %50, label %51, label %98

51:                                               ; preds = %49
  %52 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %53 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 1048576
  %61 = srem i32 %60, 2
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %68 = load i32, i32* @MSGL_STATUS, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @MP_MSG(%struct.MPContext* %67, i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %70, i64 %71)
  br label %73

73:                                               ; preds = %63, %56, %51
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds [4096 x i32], [4096 x i32]* %12, i64 0, i64 0
  %76 = call i32 @stream_read(%struct.TYPE_6__* %74, i32* %75, i32 16384)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %98

85:                                               ; preds = %73
  %86 = getelementptr inbounds [4096 x i32], [4096 x i32]* %12, i64 0, i64 0
  %87 = load i32, i32* %13, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @fwrite(i32* %86, i32 %87, i32 1, i32* %88)
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %95 = call i32 @mp_wakeup_core(%struct.MPContext* %94)
  %96 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %97 = call i32 @mp_idle(%struct.MPContext* %96)
  br label %40

98:                                               ; preds = %79, %49
  %99 = load i32*, i32** %9, align 8
  %100 = call i64 @fclose(i32* %99)
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = call i32 @free_stream(%struct.TYPE_6__* %105)
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 0, i32 -1
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %98, %34, %24
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_6__* @stream_open(i8*, i32) #1

declare dso_local i64 @stream_get_size(%struct.TYPE_6__*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @mp_strerror(i32) #1

declare dso_local i32 @MP_MSG(%struct.MPContext*, i32, i8*, i64, i64) #1

declare dso_local i32 @stream_read(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @mp_idle(%struct.MPContext*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @free_stream(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
