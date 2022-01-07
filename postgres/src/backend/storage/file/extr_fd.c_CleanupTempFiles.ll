; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_CleanupTempFiles.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_CleanupTempFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i32* }

@have_xact_temporary_files = common dso_local global i32 0, align 4
@SizeVfdCache = common dso_local global i64 0, align 8
@VfdCache = common dso_local global %struct.TYPE_2__* null, align 8
@FD_DELETE_AT_CLOSE = common dso_local global i16 0, align 2
@FD_CLOSE_AT_EOXACT = common dso_local global i16 0, align 2
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"temporary file %s not closed at end-of-transaction\00", align 1
@numAllocatedDescs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"%d temporary files and directories not closed at end-of-transaction\00", align 1
@allocatedDescs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @CleanupTempFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CleanupTempFiles(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @have_xact_temporary_files, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %75

12:                                               ; preds = %9, %2
  %13 = call i32 @FileIsNotOpen(i32 0)
  %14 = call i32 @Assert(i32 %13)
  store i64 1, i64* %5, align 8
  br label %15

15:                                               ; preds = %71, %12
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @SizeVfdCache, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %15
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 8
  store i16 %24, i16* %6, align 2
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @FD_DELETE_AT_CLOSE, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %19
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @FD_CLOSE_AT_EOXACT, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %31, %19
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %70

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @FileClose(i64 %49)
  br label %69

51:                                               ; preds = %45
  %52 = load i16, i16* %6, align 2
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* @FD_CLOSE_AT_EOXACT, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i32, i32* @WARNING, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @elog(i32 %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %64)
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @FileClose(i64 %66)
  br label %68

68:                                               ; preds = %58, %51
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69, %38, %31
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %15

74:                                               ; preds = %15
  store i32 0, i32* @have_xact_temporary_files, align 4
  br label %75

75:                                               ; preds = %74, %9
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32*, i32** @numAllocatedDescs, align 8
  %80 = icmp ugt i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @WARNING, align 4
  %83 = load i32*, i32** @numAllocatedDescs, align 8
  %84 = call i32 @elog(i32 %82, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32* %83)
  br label %85

85:                                               ; preds = %81, %78, %75
  br label %86

86:                                               ; preds = %89, %85
  %87 = load i32*, i32** @numAllocatedDescs, align 8
  %88 = icmp ugt i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32*, i32** @allocatedDescs, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = call i32 @FreeDesc(i32* %91)
  br label %86

93:                                               ; preds = %86
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileIsNotOpen(i32) #1

declare dso_local i32 @FileClose(i64) #1

declare dso_local i32 @elog(i32, i8*, i32*) #1

declare dso_local i32 @FreeDesc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
