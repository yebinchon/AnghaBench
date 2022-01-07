; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4cli.c_usage_advanced.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4cli.c_usage_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WELCOME_MESSAGE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Advanced arguments :\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c" -V     : display Version number and exit \0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" -v     : verbose mode \0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c" -q     : suppress warnings; specify twice to suppress errors too\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c" -c     : force write to standard output, even if it is the console\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c" -t     : test compressed file integrity\0A\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c" -m     : multiple input files (implies automatic output filenames)\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c" -l     : compress using Legacy format (Linux kernel compression)\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c" -B#    : cut file into blocks of size # bytes [32+] \0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"                     or predefined block size [4-7] (default: 7) \0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c" -BI    : Block Independence (default) \0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c" -BD    : Block dependency (improves compression ratio) \0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c" -BX    : enable block checksum (default:disabled) \0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"--no-frame-crc : disable stream checksum (default:enabled) \0A\00", align 1
@.str.15 = private unnamed_addr constant [80 x i8] c"--content-size : compressed frame includes original size (default:not present)\0A\00", align 1
@.str.16 = private unnamed_addr constant [105 x i8] c"--list FILE : lists information about .lz4 files (useful for files compressed with --content-size flag)\0A\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"--[no-]sparse  : sparse mode (default:enabled on file, disabled on stdout)\0A\00", align 1
@.str.18 = private unnamed_addr constant [80 x i8] c"--favor-decSpeed: compressed files decompress faster, but are less compressed \0A\00", align 1
@.str.19 = private unnamed_addr constant [66 x i8] c"--fast[=#]: switch to ultra fast compression level (default: %i)\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"--best  : same as -%d\0A\00", align 1
@LZ4HC_CLEVEL_MAX = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"Benchmark arguments : \0A\00", align 1
@.str.22 = private unnamed_addr constant [71 x i8] c" -b#    : benchmark file(s), using # compression level (default : 1) \0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c" -e#    : test all compression levels from -bX to # (default : 1)\0A\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c" -i#    : minimum evaluation time in seconds (default : 3s) \0A\00", align 1
@g_lz4c_legacy_commands = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"Legacy arguments : \0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c" -c0    : fast compression \0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c" -c1    : high compression \0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c" -c2,-hc: very high compression \0A\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c" -y     : overwrite output without prompting \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usage_advanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_advanced(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** @WELCOME_MESSAGE, align 8
  %4 = call i32 (i8*, ...) @DISPLAY(i8* %3)
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @usage(i8* %5)
  %7 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.15, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.17, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.18, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.19, i64 0, i64 0), i32 1)
  %27 = load i32, i32* @LZ4HC_CLEVEL_MAX, align 4
  %28 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %27)
  %29 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.22, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i64 0, i64 0))
  %33 = load i64, i64* @g_lz4c_legacy_commands, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %1
  ret i32 0
}

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @usage(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
