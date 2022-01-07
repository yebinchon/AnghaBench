; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_config_open_path.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_config_open_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not open configuration file: %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config* (i8*, i8**, i64*)* @config_open_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config* @config_open_path(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca %struct.config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.config*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = load i32, i32* @O_CLOEXEC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i8* %12, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @lwan_status_perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %20)
  store %struct.config* null, %struct.config** %4, align 8
  br label %64

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @fstat(i32 %23, %struct.stat* %9)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @close(i32 %27)
  store %struct.config* null, %struct.config** %4, align 8
  br label %64

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @PROT_READ, align 4
  %33 = load i32, i32* @MAP_SHARED, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @mmap(i32* null, i64 %31, i32 %32, i32 %33, i32 %34, i32 0)
  store i8* %35, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** @MAP_FAILED, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store %struct.config* null, %struct.config** %4, align 8
  br label %64

42:                                               ; preds = %29
  %43 = call %struct.config* @malloc(i32 16)
  store %struct.config* %43, %struct.config** %8, align 8
  %44 = load %struct.config*, %struct.config** %8, align 8
  %45 = icmp ne %struct.config* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @munmap(i8* %47, i64 %49)
  store %struct.config* null, %struct.config** %4, align 8
  br label %64

51:                                               ; preds = %42
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.config*, %struct.config** %8, align 8
  %54 = getelementptr inbounds %struct.config, %struct.config* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i8**, i8*** %6, align 8
  store i8* %52, i8** %56, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.config*, %struct.config** %8, align 8
  %60 = getelementptr inbounds %struct.config, %struct.config* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load i64*, i64** %7, align 8
  store i64 %58, i64* %62, align 8
  %63 = load %struct.config*, %struct.config** %8, align 8
  store %struct.config* %63, %struct.config** %4, align 8
  br label %64

64:                                               ; preds = %51, %46, %41, %26, %19
  %65 = load %struct.config*, %struct.config** %4, align 8
  ret %struct.config* %65
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @lwan_status_perror(i8*, i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.config* @malloc(i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
