; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsendDescribe.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsendDescribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"function requires at least protocol version 3.0\0A\00", align 1
@PGQUERY_DESCRIBE = common dso_local global i32 0, align 4
@PGASYNC_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8, i8*)* @PQsendDescribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PQsendDescribe(%struct.TYPE_9__* %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %11

11:                                               ; preds = %10, %3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = call i32 @PQsendQueryStart(%struct.TYPE_9__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %80

16:                                               ; preds = %11
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @PG_PROTOCOL_MAJOR(i32 %19)
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = call i32 @libpq_gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @printfPQExpBuffer(i32* %24, i32 %25)
  store i32 0, i32* %4, align 4
  br label %80

27:                                               ; preds = %16
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call i64 @pqPutMsgStart(i8 signext 68, i32 0, %struct.TYPE_9__* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %6, align 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = call i64 @pqPutc(i8 signext %32, %struct.TYPE_9__* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = call i64 @pqPuts(i8* %37, %struct.TYPE_9__* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = call i64 @pqPutMsgEnd(%struct.TYPE_9__* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %36, %31, %27
  br label %79

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = call i64 @pqPutMsgStart(i8 signext 83, i32 0, %struct.TYPE_9__* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = call i64 @pqPutMsgEnd(%struct.TYPE_9__* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  br label %79

55:                                               ; preds = %50
  %56 = load i32, i32* @PGQUERY_DESCRIBE, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @free(i32* %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %55
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = call i64 @pqFlush(%struct.TYPE_9__* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @PGASYNC_BUSY, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  store i32 1, i32* %4, align 4
  br label %80

79:                                               ; preds = %74, %54, %45
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %75, %22, %15
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @PQsendQueryStart(%struct.TYPE_9__*) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i64 @pqPutMsgStart(i8 signext, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @pqPutc(i8 signext, %struct.TYPE_9__*) #1

declare dso_local i64 @pqPuts(i8*, %struct.TYPE_9__*) #1

declare dso_local i64 @pqPutMsgEnd(%struct.TYPE_9__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
