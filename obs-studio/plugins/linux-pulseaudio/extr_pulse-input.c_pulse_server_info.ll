; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-input.c_pulse_server_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-input.c_pulse_server_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Server name: '%s %s'\00", align 1
@data = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Default input device: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".monitor\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Default output device: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i8*)* @pulse_server_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pulse_server_info(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @UNUSED_PARAMETER(i32* %8)
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @PULSE_DATA(i8* %10)
  %12 = load i32, i32* @LOG_INFO, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @blog(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %83

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @bfree(i8* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @bstrdup(i8* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @LOG_DEBUG, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, i8*, ...) @blog(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %82

53:                                               ; preds = %32
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = add nsw i64 %57, 9
  %59 = call i8* @bzalloc(i64 %58)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcat(i8* %60, i8* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strcat(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @bfree(i8* %69)
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @bstrdup(i8* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @LOG_DEBUG, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, i8*, ...) @blog(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @bfree(i8* %80)
  br label %82

82:                                               ; preds = %53, %37
  br label %83

83:                                               ; preds = %82, %26, %3
  %84 = call i32 @pulse_signal(i32 0)
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @PULSE_DATA(i8*) #1

declare dso_local i32 @blog(i32, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i8* @bzalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @pulse_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
