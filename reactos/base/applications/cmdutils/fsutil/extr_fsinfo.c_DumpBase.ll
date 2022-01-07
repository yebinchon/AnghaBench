; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DumpBase.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DumpBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"File system type: %s\0A\0A\00", align 1
@UserFileReads = common dso_local global i32 0, align 4
@UserFileReadBytes = common dso_local global i32 0, align 4
@UserDiskReads = common dso_local global i32 0, align 4
@UserFileWrites = common dso_local global i32 0, align 4
@UserFileWriteBytes = common dso_local global i32 0, align 4
@UserDiskWrites = common dso_local global i32 0, align 4
@MetaDataReads = common dso_local global i32 0, align 4
@MetaDataReadBytes = common dso_local global i32 0, align 4
@MetaDataDiskReads = common dso_local global i32 0, align 4
@MetaDataWrites = common dso_local global i32 0, align 4
@MetaDataWriteBytes = common dso_local global i32 0, align 4
@MetaDataDiskWrites = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @DumpBase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpBase(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @_T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 (i32, i32, ...) @_ftprintf(i32 %5, i32 %6, i32* %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @UserFileReads, align 4
  %11 = call i32 @DUMP_VALUE(i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @UserFileReadBytes, align 4
  %14 = call i32 @DUMP_VALUE(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @UserDiskReads, align 4
  %17 = call i32 @DUMP_VALUE(i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @UserFileWrites, align 4
  %20 = call i32 @DUMP_VALUE(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UserFileWriteBytes, align 4
  %23 = call i32 @DUMP_VALUE(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @UserDiskWrites, align 4
  %26 = call i32 @DUMP_VALUE(i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MetaDataReads, align 4
  %29 = call i32 @DUMP_VALUE(i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MetaDataReadBytes, align 4
  %32 = call i32 @DUMP_VALUE(i32 %30, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MetaDataDiskReads, align 4
  %35 = call i32 @DUMP_VALUE(i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @MetaDataWrites, align 4
  %38 = call i32 @DUMP_VALUE(i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MetaDataWriteBytes, align 4
  %41 = call i32 @DUMP_VALUE(i32 %39, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @MetaDataDiskWrites, align 4
  %44 = call i32 @DUMP_VALUE(i32 %42, i32 %43)
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 (i32, i32, ...) @_ftprintf(i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @_ftprintf(i32, i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @DUMP_VALUE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
