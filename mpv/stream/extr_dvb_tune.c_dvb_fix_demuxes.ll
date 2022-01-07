; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_fix_demuxes.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_fix_demuxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"/dev/dvb/adapter%d/demux0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"FIX %d -> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"FIX, CLOSE fd(%d): %d\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"FIX, OPEN fd(%d): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ERROR OPENING DEMUX 0: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_fix_demuxes(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %9, align 8
  %18 = trunc i64 %12 to i32
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snprintf(i8* %14, i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @MP_VERBOSE(%struct.TYPE_9__* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %68, %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @MP_VERBOSE(%struct.TYPE_9__* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @close(i32 %66)
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %6, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %128

75:                                               ; preds = %2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %124, %75
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %127

83:                                               ; preds = %79
  %84 = load i32, i32* @O_RDWR, align 4
  %85 = load i32, i32* @O_NONBLOCK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @O_CLOEXEC, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @open(i8* %14, i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @MP_VERBOSE(%struct.TYPE_9__* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp ult i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %83
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 @MP_ERR(%struct.TYPE_9__* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %129

118:                                              ; preds = %83
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %79

127:                                              ; preds = %79
  br label %128

128:                                              ; preds = %127, %71
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %129

129:                                              ; preds = %128, %114
  %130 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_9__*, i8*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @MP_ERR(%struct.TYPE_9__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
