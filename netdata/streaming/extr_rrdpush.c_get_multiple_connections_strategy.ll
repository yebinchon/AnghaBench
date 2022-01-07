; ModuleID = '/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_get_multiple_connections_strategy.c'
source_filename = "/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_get_multiple_connections_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"permit\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Invalid stream config value at section [%s], setting '%s', value '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config*, i8*, i8*, i32)* @get_multiple_connections_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_multiple_connections_strategy(%struct.config* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.config* %0, %struct.config** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %12 [
    i32 129, label %13
    i32 128, label %14
  ]

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %4, %12
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %15

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %15

15:                                               ; preds = %14, %13
  %16 = load %struct.config*, %struct.config** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i8* @appconfig_get(%struct.config* %16, i8* %17, i8* %18, i8* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strcasecmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %15
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %15
  store i32 129, i32* %10, align 4
  br label %53

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @strcasecmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @strcasecmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %34
  store i32 128, i32* %10, align 4
  br label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i8* %48, i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %47, %46
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i8* @appconfig_get(%struct.config*, i8*, i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
