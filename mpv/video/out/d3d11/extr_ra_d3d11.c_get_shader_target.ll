; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_get_shader_target.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_get_shader_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"vs_5_0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ps_5_0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cs_5_0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vs_4_1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ps_4_1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"cs_4_1\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"vs_4_0\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ps_4_0\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"cs_4_0\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"vs_4_0_level_9_3\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ps_4_0_level_9_3\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"vs_4_0_level_9_1\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"ps_4_0_level_9_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ra*, i32)* @get_shader_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_shader_target(%struct.ra* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ra*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ra_d3d11*, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ra*, %struct.ra** %4, align 8
  %8 = getelementptr inbounds %struct.ra, %struct.ra* %7, i32 0, i32 0
  %9 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  store %struct.ra_d3d11* %9, %struct.ra_d3d11** %6, align 8
  %10 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  %11 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %13 [
    i32 134, label %19
    i32 135, label %25
    i32 131, label %31
    i32 132, label %36
    i32 133, label %36
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %18 [
    i32 128, label %15
    i32 129, label %16
    i32 130, label %17
  ]

15:                                               ; preds = %13
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %42

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %42

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %42

18:                                               ; preds = %13
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %24 [
    i32 128, label %21
    i32 129, label %22
    i32 130, label %23
  ]

21:                                               ; preds = %19
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %42

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %42

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %42

24:                                               ; preds = %19
  br label %41

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %30 [
    i32 128, label %27
    i32 129, label %28
    i32 130, label %29
  ]

27:                                               ; preds = %25
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %42

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %42

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %42

30:                                               ; preds = %25
  br label %41

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %35 [
    i32 128, label %33
    i32 129, label %34
  ]

33:                                               ; preds = %31
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %42

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %42

35:                                               ; preds = %31
  br label %41

36:                                               ; preds = %2, %2
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %40 [
    i32 128, label %38
    i32 129, label %39
  ]

38:                                               ; preds = %36
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %42

39:                                               ; preds = %36
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %42

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %35, %30, %24, %18
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %41, %39, %38, %34, %33, %29, %28, %27, %23, %22, %21, %17, %16, %15
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
