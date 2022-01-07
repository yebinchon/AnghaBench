; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_select_stream.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_select_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, i64, i32 }

@kAudioDevicePropertyStreams = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not get number of streams\00", align 1
@kAudioStreamPropertyDirection = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not get stream direction\00", align 1
@noErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Substream %d is not an output stream.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Using substream %d/%zd.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"No useable substream found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @select_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_stream(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %10 = load %struct.ao*, %struct.ao** %3, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %4, align 8
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @kAudioDevicePropertyStreams, align 4
  %17 = call i32 @CA_GET_ARY_O(i32 %15, i32 %16, i32** %5, i64* %6)
  store i32 %17, i32* %7, align 4
  %18 = call i32 @CHECK_CA_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %79, %1
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %82

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @kAudioStreamPropertyDirection, align 4
  %31 = call i32 @CA_GET(i32 %29, i32 %30, i64* %9)
  store i32 %31, i32* %7, align 4
  %32 = call i32 @CHECK_CA_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @noErr, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.ao*, %struct.ao** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (%struct.ao*, i8*, i32, ...) @MP_VERBOSE(%struct.ao* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %79

43:                                               ; preds = %36, %24
  %44 = load %struct.ao*, %struct.ao** %3, align 8
  %45 = getelementptr inbounds %struct.ao, %struct.ao* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @af_fmt_is_pcm(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %43
  %50 = load %struct.priv*, %struct.priv** %4, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load %struct.ao*, %struct.ao** %3, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ca_stream_supports_compressed(%struct.ao* %55, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %54, %49, %43
  %64 = load %struct.ao*, %struct.ao** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* %6, align 8
  %67 = call i32 (%struct.ao*, i8*, i32, ...) @MP_VERBOSE(%struct.ao* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %65, i64 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.priv*, %struct.priv** %4, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.priv*, %struct.priv** %4, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78, %39
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %19

82:                                               ; preds = %63, %19
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @talloc_free(i32* %83)
  %85 = load %struct.priv*, %struct.priv** %4, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.ao*, %struct.ao** %3, align 8
  %91 = call i32 @MP_ERR(%struct.ao* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %93

92:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %94

93:                                               ; preds = %89
  store i32 -1, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @CA_GET_ARY_O(i32, i32, i32**, i64*) #1

declare dso_local i32 @CHECK_CA_ERROR(i8*) #1

declare dso_local i32 @CA_GET(i32, i32, i64*) #1

declare dso_local i32 @CHECK_CA_WARN(i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32, ...) #1

declare dso_local i64 @af_fmt_is_pcm(i32) #1

declare dso_local i64 @ca_stream_supports_compressed(%struct.ao*, i32) #1

declare dso_local i32 @talloc_free(i32*) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
