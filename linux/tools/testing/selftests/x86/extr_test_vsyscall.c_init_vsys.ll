; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_init_vsys.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_init_vsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAPS_LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"[WARN]\09Could not open /proc/self/maps -- assuming vsyscall is r-x\0A\00", align 1
@vsyscall_map_r = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%p-%p %c-%cp %*x %*x:%*x %*u %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"[vsyscall]\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\09vsyscall map: %s\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"[FAIL]\09address range is nonsense\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\09vsyscall permissions are %c-%c\0A\00", align 1
@vsyscall_map_x = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"\09no vsyscall map in /proc/self/maps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_vsys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_vsys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %14 = load i32, i32* @MAPS_LINE_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %18 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %0
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @vsyscall_map_r, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %78

23:                                               ; preds = %0
  br label %24

24:                                               ; preds = %66, %23
  %25 = load i32, i32* @MAPS_LINE_LEN, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @fgets(i8* %17, i32 %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %24
  %30 = load i32, i32* @MAPS_LINE_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %12, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  %34 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %10, i8** %11, i8* %8, i8* %9, i8* %33)
  %35 = icmp ne i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 2, i32* %7, align 4
  br label %66

37:                                               ; preds = %29
  %38 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 2, i32* %7, align 4
  br label %66

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %17)
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, inttoptr (i64 -10485760 to i8*)
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, inttoptr (i64 -10481664 to i8*)
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %41
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i8, i8* %8, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %54, i32 %56)
  %58 = load i8, i8* %8, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 114
  %61 = zext i1 %60 to i32
  store i32 %61, i32* @vsyscall_map_r, align 4
  %62 = load i8, i8* %9, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 120
  %65 = zext i1 %64 to i32
  store i32 %65, i32* @vsyscall_map_x, align 4
  store i32 1, i32* %6, align 4
  store i32 3, i32* %7, align 4
  br label %66

66:                                               ; preds = %52, %40, %36
  %67 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %7, align 4
  switch i32 %68, label %81 [
    i32 2, label %24
    i32 3, label %69
  ]

69:                                               ; preds = %66, %24
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @fclose(i32* %70)
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* @vsyscall_map_r, align 4
  store i32 0, i32* @vsyscall_map_x, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %2, align 4
  store i32 %77, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %21
  %79 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %1, align 4
  ret i32 %80

81:                                               ; preds = %66
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**, i8*, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
