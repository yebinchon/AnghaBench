; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainIndexScanDetails.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainIndexScanDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@EXPLAIN_FORMAT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c" Backward\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" using %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Backward\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"NoMovement\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Scan Direction\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Index Name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_4__*)* @ExplainIndexScanDetails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExplainIndexScanDetails(i32 %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @explain_get_index_name(i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EXPLAIN_FORMAT_TEXT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @ScanDirectionIsBackward(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @appendStringInfoString(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @appendStringInfo(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %44

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %36 [
    i32 130, label %33
    i32 128, label %34
    i32 129, label %35
  ]

33:                                               ; preds = %31
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %37

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %37

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %37

36:                                               ; preds = %31
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %37

37:                                               ; preds = %36, %35, %34, %33
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = call i32 @ExplainPropertyText(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %38, %struct.TYPE_4__* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = call i32 @ExplainPropertyText(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %41, %struct.TYPE_4__* %42)
  br label %44

44:                                               ; preds = %37, %25
  ret void
}

declare dso_local i8* @explain_get_index_name(i32) #1

declare dso_local i64 @ScanDirectionIsBackward(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

declare dso_local i32 @ExplainPropertyText(i8*, i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
