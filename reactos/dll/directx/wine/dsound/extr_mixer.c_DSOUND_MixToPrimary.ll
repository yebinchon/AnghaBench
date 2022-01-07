; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_MixToPrimary.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_MixToPrimary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i64 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"(%d,%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"MixToPrimary for %p, state=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Checking %p, mixlen=%d\0A\00", align 1
@STATE_STOPPING = common dso_local global i64 0, align 8
@STATE_STOPPED = common dso_local global i64 0, align 8
@STATE_STARTING = common dso_local global i64 0, align 8
@STATE_PLAYING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Mixed at least %d from all buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64, i64, i64, i64*)* @DSOUND_MixToPrimary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DSOUND_MixToPrimary(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %13, align 8
  %15 = load i64, i64* @TRUE, align 8
  %16 = load i64*, i64** %10, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18, i64 %19)
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %133, %5
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %136

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %30, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %14, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %34, i64 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %132

43:                                               ; preds = %27
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %132

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %132, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %54, i64 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64, i64* @TRUE, align 8
  %60 = call i32 @RtlAcquireResourceShared(i32* %58, i64 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @STATE_STOPPING, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load i64, i64* @STATE_STOPPED, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %71 = call i32 @DSOUND_CheckEvent(%struct.TYPE_6__* %70, i32 0, i32 0)
  br label %128

72:                                               ; preds = %53
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @STATE_STOPPED, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %127

78:                                               ; preds = %72
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @STATE_STARTING, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84, %78
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @STATE_STARTING, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i64, i64* @STATE_PLAYING, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @DSOUND_MixOne(%struct.TYPE_6__* %102, i64 %103, i64 %104)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %101
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %13, align 8
  br label %124

110:                                              ; preds = %101
  %111 = load i64, i64* %12, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i64, i64* %12, align 8
  br label %121

119:                                              ; preds = %113
  %120 = load i64, i64* %13, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i64 [ %118, %117 ], [ %120, %119 ]
  store i64 %122, i64* %13, align 8
  br label %123

123:                                              ; preds = %121, %110
  br label %124

124:                                              ; preds = %123, %108
  %125 = load i64, i64* @FALSE, align 8
  %126 = load i64*, i64** %10, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %72
  br label %128

128:                                              ; preds = %127, %66
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = call i32 @RtlReleaseResource(i32* %130)
  br label %132

132:                                              ; preds = %128, %48, %43, %27
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %11, align 8
  br label %21

136:                                              ; preds = %21
  %137 = load i64, i64* %13, align 8
  %138 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %137)
  %139 = load i64, i64* %13, align 8
  ret i64 %139
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @RtlAcquireResourceShared(i32*, i64) #1

declare dso_local i32 @DSOUND_CheckEvent(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @DSOUND_MixOne(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @RtlReleaseResource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
