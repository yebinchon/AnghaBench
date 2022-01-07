; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_cue.c_open_source.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_cue.c_open_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeline = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.bstr = type { i32 }
%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [43 x i8] c"CUE: Invalid audio filename in .cue file!\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"CUE: No useful audio filename in .cue file found, trying with '%s' instead!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CUE: Could not open audio file!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeline*, i8*)* @open_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_source(%struct.timeline* %0, i8* %1) #0 {
  %3 = alloca %struct.timeline*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.bstr, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bstr, align 4
  %11 = alloca %struct.bstr, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dirent*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.bstr, align 4
  store %struct.timeline* %0, %struct.timeline** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = call i8* @talloc_new(i32* null)
  store i8* %16, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.timeline*, %struct.timeline** %3, align 8
  %18 = getelementptr inbounds %struct.timeline, %struct.timeline* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @mp_dirname(i8* %21)
  %23 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @mp_basename(i8* %24)
  %26 = call i32 @bstr0(i8* %25)
  %27 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load %struct.timeline*, %struct.timeline** %3, align 8
  %33 = call i32 (%struct.timeline*, i8*, ...) @MP_WARN(%struct.timeline* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %47

34:                                               ; preds = %2
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @mp_path_join_bstr(i8* %35, i32 %37, i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load %struct.timeline*, %struct.timeline** %3, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @try_open(%struct.timeline* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %105

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.timeline*, %struct.timeline** %3, align 8
  %49 = getelementptr inbounds %struct.timeline, %struct.timeline* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @mp_basename(i8* %52)
  %54 = call i32 @bstr0(i8* %53)
  %55 = getelementptr inbounds %struct.bstr, %struct.bstr* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.bstr, %struct.bstr* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bstr_strip_ext(i32 %57)
  %59 = getelementptr inbounds %struct.bstr, %struct.bstr* %10, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bstrdup0(i8* %60, i32 %62)
  %64 = call i32* @opendir(i32 %63)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %47
  br label %105

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %101, %68
  %70 = load i32*, i32** %12, align 8
  %71 = call %struct.dirent* @readdir(i32* %70)
  store %struct.dirent* %71, %struct.dirent** %13, align 8
  %72 = icmp ne %struct.dirent* %71, null
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load %struct.dirent*, %struct.dirent** %13, align 8
  %75 = getelementptr inbounds %struct.dirent, %struct.dirent* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %14, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @bstr0(i8* %77)
  %79 = getelementptr inbounds %struct.bstr, %struct.bstr* %15, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.bstr, %struct.bstr* %15, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.bstr, %struct.bstr* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @bstr_case_startswith(i32 %81, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %73
  %87 = load %struct.timeline*, %struct.timeline** %3, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 (%struct.timeline*, i8*, ...) @MP_WARN(%struct.timeline* %87, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load %struct.timeline*, %struct.timeline** %3, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.bstr, %struct.bstr* %15, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @mp_path_join_bstr(i8* %91, i32 %93, i32 %95)
  %97 = call i64 @try_open(%struct.timeline* %90, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  store i32 1, i32* %6, align 4
  br label %102

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %73
  br label %69

102:                                              ; preds = %99, %69
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @closedir(i32* %103)
  br label %105

105:                                              ; preds = %102, %67, %45
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @talloc_free(i8* %106)
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load %struct.timeline*, %struct.timeline** %3, align 8
  %112 = call i32 @MP_ERR(%struct.timeline* %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i32 @mp_dirname(i8*) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i8* @mp_basename(i8*) #1

declare dso_local i32 @MP_WARN(%struct.timeline*, i8*, ...) #1

declare dso_local i8* @mp_path_join_bstr(i8*, i32, i32) #1

declare dso_local i64 @try_open(%struct.timeline*, i8*) #1

declare dso_local i32 @bstr_strip_ext(i32) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @bstrdup0(i8*, i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @bstr_case_startswith(i32, i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @MP_ERR(%struct.timeline*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
