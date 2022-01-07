; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_get_backend_current_activity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_get_backend_current_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i8* }

@BackendStatusArray = common dso_local global %struct.TYPE_5__* null, align 8
@MaxBackends = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"<insufficient privilege>\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"<command string not enabled>\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"<backend information not available>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pgstat_get_backend_current_activity(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @BackendStatusArray, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %71, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MaxBackends, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  br label %19

19:                                               ; preds = %37, %17
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @pgstat_begin_read_activity(%struct.TYPE_5__* %20, i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load volatile i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @pgstat_end_read_activity(%struct.TYPE_5__* %29, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @pgstat_read_activity_complete(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  br label %39

37:                                               ; preds = %19
  %38 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %19

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = call i32 (...) @superuser()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 (...) @GetUserId()
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %75

55:                                               ; preds = %48, %45, %42
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %75

63:                                               ; preds = %55
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @pgstat_clip_activity(i8* %66)
  store i8* %67, i8** %3, align 8
  br label %75

68:                                               ; preds = %39
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 1
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %6, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %13

74:                                               ; preds = %13
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %75

75:                                               ; preds = %74, %63, %62, %54
  %76 = load i8*, i8** %3, align 8
  ret i8* %76
}

declare dso_local i32 @pgstat_begin_read_activity(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pgstat_end_read_activity(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @pgstat_read_activity_complete(i32, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i64 @GetUserId(...) #1

declare dso_local i8* @pgstat_clip_activity(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
