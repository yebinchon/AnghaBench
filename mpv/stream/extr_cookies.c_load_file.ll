; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_cookies.c_load_file.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_cookies.c_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Loading cookie file: %s\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Could not find EOF\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"File too big, could not malloc.\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Could not malloc.\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Read is behaving funny.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mp_log*, i8*, i32*)* @load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @load_file(%struct.mp_log* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.mp_log* %0, %struct.mp_log** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = load i32, i32* @O_CLOEXEC, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i8* %13, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %22 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %76

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SEEK_END, align 4
  %26 = call i32 @lseek(i32 %24, i32 0, i32 %25)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %33 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %76

34:                                               ; preds = %23
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SIZE_MAX, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %42 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %76

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i32 @lseek(i32 %44, i32 0, i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i8* @malloc(i32 %49)
  store i8* %50, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %54 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %76

55:                                               ; preds = %43
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @read(i32 %56, i8* %57, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %66 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %76

67:                                               ; preds = %55
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @close(i32 %68)
  %70 = load i8*, i8** %9, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %9, align 8
  store i8* %75, i8** %4, align 8
  br label %85

76:                                               ; preds = %64, %52, %40, %31, %20
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @close(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @free(i8* %83)
  store i8* null, i8** %4, align 8
  br label %85

85:                                               ; preds = %82, %67
  %86 = load i8*, i8** %4, align 8
  ret i8* %86
}

declare dso_local i32 @mp_verbose(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
