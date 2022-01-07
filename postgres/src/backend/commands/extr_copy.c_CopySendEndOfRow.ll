; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopySendEndOfRow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopySendEndOfRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not write to COPY program: %m\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"could not write to COPY file: %m\00", align 1
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_CONNECTION_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"connection lost during COPY to stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @CopySendEndOfRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopySendEndOfRow(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %103 [
    i32 130, label %10
    i32 128, label %61
    i32 129, label %85
    i32 131, label %101
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = call i32 @CopySendChar(%struct.TYPE_9__* %16, i8 signext 10)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fwrite(i32 %21, i32 %24, i32 1, i32 %27)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ferror(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %30, %18
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i32, i32* @errno, align 4
  %43 = load i32, i32* @EPIPE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = call i32 @ClosePipeToProgram(%struct.TYPE_9__* %46)
  %48 = load i32, i32* @EPIPE, align 4
  store i32 %48, i32* @errno, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @ERROR, align 4
  %51 = call i32 (...) @errcode_for_file_access()
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @ereport(i32 %50, i32 %52)
  br label %59

54:                                               ; preds = %36
  %55 = load i32, i32* @ERROR, align 4
  %56 = call i32 (...) @errcode_for_file_access()
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %30
  br label %103

61:                                               ; preds = %1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = call i32 @CopySendChar(%struct.TYPE_9__* %67, i8 signext 10)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pq_putbytes(i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load i32, i32* @FATAL, align 4
  %80 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %81 = call i32 @errcode(i32 %80)
  %82 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 @ereport(i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %78, %69
  br label %103

85:                                               ; preds = %1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = call i32 @CopySendChar(%struct.TYPE_9__* %91, i8 signext 10)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pq_putmessage(i8 signext 100, i32 %96, i32 %99)
  br label %103

101:                                              ; preds = %1
  %102 = call i32 @Assert(i32 0)
  br label %103

103:                                              ; preds = %1, %101, %93, %84, %60
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = call i32 @resetStringInfo(%struct.TYPE_8__* %104)
  ret void
}

declare dso_local i32 @CopySendChar(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @ferror(i32) #1

declare dso_local i32 @ClosePipeToProgram(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pq_putbytes(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @pq_putmessage(i8 signext, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
