; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrd.c_rrdset_cache_dir.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrd.c_rrdset_cache_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cache directory\00", align 1
@RRD_MEMORY_MODE_MAP = common dso_local global i64 0, align 8
@RRD_MEMORY_MODE_SAVE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot create directory '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rrdset_cache_dir(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %12 = load i32, i32* @FILENAME_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @FILENAME_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @FILENAME_MAX, align 4
  %23 = call i32 @rrdset_strncpyz_name(i8* %16, i8* %21, i32 %22)
  %24 = load i32, i32* @FILENAME_MAX, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snprintfz(i8* %20, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %16)
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @config_get(i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i8* %30, i8** %7, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RRD_MEMORY_MODE_MAP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RRD_MEMORY_MODE_SAVE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36, %3
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @mkdir(i8* %43, i32 509)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EEXIST, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %47, %42
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i8* %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rrdset_strncpyz_name(i8*, i8*, i32) #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i8*) #2

declare dso_local i8* @config_get(i8*, i8*, i8*) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @error(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
