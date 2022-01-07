; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_devices_system_node.c_find_all_nodes.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_devices_system_node.c_find_all_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, i8*, %struct.node* }
%struct.dirent = type { i64, i8* }
%struct.stat = type { i32 }

@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"/sys/devices/system/node\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"plugin:proc:/sys/devices/system/node\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"directory to monitor\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Cannot read NUMA node directory '%s'\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%s/%s/numastat\00", align 1
@numa_root = common dso_local global %struct.node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_all_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_all_nodes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.stat, align 4
  store i32 0, i32* %2, align 4
  %11 = load i32, i32* @FILENAME_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @FILENAME_MAX, align 4
  %17 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %18 = call i32 @snprintfz(i8* %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i8* @config_get(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32* @opendir(i8* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %0
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %25)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %93

27:                                               ; preds = %0
  store %struct.dirent* null, %struct.dirent** %8, align 8
  br label %28

28:                                               ; preds = %81, %74, %54, %45, %38, %27
  %29 = load i32*, i32** %6, align 8
  %30 = call %struct.dirent* @readdir(i32* %29)
  store %struct.dirent* %30, %struct.dirent** %8, align 8
  %31 = icmp ne %struct.dirent* %30, null
  br i1 %31, label %32, label %89

32:                                               ; preds = %28
  %33 = load %struct.dirent*, %struct.dirent** %8, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DT_DIR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %28

39:                                               ; preds = %32
  %40 = load %struct.dirent*, %struct.dirent** %8, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %28

46:                                               ; preds = %39
  %47 = load %struct.dirent*, %struct.dirent** %8, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @isdigit(i8 signext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %28

55:                                               ; preds = %46
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  %58 = call %struct.node* @callocz(i32 1, i32 24)
  store %struct.node* %58, %struct.node** %9, align 8
  %59 = load %struct.dirent*, %struct.dirent** %8, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @strdupz(i8* %61)
  %63 = bitcast i8* %62 to %struct.node*
  %64 = load %struct.node*, %struct.node** %9, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 2
  store %struct.node* %63, %struct.node** %65, align 8
  %66 = load i32, i32* @FILENAME_MAX, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.dirent*, %struct.dirent** %8, align 8
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @snprintfz(i8* %15, i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %67, i8* %70)
  %72 = call i32 @stat(i8* %15, %struct.stat* %10)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %81

74:                                               ; preds = %55
  %75 = load %struct.node*, %struct.node** %9, align 8
  %76 = getelementptr inbounds %struct.node, %struct.node* %75, i32 0, i32 2
  %77 = load %struct.node*, %struct.node** %76, align 8
  %78 = call i32 @freez(%struct.node* %77)
  %79 = load %struct.node*, %struct.node** %9, align 8
  %80 = call i32 @freez(%struct.node* %79)
  br label %28

81:                                               ; preds = %55
  %82 = call i8* @strdupz(i8* %15)
  %83 = load %struct.node*, %struct.node** %9, align 8
  %84 = getelementptr inbounds %struct.node, %struct.node* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.node*, %struct.node** @numa_root, align 8
  %86 = load %struct.node*, %struct.node** %9, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 0
  store %struct.node* %85, %struct.node** %87, align 8
  %88 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %88, %struct.node** @numa_root, align 8
  br label %28

89:                                               ; preds = %28
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @closedir(i32* %90)
  %92 = load i32, i32* %2, align 4
  store i32 %92, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %24
  %94 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %1, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @config_get(i8*, i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local %struct.node* @callocz(i32, i32) #2

declare dso_local i8* @strdupz(i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @freez(%struct.node*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
