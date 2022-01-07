; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_read_pid_from_cgroup_file.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_read_pid_from_cgroup_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@procfile_open_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot open pid_from_cgroup() file '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot upgrade fd to fp for file '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_pid_from_cgroup_file(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [101 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @procfile_open_flags, align 4
  %11 = call i32 @open(i8* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i64 0, i64* %2, align 8
  br label %43

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32* @fdopen(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  store i64 0, i64* %2, align 8
  br label %43

25:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %38, %25
  %27 = getelementptr inbounds [101 x i8], [101 x i8]* %6, i64 0, i64 0
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @fgets(i8* %27, i32 100, i32* %28)
  store i8* %29, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = getelementptr inbounds [101 x i8], [101 x i8]* %6, i64 0, i64 100
  store i8 0, i8* %32, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @atoi(i8* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %39

38:                                               ; preds = %31
  br label %26

39:                                               ; preds = %37, %26
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %39, %22, %14
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
