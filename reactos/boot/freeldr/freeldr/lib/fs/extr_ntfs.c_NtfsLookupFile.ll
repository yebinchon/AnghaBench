; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_ntfs.c_NtfsLookupFile.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_ntfs.c_NtfsLookupFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"NtfsLookupFile() FileName = %s\0A\00", align 1
@NTFS_FILE_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"- Lookup: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"- Failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"- Lookup: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"NtfsLookupFile: Can't read MFT record\0A\00", align 1
@NTFS_ATTR_TYPE_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"NtfsLookupFile: Can't find data attribute\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32**)* @NtfsLookupFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsLookupFile(i32 %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca [261 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @NTFS_FILE_ROOT, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @FsGetNumPathParts(i8* %17)
  store i64 %18, i64* %10, align 8
  store i64 0, i64* %13, align 8
  br label %19

19:                                               ; preds = %64, %4
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %19
  %24 = getelementptr inbounds [261 x i32], [261 x i32]* %11, i64 0, i64 0
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @FsGetFirstNameFromPath(i32* %24, i8* %25)
  br label %27

27:                                               ; preds = %45, %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 92
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 47
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %37, %32, %27
  %43 = phi i1 [ false, %32 ], [ false, %27 ], [ %41, %37 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  br label %27

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  %51 = getelementptr inbounds [261 x i32], [261 x i32]* %11, i64 0, i64 0
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %12, align 4
  %55 = getelementptr inbounds [261 x i32], [261 x i32]* %11, i64 0, i64 0
  %56 = call i32 @NtfsFindMftRecord(i32 %53, i32 %54, i32* %55, i32* %12)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %5, align 4
  br label %90

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %19

67:                                               ; preds = %19
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @NtfsReadMftRecord(i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %5, align 4
  br label %90

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @NTFS_ATTR_TYPE_DATA, align 4
  %80 = call i32* @NtfsFindAttribute(i32 %77, i32 %78, i32 %79, i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %81 = load i32**, i32*** %9, align 8
  store i32* %80, i32** %81, align 8
  %82 = load i32**, i32*** %9, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %5, align 4
  br label %90

88:                                               ; preds = %76
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %85, %73, %58
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @FsGetNumPathParts(i8*) #1

declare dso_local i32 @FsGetFirstNameFromPath(i32*, i8*) #1

declare dso_local i32 @NtfsFindMftRecord(i32, i32, i32*, i32*) #1

declare dso_local i32 @NtfsReadMftRecord(i32, i32, i32) #1

declare dso_local i32* @NtfsFindAttribute(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
