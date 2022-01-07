; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c_init_devices.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c_init_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.stat = type { i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ZRAM : Unable to stat %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ZRAM : Found device %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"/sys/block/%s/mm_stat\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" \09:\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"ZRAM : Failed to open %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @init_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_devices(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = call i32* @opendir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* @FILENAME_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %91

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %86, %67, %46, %30
  %32 = load i32*, i32** %9, align 8
  %33 = call %struct.dirent* @readdir(i32* %32)
  store %struct.dirent* %33, %struct.dirent** %10, align 8
  %34 = icmp ne %struct.dirent* %33, null
  br i1 %34, label %35, label %87

35:                                               ; preds = %31
  %36 = load i32, i32* @FILENAME_MAX, align 4
  %37 = load %struct.dirent*, %struct.dirent** %10, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snprintfz(i8* %22, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i64 @stat(i8* %22, %struct.stat* %11)
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %22, i8* %48)
  br label %31

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @major(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %50
  %57 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %58 = load i32, i32* @FILENAME_MAX, align 4
  %59 = load %struct.dirent*, %struct.dirent** %10, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snprintfz(i8* %22, i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %64 = call i32* @procfile_open(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* @errno, align 4
  %69 = call i8* @strerror(i32 %68)
  %70 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %22, i8* %69)
  br label %31

71:                                               ; preds = %56
  %72 = load i32*, i32** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32* %72, i32** %73, align 8
  %74 = load %struct.dirent*, %struct.dirent** %10, align 8
  %75 = getelementptr inbounds %struct.dirent, %struct.dirent* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @init_rrd(i32 %76, %struct.TYPE_4__* %15, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.dirent*, %struct.dirent** %10, align 8
  %81 = getelementptr inbounds %struct.dirent, %struct.dirent* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dictionary_set(i32* %79, i32 %82, %struct.TYPE_4__* %15, i32 8)
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %71, %50
  br label %31

87:                                               ; preds = %31
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @closedir(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %91

91:                                               ; preds = %87, %29
  %92 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32* @opendir(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @major(i32) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32* @procfile_open(i8*, i8*, i32) #1

declare dso_local i32 @init_rrd(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dictionary_set(i32*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @closedir(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
