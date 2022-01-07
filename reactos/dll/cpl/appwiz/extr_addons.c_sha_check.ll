; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_addons.c_sha_check.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_addons.c_sha_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@addon = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Got %s, expected %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sha_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha_check(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca [41 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @GENERIC_READ, align 4
  %14 = load i32, i32* @OPEN_EXISTING, align 4
  %15 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %16 = call i64 @CreateFileW(i32* %12, i32 %13, i32 0, i32* null, i32 %14, i32 %15, i32* null)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %89

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @GetFileSize(i64 %23, i32* null)
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @PAGE_READONLY, align 4
  %27 = call i64 @CreateFileMappingW(i64 %25, i32* null, i32 %26, i32 0, i32 0, i32* null)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @CloseHandle(i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %89

34:                                               ; preds = %22
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @FILE_MAP_READ, align 4
  %37 = call i8* @MapViewOfFile(i64 %35, i32 %36, i32 0, i32 0, i32 0)
  store i8* %37, i8** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @CloseHandle(i64 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %2, align 4
  br label %89

44:                                               ; preds = %34
  %45 = call i32 @A_SHAInit(i32* %9)
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @A_SHAUpdate(i32* %9, i8* %46, i32 %47)
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %50 = call i32 @A_SHAFinal(i32* %9, i32* %49)
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @UnmapViewOfFile(i8* %51)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %70, %44
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 20
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = getelementptr inbounds [41 x i8], [41 x i8]* %8, i64 0, i64 0
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 zeroext %68)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %53

73:                                               ; preds = %53
  %74 = getelementptr inbounds [41 x i8], [41 x i8]* %8, i64 0, i64 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @addon, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @strcmp(i8* %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = getelementptr inbounds [41 x i8], [41 x i8]* %8, i64 0, i64 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @addon, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %81, i32 %84)
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %2, align 4
  br label %89

87:                                               ; preds = %73
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %80, %42, %32, %20
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64 @CreateFileMappingW(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i8* @MapViewOfFile(i64, i32, i32, i32, i32) #1

declare dso_local i32 @A_SHAInit(i32*) #1

declare dso_local i32 @A_SHAUpdate(i32*, i8*, i32) #1

declare dso_local i32 @A_SHAFinal(i32*, i32*) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @WARN(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
