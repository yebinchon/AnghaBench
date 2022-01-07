; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DumpNtfs.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DumpNtfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"NTFS\00", align 1
@MftReads = common dso_local global i32 0, align 4
@MftReadBytes = common dso_local global i32 0, align 4
@MftWrites = common dso_local global i32 0, align 4
@MftWriteBytes = common dso_local global i32 0, align 4
@Mft2Writes = common dso_local global i32 0, align 4
@Mft2WriteBytes = common dso_local global i32 0, align 4
@RootIndexReads = common dso_local global i32 0, align 4
@RootIndexReadBytes = common dso_local global i32 0, align 4
@RootIndexWrites = common dso_local global i32 0, align 4
@RootIndexWriteBytes = common dso_local global i32 0, align 4
@BitmapReads = common dso_local global i32 0, align 4
@BitmapReadBytes = common dso_local global i32 0, align 4
@BitmapWrites = common dso_local global i32 0, align 4
@BitmapWriteBytes = common dso_local global i32 0, align 4
@MftBitmapReads = common dso_local global i32 0, align 4
@MftBitmapReadBytes = common dso_local global i32 0, align 4
@MftBitmapWrites = common dso_local global i32 0, align 4
@MftBitmapWriteBytes = common dso_local global i32 0, align 4
@UserIndexReads = common dso_local global i32 0, align 4
@UserIndexReadBytes = common dso_local global i32 0, align 4
@UserIndexWrites = common dso_local global i32 0, align 4
@UserIndexWriteBytes = common dso_local global i32 0, align 4
@LogFileReads = common dso_local global i32 0, align 4
@LogFileReadBytes = common dso_local global i32 0, align 4
@LogFileWrites = common dso_local global i32 0, align 4
@LogFileWriteBytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @DumpNtfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpNtfs(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @DumpBase(i8* %9, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @MftReads, align 4
  %14 = call i32 @DUMP_VALUE(i8* %12, i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @MftReadBytes, align 4
  %17 = call i32 @DUMP_VALUE(i8* %15, i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @MftWrites, align 4
  %20 = call i32 @DUMP_VALUE(i8* %18, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @MftWriteBytes, align 4
  %23 = call i32 @DUMP_VALUE(i8* %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @Mft2Writes, align 4
  %26 = call i32 @DUMP_VALUE(i8* %24, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @Mft2WriteBytes, align 4
  %29 = call i32 @DUMP_VALUE(i8* %27, i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @RootIndexReads, align 4
  %32 = call i32 @DUMP_VALUE(i8* %30, i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @RootIndexReadBytes, align 4
  %35 = call i32 @DUMP_VALUE(i8* %33, i32 %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @RootIndexWrites, align 4
  %38 = call i32 @DUMP_VALUE(i8* %36, i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @RootIndexWriteBytes, align 4
  %41 = call i32 @DUMP_VALUE(i8* %39, i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @BitmapReads, align 4
  %44 = call i32 @DUMP_VALUE(i8* %42, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @BitmapReadBytes, align 4
  %47 = call i32 @DUMP_VALUE(i8* %45, i32 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @BitmapWrites, align 4
  %50 = call i32 @DUMP_VALUE(i8* %48, i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @BitmapWriteBytes, align 4
  %53 = call i32 @DUMP_VALUE(i8* %51, i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* @MftBitmapReads, align 4
  %56 = call i32 @DUMP_VALUE(i8* %54, i32 %55)
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @MftBitmapReadBytes, align 4
  %59 = call i32 @DUMP_VALUE(i8* %57, i32 %58)
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @MftBitmapWrites, align 4
  %62 = call i32 @DUMP_VALUE(i8* %60, i32 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* @MftBitmapWriteBytes, align 4
  %65 = call i32 @DUMP_VALUE(i8* %63, i32 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* @UserIndexReads, align 4
  %68 = call i32 @DUMP_VALUE(i8* %66, i32 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @UserIndexReadBytes, align 4
  %71 = call i32 @DUMP_VALUE(i8* %69, i32 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* @UserIndexWrites, align 4
  %74 = call i32 @DUMP_VALUE(i8* %72, i32 %73)
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* @UserIndexWriteBytes, align 4
  %77 = call i32 @DUMP_VALUE(i8* %75, i32 %76)
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* @LogFileReads, align 4
  %80 = call i32 @DUMP_VALUE(i8* %78, i32 %79)
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* @LogFileReadBytes, align 4
  %83 = call i32 @DUMP_VALUE(i8* %81, i32 %82)
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @LogFileWrites, align 4
  %86 = call i32 @DUMP_VALUE(i8* %84, i32 %85)
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* @LogFileWriteBytes, align 4
  %89 = call i32 @DUMP_VALUE(i8* %87, i32 %88)
  ret void
}

declare dso_local i32 @DumpBase(i8*, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @DUMP_VALUE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
