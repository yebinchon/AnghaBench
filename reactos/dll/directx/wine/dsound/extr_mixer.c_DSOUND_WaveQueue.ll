; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_WaveQueue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_WaveQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"wave_fragpos = %i, wave_writepos = %i, pwqueue = %i, prebuf = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"wave_fragpos = %d, mixpos_frags = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"wanted prebuf_frags = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"prebuf_frags = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"queueing wave buffer %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"queue now = %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @DSOUND_WaveQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DSOUND_WaveQueue(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = urem i64 %17, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = mul i64 %22, %25
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %27, i64 %28, i64 %31, i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %73, label %38

38:                                               ; preds = %2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = udiv i64 %41, %44
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %51, %38
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  br label %77

73:                                               ; preds = %2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %78, %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ugt i64 %82, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %77
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %90, %93
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %87, %77
  %96 = load i64, i64* %5, align 8
  %97 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %96)
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 6
  %105 = call i32 @LeaveCriticalSection(i32* %104)
  store i64 0, i64* %8, align 8
  br label %106

106:                                              ; preds = %129, %95
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %5, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %106
  %111 = load i64, i64* %7, align 8
  %112 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = call i32 @waveOutWrite(i32 %115, i32* %120, i32 4)
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %7, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = urem i64 %127, %126
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %110
  %130 = load i64, i64* %8, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %8, align 8
  br label %106

132:                                              ; preds = %106
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 6
  %135 = call i32 @EnterCriticalSection(i32* %134)
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %138)
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @waveOutWrite(i32, i32*, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
