; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_ClosePipeToProgram.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_ClosePipeToProgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not close pipe to external command: %m\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@ERRCODE_EXTERNAL_ROUTINE_EXCEPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"program \22%s\22 failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ClosePipeToProgram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ClosePipeToProgram(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @Assert(i32 %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ClosePipeStream(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 (...) @errcode_for_file_access()
  %17 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @ereport(i32 %15, i32 %17)
  br label %51

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SIGPIPE, align 4
  %35 = call i64 @wait_result_is_signal(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %51

38:                                               ; preds = %32, %27, %22
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @wait_result_to_str(i32 %46)
  %48 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = call i32 @ereport(i32 %39, i32 %48)
  br label %50

50:                                               ; preds = %38, %19
  br label %51

51:                                               ; preds = %37, %50, %14
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ClosePipeStream(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @wait_result_is_signal(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errdetail_internal(i8*, i32) #1

declare dso_local i32 @wait_result_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
