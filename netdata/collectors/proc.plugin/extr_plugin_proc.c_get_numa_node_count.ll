; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_plugin_proc.c_get_numa_node_count.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_plugin_proc.c_get_numa_node_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32* }

@get_numa_node_count.numa_node_count = internal global i32 -1, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"/sys/devices/system/node\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"plugin:proc:/sys/devices/system/node\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"directory to monitor\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_numa_node_count() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = load i32, i32* @get_numa_node_count.numa_node_count, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @get_numa_node_count.numa_node_count, align 4
  store i32 %10, i32* %1, align 4
  br label %62

11:                                               ; preds = %0
  store i32 0, i32* @get_numa_node_count.numa_node_count, align 4
  %12 = load i32, i32* @FILENAME_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %2, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %17 = load i32, i32* @FILENAME_MAX, align 4
  %18 = load i32, i32* @netdata_configured_host_prefix, align 4
  %19 = call i32 @snprintfz(i8* %16, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i8* @config_get(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32* @opendir(i8* %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %11
  store %struct.dirent* null, %struct.dirent** %6, align 8
  br label %26

26:                                               ; preds = %53, %52, %43, %36, %25
  %27 = load i32*, i32** %5, align 8
  %28 = call %struct.dirent* @readdir(i32* %27)
  store %struct.dirent* %28, %struct.dirent** %6, align 8
  %29 = icmp ne %struct.dirent* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.dirent*, %struct.dirent** %6, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DT_DIR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %26

37:                                               ; preds = %30
  %38 = load %struct.dirent*, %struct.dirent** %6, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @strncmp(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %26

44:                                               ; preds = %37
  %45 = load %struct.dirent*, %struct.dirent** %6, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @isdigit(i32 %49) #4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %26

53:                                               ; preds = %44
  %54 = load i32, i32* @get_numa_node_count.numa_node_count, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @get_numa_node_count.numa_node_count, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @closedir(i32* %57)
  br label %59

59:                                               ; preds = %56, %11
  %60 = load i32, i32* @get_numa_node_count.numa_node_count, align 4
  store i32 %60, i32* %1, align 4
  %61 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %59, %9
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i8*) #2

declare dso_local i8* @config_get(i8*, i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strncmp(i32*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #3

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
