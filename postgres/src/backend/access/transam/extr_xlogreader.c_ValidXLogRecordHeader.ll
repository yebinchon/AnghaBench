; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_ValidXLogRecordHeader.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_ValidXLogRecordHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@SizeOfXLogRecord = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"invalid record length at %X/%X: wanted %u, got %u\00", align 1
@RM_MAX_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid resource manager ID %u at %X/%X\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"record with incorrect prev-link %X/%X at %X/%X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.TYPE_3__*, i32)* @ValidXLogRecordHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ValidXLogRecordHeader(i32* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SizeOfXLogRecord, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 32
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @SizeOfXLogRecord, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i32*, i8*, i64, i64, i64, ...) @report_invalid_record(i32* %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %23, i64 %24, i64 %27)
  store i32 0, i32* %6, align 4
  br label %98

29:                                               ; preds = %5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RM_MAX_ID, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 32
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 (i32*, i8*, i64, i64, i64, ...) @report_invalid_record(i32* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %39, i64 %42, i64 %44)
  store i32 0, i32* %6, align 4
  br label %98

46:                                               ; preds = %29
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %72, label %55

55:                                               ; preds = %49
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 32
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 32
  %68 = sext i32 %67 to i64
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 (i32*, i8*, i64, i64, i64, ...) @report_invalid_record(i32* %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %61, i64 %65, i64 %68, i64 %70)
  store i32 0, i32* %6, align 4
  br label %98

72:                                               ; preds = %49
  br label %97

73:                                               ; preds = %46
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 32
  %85 = sext i32 %84 to i64
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* %8, align 4
  %91 = ashr i32 %90, 32
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 (i32*, i8*, i64, i64, i64, ...) @report_invalid_record(i32* %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %85, i64 %89, i64 %92, i64 %94)
  store i32 0, i32* %6, align 4
  br label %98

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96, %72
  store i32 1, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %79, %55, %35, %17
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @report_invalid_record(i32*, i8*, i64, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
