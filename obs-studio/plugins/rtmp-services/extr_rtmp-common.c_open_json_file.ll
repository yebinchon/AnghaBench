; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_open_json_file.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_open_json_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@JSON_REJECT_DUPLICATES = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"rtmp-common.c: [open_json_file] Error reading JSON file (%d): %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"format_version\00", align 1
@RTMP_SERVICES_FORMAT_VERSION = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"rtmp-common.c: [open_json_file] Wrong format version (%d), expected %d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"services\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"rtmp-common.c: [open_json_file] No services list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @open_json_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_json_file(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @os_quick_read_utf8_file(i8* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %60

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @JSON_REJECT_DUPLICATES, align 4
  %17 = call i32* @json_loads(i8* %15, i32 %16, %struct.TYPE_3__* %5)
  store i32* %17, i32** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @bfree(i8* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @LOG_WARNING, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @blog(i32 %23, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  store i32* null, i32** %2, align 8
  br label %60

29:                                               ; preds = %14
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @get_int_val(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RTMP_SERVICES_FORMAT_VERSION, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @LOG_DEBUG, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RTMP_SERVICES_FORMAT_VERSION, align 4
  %39 = call i32 (i32, i8*, ...) @blog(i32 %36, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @json_decref(i32* %40)
  store i32* null, i32** %2, align 8
  br label %60

42:                                               ; preds = %29
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @json_object_get(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @json_incref(i32* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @json_decref(i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @LOG_WARNING, align 4
  %57 = call i32 (i32, i8*, ...) @blog(i32 %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %60

58:                                               ; preds = %50
  %59 = load i32*, i32** %7, align 8
  store i32* %59, i32** %2, align 8
  br label %60

60:                                               ; preds = %58, %55, %35, %22, %13
  %61 = load i32*, i32** %2, align 8
  ret i32* %61
}

declare dso_local i8* @os_quick_read_utf8_file(i8*) #1

declare dso_local i32* @json_loads(i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @get_int_val(i32*, i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i32 @json_incref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
