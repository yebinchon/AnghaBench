; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DumpExFat.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/fsutil/extr_fsinfo.c_DumpExFat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"EXFAT\00", align 1
@CreateHits = common dso_local global i32 0, align 4
@SuccessfulCreates = common dso_local global i32 0, align 4
@FailedCreates = common dso_local global i32 0, align 4
@NonCachedReads = common dso_local global i32 0, align 4
@NonCachedReadBytes = common dso_local global i32 0, align 4
@NonCachedWrites = common dso_local global i32 0, align 4
@NonCachedWriteBytes = common dso_local global i32 0, align 4
@NonCachedDiskReads = common dso_local global i32 0, align 4
@NonCachedDiskWrites = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @DumpExFat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpExFat(i8* %0, i8* %1) #0 {
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
  %10 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @DumpBase(i8* %9, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @CreateHits, align 4
  %14 = call i32 @DUMP_VALUE(i8* %12, i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @SuccessfulCreates, align 4
  %17 = call i32 @DUMP_VALUE(i8* %15, i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @FailedCreates, align 4
  %20 = call i32 @DUMP_VALUE(i8* %18, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @NonCachedReads, align 4
  %23 = call i32 @DUMP_VALUE(i8* %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @NonCachedReadBytes, align 4
  %26 = call i32 @DUMP_VALUE(i8* %24, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @NonCachedWrites, align 4
  %29 = call i32 @DUMP_VALUE(i8* %27, i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @NonCachedWriteBytes, align 4
  %32 = call i32 @DUMP_VALUE(i8* %30, i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @NonCachedDiskReads, align 4
  %35 = call i32 @DUMP_VALUE(i8* %33, i32 %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @NonCachedDiskWrites, align 4
  %38 = call i32 @DUMP_VALUE(i8* %36, i32 %37)
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
