; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/extr_testusb.c_find_testdev.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/extr_testusb.c_find_testdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testdev = type { i8*, i32, %struct.testdev*, i32 }
%struct.stat = type { i32 }

@FTW_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%s speed\09%s\09%u\0A\00", align 1
@testdevs = common dso_local global %struct.testdev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*, i32)* @find_testdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_testdev(i8* %0, %struct.stat* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.testdev*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.stat*, %struct.stat** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FTW_F, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @perror(i8* %22)
  store i32 0, i32* %4, align 4
  br label %71

24:                                               ; preds = %16
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @testdev_ifnum(i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @fclose(i32* %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %71

32:                                               ; preds = %24
  %33 = call %struct.testdev* @calloc(i32 1, i32 32)
  store %struct.testdev* %33, %struct.testdev** %10, align 8
  %34 = load %struct.testdev*, %struct.testdev** %10, align 8
  %35 = icmp ne %struct.testdev* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %49

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @strdup(i8* %38)
  %40 = load %struct.testdev*, %struct.testdev** %10, align 8
  %41 = getelementptr inbounds %struct.testdev, %struct.testdev* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.testdev*, %struct.testdev** %10, align 8
  %43 = getelementptr inbounds %struct.testdev, %struct.testdev* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %37
  %47 = load %struct.testdev*, %struct.testdev** %10, align 8
  %48 = call i32 @free(%struct.testdev* %47)
  br label %49

49:                                               ; preds = %46, %36
  %50 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %71

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.testdev*, %struct.testdev** %10, align 8
  %54 = getelementptr inbounds %struct.testdev, %struct.testdev* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @stderr, align 4
  %56 = load %struct.testdev*, %struct.testdev** %10, align 8
  %57 = getelementptr inbounds %struct.testdev, %struct.testdev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @speed(i32 %58)
  %60 = load %struct.testdev*, %struct.testdev** %10, align 8
  %61 = getelementptr inbounds %struct.testdev, %struct.testdev* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.testdev*, %struct.testdev** %10, align 8
  %64 = getelementptr inbounds %struct.testdev, %struct.testdev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %62, i32 %65)
  %67 = load %struct.testdev*, %struct.testdev** @testdevs, align 8
  %68 = load %struct.testdev*, %struct.testdev** %10, align 8
  %69 = getelementptr inbounds %struct.testdev, %struct.testdev* %68, i32 0, i32 2
  store %struct.testdev* %67, %struct.testdev** %69, align 8
  %70 = load %struct.testdev*, %struct.testdev** %10, align 8
  store %struct.testdev* %70, %struct.testdev** @testdevs, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %51, %49, %31, %21, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @testdev_ifnum(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local %struct.testdev* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.testdev*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i8* @speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
