; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_readRecoverySignalFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_readRecoverySignalFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@RECOVERY_COMMAND_FILE = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"using recovery command file \22%s\22 is not supported\00", align 1
@RECOVERY_COMMAND_DONE = common dso_local global i32 0, align 4
@STANDBY_SIGNAL_FILE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@sync_method = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@standby_signal_file_found = common dso_local global i32 0, align 4
@RECOVERY_SIGNAL_FILE = common dso_local global i32 0, align 4
@recovery_signal_file_found = common dso_local global i32 0, align 4
@StandbyModeRequested = common dso_local global i32 0, align 4
@ArchiveRecoveryRequested = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"standby mode is not supported by single-user servers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @readRecoverySignalFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readRecoverySignalFile() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 (...) @IsBootstrapProcessingMode()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %90

7:                                                ; preds = %0
  %8 = load i32, i32* @RECOVERY_COMMAND_FILE, align 4
  %9 = call i64 @stat(i32 %8, %struct.stat* %1)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* @FATAL, align 4
  %13 = call i32 (...) @errcode_for_file_access()
  %14 = load i32, i32* @RECOVERY_COMMAND_FILE, align 4
  %15 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @ereport(i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %7
  %18 = load i32, i32* @RECOVERY_COMMAND_DONE, align 4
  %19 = call i32 @unlink(i32 %18)
  %20 = load i32, i32* @STANDBY_SIGNAL_FILE, align 4
  %21 = call i64 @stat(i32 %20, %struct.stat* %1)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i32, i32* @STANDBY_SIGNAL_FILE, align 4
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = load i32, i32* @PG_BINARY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @sync_method, align 4
  %29 = call i32 @get_sync_bit(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @S_IRUSR, align 4
  %32 = load i32, i32* @S_IWUSR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @BasicOpenFilePerm(i32 %24, i32 %30, i32 %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @pg_fsync(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @close(i32 %40)
  br label %42

42:                                               ; preds = %37, %23
  store i32 1, i32* @standby_signal_file_found, align 4
  br label %68

43:                                               ; preds = %17
  %44 = load i32, i32* @RECOVERY_SIGNAL_FILE, align 4
  %45 = call i64 @stat(i32 %44, %struct.stat* %1)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i32, i32* @RECOVERY_SIGNAL_FILE, align 4
  %49 = load i32, i32* @O_RDWR, align 4
  %50 = load i32, i32* @PG_BINARY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @sync_method, align 4
  %53 = call i32 @get_sync_bit(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @S_IRUSR, align 4
  %56 = load i32, i32* @S_IWUSR, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @BasicOpenFilePerm(i32 %48, i32 %54, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @pg_fsync(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %61, %47
  store i32 1, i32* @recovery_signal_file_found, align 4
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %67, %42
  store i32 0, i32* @StandbyModeRequested, align 4
  store i32 0, i32* @ArchiveRecoveryRequested, align 4
  %69 = load i32, i32* @standby_signal_file_found, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* @StandbyModeRequested, align 4
  store i32 1, i32* @ArchiveRecoveryRequested, align 4
  br label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @recovery_signal_file_found, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* @StandbyModeRequested, align 4
  store i32 1, i32* @ArchiveRecoveryRequested, align 4
  br label %77

76:                                               ; preds = %72
  br label %90

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* @StandbyModeRequested, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* @IsUnderPostmaster, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @FATAL, align 4
  %86 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %87 = call i32 @errcode(i32 %86)
  %88 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %89 = call i32 @ereport(i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %6, %76, %84, %81, %78
  ret void
}

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @BasicOpenFilePerm(i32, i32, i32) #1

declare dso_local i32 @get_sync_bit(i32) #1

declare dso_local i32 @pg_fsync(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @errcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
