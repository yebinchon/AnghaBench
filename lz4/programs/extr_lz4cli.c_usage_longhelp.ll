; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4cli.c_usage_longhelp.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4cli.c_usage_longhelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"****************************\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"***** Advanced comment *****\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Which values can [output] have ? \0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"---------------------------------\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"[output] : a filename \0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"          '%s', or '-' for standard output (pipe mode)\0A\00", align 1
@stdoutmark = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"          '%s' to discard output (test mode) \0A\00", align 1
@NULL_OUTPUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [77 x i8] c"[output] can be left empty. In this case, it receives the following value :\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"          - if stdout is not the console, then [output] = stdout \0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"          - if stdout is console : \0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"               + for compression, output to filename%s \0A\00", align 1
@LZ4_EXTENSION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [69 x i8] c"               + for decompression, output to filename without '%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"                    > if input filename has no '%s' extension : error \0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Compression levels : \0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"---------------------\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"-0 ... -2  => Fast compression, all identicals\0A\00", align 1
@.str.17 = private unnamed_addr constant [78 x i8] c"-3 ... -%d => High compression; higher number == more compression but slower\0A\00", align 1
@LZ4HC_CLEVEL_MAX = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"stdin, stdout and the console : \0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"--------------------------------\0A\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"To protect the console from binary flooding (bad argument mistake)\0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"%s will refuse to read from console, or write to console \0A\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"except if '-c' command is specified, to force output to console \0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Simple example :\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@.str.25 = private unnamed_addr constant [72 x i8] c"1 : compress 'filename' fast, using default output name 'filename.lz4'\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"          %s filename\0A\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"Short arguments can be aggregated. For example :\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"----------------------------------\0A\00", align 1
@.str.29 = private unnamed_addr constant [78 x i8] c"2 : compress 'filename' in high compression mode, overwrite output if exists\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"          %s -9 -f filename \0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"    is equivalent to :\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"          %s -9f filename \0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"%s can be used in 'pure pipe mode'. For example :\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"-------------------------------------\0A\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c"3 : compress data stream from 'generator', send result to 'consumer'\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"          generator | %s | consumer \0A\00", align 1
@g_lz4c_legacy_commands = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [23 x i8] c"***** Warning  ***** \0A\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"Legacy arguments take precedence. Therefore : \0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"--------------------------------- \0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"          %s -hc filename \0A\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"means 'compress filename in high compression mode' \0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"It is not equivalent to : \0A\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"          %s -h -c filename \0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"which displays help text and exits \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usage_longhelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_longhelp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @usage_advanced(i8* %3)
  %5 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @stdoutmark, align 4
  %14 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @NULL_OUTPUT, align 4
  %16 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %15)
  %17 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %20 = load i32, i32* @LZ4_EXTENSION, align 4
  %21 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @LZ4_EXTENSION, align 4
  %23 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @LZ4_EXTENSION, align 4
  %25 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0), i32 %24)
  %26 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0))
  %30 = load i32, i32* @LZ4HC_CLEVEL_MAX, align 4
  %31 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.17, i64 0, i64 0), i32 %30)
  %32 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0))
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i8* %36)
  %38 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.25, i64 0, i64 0))
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i8* %43)
  %45 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.29, i64 0, i64 0))
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i8* %49)
  %51 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0))
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i8* %52)
  %54 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i8* %55)
  %57 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.35, i64 0, i64 0))
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i64 0, i64 0), i8* %59)
  %61 = load i64, i64* @g_lz4c_legacy_commands, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %1
  %64 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.38, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0))
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0), i8* %68)
  %70 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0))
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i8* %72)
  %74 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i64 0, i64 0))
  br label %75

75:                                               ; preds = %63, %1
  ret i32 0
}

declare dso_local i32 @usage_advanced(i8*) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
