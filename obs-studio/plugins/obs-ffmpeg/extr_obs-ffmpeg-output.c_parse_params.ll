; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_parse_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_parse_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to set %s=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**)* @parse_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_params(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  store i32 1, i32* %3, align 4
  br label %53

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 61)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %8, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %10, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %40 = call i64 @av_opt_set(%struct.TYPE_4__* %36, i8* %37, i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32, i32* @LOG_WARNING, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @blog(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %31
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %5, align 8
  br label %20

51:                                               ; preds = %20
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @av_opt_set(%struct.TYPE_4__*, i8*, i8*, i32) #1

declare dso_local i32 @blog(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
