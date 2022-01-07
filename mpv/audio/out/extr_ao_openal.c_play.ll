; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_openal.c_play.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_openal.c_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, %struct.priv* }
%struct.priv = type { i32, i64, i32 }

@AOPLAY_FINAL_CHUNK = common dso_local global i32 0, align 4
@buffer_size = common dso_local global i32* null, align 8
@cur_buf = common dso_local global i64 0, align 8
@buffers = common dso_local global i32* null, align 8
@source = common dso_local global i32 0, align 4
@AL_SOURCE_STATE = common dso_local global i32 0, align 4
@AL_PLAYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i8**, i32, i32)* @play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play(%struct.ao* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ao*, %struct.ao** %5, align 8
  %16 = getelementptr inbounds %struct.ao, %struct.ao* %15, i32 0, i32 2
  %17 = load %struct.priv*, %struct.priv** %16, align 8
  store %struct.priv* %17, %struct.priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %10, align 4
  br label %35

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.priv*, %struct.priv** %9, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.priv*, %struct.priv** %9, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %24, %22
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %104, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %107

40:                                               ; preds = %36
  %41 = load i8**, i8*** %6, align 8
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** @buffer_size, align 8
  %50 = load i64, i64* @cur_buf, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  br label %59

52:                                               ; preds = %40
  %53 = load %struct.priv*, %struct.priv** %9, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** @buffer_size, align 8
  %57 = load i64, i64* @cur_buf, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** @buffer_size, align 8
  %62 = load i64, i64* @cur_buf, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %60, %64
  %66 = load %struct.ao*, %struct.ao** %5, align 8
  %67 = getelementptr inbounds %struct.ao, %struct.ao* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load i8*, i8** %13, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %13, align 8
  %73 = load i32*, i32** @buffers, align 8
  %74 = load i64, i64* @cur_buf, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.priv*, %struct.priv** %9, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i32*, i32** @buffer_size, align 8
  %82 = load i64, i64* @cur_buf, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ao*, %struct.ao** %5, align 8
  %86 = getelementptr inbounds %struct.ao, %struct.ao* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = load %struct.ao*, %struct.ao** %5, align 8
  %90 = getelementptr inbounds %struct.ao, %struct.ao* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @alBufferData(i32 %76, i32 %79, i8* %80, i32 %88, i32 %91)
  %93 = load i32, i32* @source, align 4
  %94 = load i32*, i32** @buffers, align 8
  %95 = load i64, i64* @cur_buf, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = call i32 @alSourceQueueBuffers(i32 %93, i32 1, i32* %96)
  %98 = load i64, i64* @cur_buf, align 8
  %99 = add i64 %98, 1
  %100 = load %struct.priv*, %struct.priv** %9, align 8
  %101 = getelementptr inbounds %struct.priv, %struct.priv* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = urem i64 %99, %102
  store i64 %103, i64* @cur_buf, align 8
  br label %104

104:                                              ; preds = %59
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %36

107:                                              ; preds = %36
  %108 = load i32, i32* @source, align 4
  %109 = load i32, i32* @AL_SOURCE_STATE, align 4
  %110 = call i32 @alGetSourcei(i32 %108, i32 %109, i64* %14)
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* @AL_PLAYING, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* @source, align 4
  %116 = call i32 @alSourcePlay(i32 %115)
  br label %117

117:                                              ; preds = %114, %107
  %118 = load i32, i32* %10, align 4
  ret i32 %118
}

declare dso_local i32 @alBufferData(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @alSourceQueueBuffers(i32, i32, i32*) #1

declare dso_local i32 @alGetSourcei(i32, i32, i64*) #1

declare dso_local i32 @alSourcePlay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
