; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_get_boolean.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_get_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"on demand\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @appconfig_get_boolean(%struct.config* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.config*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.config* %0, %struct.config** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %15

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %15

15:                                               ; preds = %14, %13
  %16 = load %struct.config*, %struct.config** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i8* @appconfig_get(%struct.config* %16, i8* %17, i8* %18, i8* %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %5, align 4
  br label %47

25:                                               ; preds = %15
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @strcasecmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %37, %33, %29, %25
  store i32 1, i32* %5, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %45, %23
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i8* @appconfig_get(%struct.config*, i8*, i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
