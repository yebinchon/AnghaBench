; ModuleID = '/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_read.c'
source_filename = "/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i8 }

@phys = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TSX = common dso_local global i64 0, align 8
@dbg = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"res_stat[%x] = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libkdump_read(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  store i64 %9, i64* @phys, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %17, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %15
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %10

20:                                               ; preds = %10
  %21 = call i32 (...) @sched_yield()
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %40, %20
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %28 = load i64, i64* @TSX, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @libkdump_read_tsx()
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %26
  %33 = call i32 (...) @libkdump_read_signal_handler()
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = add i8 %38, 1
  store i8 %39, i8* %37, align 1
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %22

43:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %44 = load i64, i64* @dbg, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 256
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %67

59:                                               ; preds = %51
  %60 = load i32, i32* @INFO, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @debug(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %61, i8 signext %65)
  br label %67

67:                                               ; preds = %59, %58
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %47

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %43
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %100, %71
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 256
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %90 = sext i8 %89 to i32
  %91 = icmp sge i32 %88, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %92, %83, %75
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %72

103:                                              ; preds = %72
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @libkdump_read_tsx(...) #1

declare dso_local i32 @libkdump_read_signal_handler(...) #1

declare dso_local i32 @debug(i32, i8*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
