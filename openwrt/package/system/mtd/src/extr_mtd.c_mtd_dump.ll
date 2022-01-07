; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_mtd_dump.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_mtd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Dumping %s ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@mtdsize = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@erasesize = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"skipping bad block at 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @mtd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_dump(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @quiet, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @mtd_check_open(i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %4, align 4
  br label %107

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @mtdsize, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SEEK_SET, align 4
  %41 = call i32 @lseek(i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @erasesize, align 4
  %44 = call i8* @malloc(i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %107

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %99, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @erasesize, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @erasesize, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @read(i32 %59, i8* %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EINTR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %99

70:                                               ; preds = %65
  store i32 -1, i32* %8, align 4
  br label %103

71:                                               ; preds = %57
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %71
  br label %102

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @mtd_block_is_bad(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %95

88:                                               ; preds = %79
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @write(i32 1, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %84
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %95, %69
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %49, label %102

102:                                              ; preds = %99, %78
  br label %103

103:                                              ; preds = %102, %70
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @close(i32 %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %47, %25
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mtd_check_open(i8*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @mtd_block_is_bad(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
