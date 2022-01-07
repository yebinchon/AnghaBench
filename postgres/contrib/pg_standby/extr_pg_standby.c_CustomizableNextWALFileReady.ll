; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_CustomizableNextWALFileReady.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_CustomizableNextWALFileReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@WALFilePath = common dso_local global i32 0, align 4
@stat_buf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@WalSegSz = common dso_local global i32 0, align 4
@nextWALFileName = common dso_local global i32 0, align 4
@need_cleanup = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WAL segment size:     %d \0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Keep archive history: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s and later\0A\00", align 1
@exclusiveCleanupFileName = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"no cleanup required\0A\00", align 1
@XLOG_DATA = common dso_local global i32 0, align 4
@nextWALFileType = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"file size greater than expected\0A\00", align 1
@sleeptime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CustomizableNextWALFileReady to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CustomizableNextWALFileReady() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WALFilePath, align 4
  %3 = call i64 @stat(i32 %2, %struct.TYPE_3__* @stat_buf)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %65

5:                                                ; preds = %0
  %6 = load i32, i32* @WalSegSz, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %38

8:                                                ; preds = %5
  %9 = load i32, i32* @nextWALFileName, align 4
  %10 = call i64 @IsXLogFileName(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = call i64 (...) @SetWALSegSize()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = call i64 (...) @SetWALFileNameForCleanup()
  store i64 %16, i64* @need_cleanup, align 8
  %17 = load i64, i64* @debug, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @WalSegSz, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* %21, i32 %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @need_cleanup, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** @exclusiveCleanupFileName, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %15
  br label %37

37:                                               ; preds = %36, %12
  br label %38

38:                                               ; preds = %37, %8, %5
  %39 = load i32, i32* @WalSegSz, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stat_buf, i32 0, i32 0), align 4
  %43 = load i32, i32* @WalSegSz, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @XLOG_DATA, align 4
  store i32 %46, i32* @nextWALFileType, align 4
  store i32 1, i32* %1, align 4
  br label %66

47:                                               ; preds = %41, %38
  %48 = load i32, i32* @WalSegSz, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stat_buf, i32 0, i32 0), align 4
  %52 = load i32, i32* @WalSegSz, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i64, i64* @debug, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fflush(i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = call i32 @exit(i32 3) #3
  unreachable

64:                                               ; preds = %50, %47
  br label %65

65:                                               ; preds = %64, %0
  store i32 0, i32* %1, align 4
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i64 @stat(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @IsXLogFileName(i32) #1

declare dso_local i64 @SetWALSegSize(...) #1

declare dso_local i64 @SetWALFileNameForCleanup(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
