; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-logging.c_script_log_va.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-logging.c_script_log_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"(Unknown)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"(Unknown language)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Python\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"[%s: %s] \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"[Unknown Script] \00", align 1
@param = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @script_log_va(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2048 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %21 [
    i32 128, label %18
    i32 130, label %19
    i32 129, label %20
  ]

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %21

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %21

20:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %21

21:                                               ; preds = %14, %20, %19, %18
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %22, i32 2048, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %23, i8* %27)
  store i64 %28, i64* %11, align 8
  br label %32

29:                                               ; preds = %4
  %30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %31 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %30, i32 2048, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %29, %21
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %11, align 8
  %37 = sub i64 2048, %36
  %38 = trunc i64 %37 to i32
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @vsnprintf(i8* %35, i32 %38, i8* %39, i32 %40)
  br i1 true, label %42, label %50

42:                                               ; preds = %32
  %43 = load i32, i32* @param, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = call i32 @callback(i32 %43, %struct.TYPE_6__* %44, i32 %45, i8* %48)
  br label %50

50:                                               ; preds = %42, %32
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %53 = call i32 @blog(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %52)
  ret void
}

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @callback(i32, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @blog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
