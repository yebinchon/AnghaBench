; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_build_memory_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_build_memory_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@range_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"/proc/iomem\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"/proc/iomem: error %d: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@system_ram_str = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@start_addr = common dso_local global i8** null, align 8
@end_addr = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"RAM Ranges\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\09range %d: 0x%llx\09- 0x%llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"No valid address ranges found.  Error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @build_memory_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_memory_map() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 0, i64* @range_count, align 8
  %7 = call i32* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = load i32, i32* @errno, align 4
  %14 = call i8* @strerror(i32 %13)
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %12, i8* %14)
  %16 = load i32, i32* @errno, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %79

18:                                               ; preds = %0
  br label %19

19:                                               ; preds = %46, %18
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @fgets(i8* %20, i32 256, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %26 = load i8*, i8** @system_ram_str, align 8
  %27 = call i8* @strstr(i8* %25, i8* %26)
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 32, i8* %33, align 1
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %35 = call i8* @strtoull(i8* %34, i8** %6, i32 16)
  %36 = load i8**, i8*** @start_addr, align 8
  %37 = load i64, i64* @range_count, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  store i8* %35, i8** %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @strtoull(i8* %39, i8** null, i32 16)
  %41 = load i8**, i8*** @end_addr, align 8
  %42 = load i64, i64* @range_count, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8* %40, i8** %43, align 8
  %44 = load i64, i64* @range_count, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* @range_count, align 8
  br label %46

46:                                               ; preds = %29, %24
  br label %19

47:                                               ; preds = %19
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = call i32 (i8*, ...) @DEBUG_PRINT_L1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %69, %47
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @range_count, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = load i8**, i8*** @start_addr, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** @end_addr, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, ...) @DEBUG_PRINT_L1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %57, i8* %62, i8* %67)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i64, i64* @range_count, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %79

78:                                               ; preds = %72
  store i32 0, i32* %1, align 4
  br label %79

79:                                               ; preds = %78, %75, %10
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @DEBUG_PRINT_L1(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
