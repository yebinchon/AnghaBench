; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_bench.c_BMK_benchCLevel.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_bench.c_BMK_benchCLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET_REALTIME_PRIORITY = common dso_local global i32 0, align 4
@g_displayLevel = common dso_local global i32 0, align 4
@g_additionalParam = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"bench %s %s: input %u bytes, %u seconds, %u KB blocks\0A\00", align 1
@LZ4_VERSION_STRING = common dso_local global i32 0, align 4
@LZ4_GIT_COMMIT_STRING = common dso_local global i32 0, align 4
@g_nbSeconds = common dso_local global i32 0, align 4
@g_blockSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i32, i32, i64*, i32, i8*, i32)* @BMK_benchCLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_benchCLevel(i8* %0, i64 %1, i8* %2, i32 %3, i32 %4, i64* %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 92)
  store i8* %22, i8** %20, align 8
  %23 = load i8*, i8** %20, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %9
  %26 = load i8*, i8** %12, align 8
  %27 = call i8* @strrchr(i8* %26, i8 signext 47)
  store i8* %27, i8** %20, align 8
  br label %28

28:                                               ; preds = %25, %9
  %29 = load i8*, i8** %20, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %20, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %12, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @SET_REALTIME_PRIORITY, align 4
  %36 = load i32, i32* @g_displayLevel, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, i32* @g_additionalParam, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @LZ4_VERSION_STRING, align 4
  %43 = load i32, i32* @LZ4_GIT_COMMIT_STRING, align 4
  %44 = load i64, i64* %11, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @g_nbSeconds, align 4
  %47 = load i32, i32* @g_blockSize, align 4
  %48 = ashr i32 %47, 10
  %49 = call i32 @DISPLAY(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %45, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %41, %38, %34
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %19, align 4
  br label %58

58:                                               ; preds = %72, %56
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %19, align 4
  %67 = load i64*, i64** %15, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i8*, i8** %17, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @BMK_benchMem(i8* %63, i64 %64, i8* %65, i32 %66, i64* %67, i32 %68, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %19, align 4
  br label %58

75:                                               ; preds = %58
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @DISPLAY(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BMK_benchMem(i8*, i64, i8*, i32, i64*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
