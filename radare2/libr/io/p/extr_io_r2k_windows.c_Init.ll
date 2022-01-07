; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_windows.c_Init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_windows.c_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"r2k\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Installing driver: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Error initalizating driver, try r2k://pathtodriver\0AEx: radare2.exe r2k://c:\\r2k.sys\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Driver present [OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @FALSE, align 8
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %3, align 4
  %6 = call i64 (...) @InitDriver()
  %7 = load i64, i64* @FALSE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = call i32 @TEXT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @TRUE, align 8
  %16 = call i32 @StartStopService(i32 %14, i64 %15)
  %17 = call i32 @TEXT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @RemoveService(i32 %17)
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @TEXT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @TEXT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = call i64 @InstallService(i8* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = call i32 @TEXT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @FALSE, align 8
  %29 = call i32 @StartStopService(i32 %27, i64 %28)
  %30 = call i64 (...) @InitDriver()
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %13
  br label %35

33:                                               ; preds = %9
  %34 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %32
  br label %40

36:                                               ; preds = %1
  %37 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i64, i64* @TRUE, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %35
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @InitDriver(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @StartStopService(i32, i64) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @RemoveService(i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i64 @InstallService(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
