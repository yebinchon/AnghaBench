; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_isMatchOfColumn.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_isMatchOfColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Op2 = type { i8*, i8 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.Op2.0 = type { i8*, i8 }

@isMatchOfColumn.aOp = internal constant [4 x %struct.Op2] [%struct.Op2 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 -127 }, %struct.Op2 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 -125 }, %struct.Op2 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 -126 }, %struct.Op2 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8 -128 }], align 16
@.str = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"like\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@TK_FUNCTION = common dso_local global i64 0, align 8
@TK_COLUMN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @isMatchOfColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isMatchOfColumn(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TK_FUNCTION, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %6, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = icmp eq %struct.TYPE_11__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %15
  store i32 0, i32* %3, align 4
  br label %76

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %7, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TK_COLUMN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %28
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IsVirtual(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %28
  store i32 0, i32* %3, align 4
  br label %76

47:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ArraySize(%struct.Op2.0* bitcast ([4 x %struct.Op2]* @isMatchOfColumn.aOp to %struct.Op2.0*))
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x %struct.Op2], [4 x %struct.Op2]* @isMatchOfColumn.aOp, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.Op2, %struct.Op2* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 16
  %62 = call i64 @sqlite3StrICmp(i32 %56, i8* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %52
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x %struct.Op2], [4 x %struct.Op2]* @isMatchOfColumn.aOp, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.Op2, %struct.Op2* %67, i32 0, i32 1
  %69 = load i8, i8* %68, align 8
  %70 = load i8*, i8** %5, align 8
  store i8 %69, i8* %70, align 1
  store i32 1, i32* %3, align 4
  br label %76

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %48

75:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %64, %46, %27, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @IsVirtual(i32) #1

declare dso_local i32 @ArraySize(%struct.Op2.0*) #1

declare dso_local i64 @sqlite3StrICmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
