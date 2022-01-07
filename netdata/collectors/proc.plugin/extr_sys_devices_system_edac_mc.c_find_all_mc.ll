; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_devices_system_edac_mc.c_find_all_mc.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_devices_system_edac_mc.c_find_all_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc = type { %struct.mc*, %struct.mc*, i8*, i8* }
%struct.dirent = type { i64, i8* }
%struct.stat = type { i32 }

@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"/sys/devices/system/edac/mc\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"plugin:proc:/sys/devices/system/edac/mc\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"directory to monitor\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Cannot read ECC memory errors directory '%s'\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"%s/%s/ce_count\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%s/%s/ue_count\00", align 1
@mc_root = common dso_local global %struct.mc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_all_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_all_mc() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.mc*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = load i32, i32* @FILENAME_MAX, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i32, i32* @FILENAME_MAX, align 4
  %15 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %16 = call i32 @snprintfz(i8* %13, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i8* @config_get(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32* @opendir(i8* %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %0
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  store i32 1, i32* %5, align 4
  br label %125

29:                                               ; preds = %0
  store %struct.dirent* null, %struct.dirent** %6, align 8
  br label %30

30:                                               ; preds = %121, %29
  %31 = load i32*, i32** %4, align 8
  %32 = call %struct.dirent* @readdir(i32* %31)
  store %struct.dirent* %32, %struct.dirent** %6, align 8
  %33 = icmp ne %struct.dirent* %32, null
  br i1 %33, label %34, label %122

34:                                               ; preds = %30
  %35 = load %struct.dirent*, %struct.dirent** %6, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DT_DIR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %121

40:                                               ; preds = %34
  %41 = load %struct.dirent*, %struct.dirent** %6, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 109
  br i1 %47, label %48, label %121

48:                                               ; preds = %40
  %49 = load %struct.dirent*, %struct.dirent** %6, align 8
  %50 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 99
  br i1 %55, label %56, label %121

56:                                               ; preds = %48
  %57 = load %struct.dirent*, %struct.dirent** %6, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @isdigit(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %121

64:                                               ; preds = %56
  %65 = call %struct.mc* @callocz(i32 1, i32 32)
  store %struct.mc* %65, %struct.mc** %7, align 8
  %66 = load %struct.dirent*, %struct.dirent** %6, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @strdupz(i8* %68)
  %70 = bitcast i8* %69 to %struct.mc*
  %71 = load %struct.mc*, %struct.mc** %7, align 8
  %72 = getelementptr inbounds %struct.mc, %struct.mc* %71, i32 0, i32 1
  store %struct.mc* %70, %struct.mc** %72, align 8
  %73 = load i32, i32* @FILENAME_MAX, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = load %struct.dirent*, %struct.dirent** %6, align 8
  %76 = getelementptr inbounds %struct.dirent, %struct.dirent* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @snprintfz(i8* %13, i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %74, i8* %77)
  %79 = call i32 @stat(i8* %13, %struct.stat* %8)
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %85

81:                                               ; preds = %64
  %82 = call i8* @strdupz(i8* %13)
  %83 = load %struct.mc*, %struct.mc** %7, align 8
  %84 = getelementptr inbounds %struct.mc, %struct.mc* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %64
  %86 = load i32, i32* @FILENAME_MAX, align 4
  %87 = load i8*, i8** %3, align 8
  %88 = load %struct.dirent*, %struct.dirent** %6, align 8
  %89 = getelementptr inbounds %struct.dirent, %struct.dirent* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @snprintfz(i8* %13, i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %87, i8* %90)
  %92 = call i32 @stat(i8* %13, %struct.stat* %8)
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = call i8* @strdupz(i8* %13)
  %96 = load %struct.mc*, %struct.mc** %7, align 8
  %97 = getelementptr inbounds %struct.mc, %struct.mc* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %85
  %99 = load %struct.mc*, %struct.mc** %7, align 8
  %100 = getelementptr inbounds %struct.mc, %struct.mc* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %98
  %104 = load %struct.mc*, %struct.mc** %7, align 8
  %105 = getelementptr inbounds %struct.mc, %struct.mc* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = load %struct.mc*, %struct.mc** %7, align 8
  %110 = getelementptr inbounds %struct.mc, %struct.mc* %109, i32 0, i32 1
  %111 = load %struct.mc*, %struct.mc** %110, align 8
  %112 = call i32 @freez(%struct.mc* %111)
  %113 = load %struct.mc*, %struct.mc** %7, align 8
  %114 = call i32 @freez(%struct.mc* %113)
  br label %120

115:                                              ; preds = %103, %98
  %116 = load %struct.mc*, %struct.mc** @mc_root, align 8
  %117 = load %struct.mc*, %struct.mc** %7, align 8
  %118 = getelementptr inbounds %struct.mc, %struct.mc* %117, i32 0, i32 0
  store %struct.mc* %116, %struct.mc** %118, align 8
  %119 = load %struct.mc*, %struct.mc** %7, align 8
  store %struct.mc* %119, %struct.mc** @mc_root, align 8
  br label %120

120:                                              ; preds = %115, %108
  br label %121

121:                                              ; preds = %120, %56, %48, %40, %34
  br label %30

122:                                              ; preds = %30
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @closedir(i32* %123)
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %122, %26
  %126 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %5, align 4
  switch i32 %127, label %129 [
    i32 0, label %128
    i32 1, label %128
  ]

128:                                              ; preds = %125, %125
  ret void

129:                                              ; preds = %125
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @config_get(i8*, i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local %struct.mc* @callocz(i32, i32) #2

declare dso_local i8* @strdupz(i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @freez(%struct.mc*) #2

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
