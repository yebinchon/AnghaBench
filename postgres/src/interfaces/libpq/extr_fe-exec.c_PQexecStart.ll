; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQexecStart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQexecStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@PGRES_COPY_IN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"COPY terminated by new PQexec\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"COPY IN state must be terminated first\0A\00", align 1
@PGRES_COPY_OUT = common dso_local global i64 0, align 8
@PGASYNC_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"COPY OUT state must be terminated first\0A\00", align 1
@PGRES_COPY_BOTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"PQexec not allowed during COPY BOTH\0A\00", align 1
@CONNECTION_BAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @PQexecStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PQexecStart(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %80, %9
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = call %struct.TYPE_8__* @PQgetResult(%struct.TYPE_9__* %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %81

14:                                               ; preds = %10
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call i32 @PQclear(%struct.TYPE_8__* %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @PGRES_COPY_IN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @PG_PROTOCOL_MAJOR(i32 %26)
  %28 = icmp sge i32 %27, 3
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i32 @libpq_gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = call i64 @PQputCopyEnd(%struct.TYPE_9__* %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %82

35:                                               ; preds = %29
  br label %41

36:                                               ; preds = %23
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = call i32 @libpq_gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @printfPQExpBuffer(i32* %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %82

41:                                               ; preds = %35
  br label %73

42:                                               ; preds = %14
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @PGRES_COPY_OUT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PG_PROTOCOL_MAJOR(i32 %49)
  %51 = icmp sge i32 %50, 3
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @PGASYNC_BUSY, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = call i32 @libpq_gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @printfPQExpBuffer(i32* %58, i32 %59)
  store i32 0, i32* %2, align 4
  br label %82

61:                                               ; preds = %52
  br label %72

62:                                               ; preds = %42
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @PGRES_COPY_BOTH, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = call i32 @libpq_gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @printfPQExpBuffer(i32* %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %82

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %61
  br label %73

73:                                               ; preds = %72, %41
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CONNECTION_BAD, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %82

80:                                               ; preds = %73
  br label %10

81:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %79, %66, %56, %36, %34, %8
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_8__* @PQgetResult(%struct.TYPE_9__*) #1

declare dso_local i32 @PQclear(%struct.TYPE_8__*) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i64 @PQputCopyEnd(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
