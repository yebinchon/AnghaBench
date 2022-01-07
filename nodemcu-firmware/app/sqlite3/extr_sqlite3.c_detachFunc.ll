; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_detachFunc.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_detachFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no such database: %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot detach database %s\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"cannot DETACH database within transaction\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"database %s is locked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @detachFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detachFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @sqlite3_value_text(i32* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_5__* @sqlite3_context_db_handle(i32* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @UNUSED_PARAMETER(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %24

24:                                               ; preds = %23, %3
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %52

43:                                               ; preds = %31
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @sqlite3StrICmp(i32 %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %25

55:                                               ; preds = %50, %25
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 128, i8* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %107

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 128, i8* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %107

72:                                               ; preds = %65
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %79 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 128, i8* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %107

80:                                               ; preds = %72
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @sqlite3BtreeIsInReadTrans(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @sqlite3BtreeIsInBackup(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86, %80
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 128, i8* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  br label %107

96:                                               ; preds = %86
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @sqlite3BtreeClose(i64 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = call i32 @sqlite3CollapseDatabaseArray(%struct.TYPE_5__* %105)
  br label %111

107:                                              ; preds = %92, %77, %68, %61
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %110 = call i32 @sqlite3_result_error(i32* %108, i8* %109, i32 -1)
  br label %111

111:                                              ; preds = %107, %96
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local %struct.TYPE_5__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @sqlite3StrICmp(i32, i8*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @sqlite3BtreeIsInReadTrans(i64) #1

declare dso_local i64 @sqlite3BtreeIsInBackup(i64) #1

declare dso_local i32 @sqlite3BtreeClose(i64) #1

declare dso_local i32 @sqlite3CollapseDatabaseArray(%struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
