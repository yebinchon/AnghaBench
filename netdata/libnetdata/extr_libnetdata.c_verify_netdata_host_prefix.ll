; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_verify_netdata_host_prefix.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_verify_netdata_host_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@netdata_configured_host_prefix = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"failed to stat()\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"is not a directory\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s/proc\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s/sys\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Using host prefix directory '%s'\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Ignoring host prefix '%s': path '%s' %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_netdata_host_prefix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @netdata_configured_host_prefix, align 8
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %73

16:                                               ; preds = %11
  %17 = load i32, i32* @FILENAME_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %2, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %3, align 8
  %22 = load i8*, i8** @netdata_configured_host_prefix, align 8
  store i8* %22, i8** %4, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  store i64 0, i64* @errno, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @stat(i8* %23, %struct.stat* %6)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %66

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @S_IFDIR, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @EINVAL, align 8
  store i64 %35, i64* @errno, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %66

36:                                               ; preds = %27
  store i8* %21, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @FILENAME_MAX, align 4
  %39 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %40 = call i32 @snprintfz(i8* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @is_virtual_filesystem(i8* %41, i8** %5)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %66

45:                                               ; preds = %36
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* @FILENAME_MAX, align 4
  %48 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %49 = call i32 @snprintfz(i8* %46, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @is_virtual_filesystem(i8* %50, i8** %5)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %66

54:                                               ; preds = %45
  %55 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %64 = call i32 @info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %57, %54
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %71

66:                                               ; preds = %53, %44, %34, %26
  %67 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %67, i8* %68, i8* %69)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @netdata_configured_host_prefix, align 8
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %66, %65
  %72 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %71, %15
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*) #2

declare dso_local i32 @is_virtual_filesystem(i8*, i8**) #2

declare dso_local i32 @info(i8*, i8*) #2

declare dso_local i32 @error(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
