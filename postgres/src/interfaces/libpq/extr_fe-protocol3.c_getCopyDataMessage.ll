; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getCopyDataMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getCopyDataMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i8* }

@PGASYNC_COPY_BOTH = common dso_local global i8* null, align 8
@PGASYNC_COPY_IN = common dso_local global i8* null, align 8
@PGASYNC_BUSY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @getCopyDataMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getCopyDataMessage(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  br label %7

7:                                                ; preds = %103, %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i64 @pqGetc(i8* %4, %struct.TYPE_10__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %109

17:                                               ; preds = %7
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = call i64 @pqGetInt(i32* %5, i32 4, %struct.TYPE_10__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %109

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load i8, i8* %4, align 1
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @handleSyncLoss(%struct.TYPE_10__* %26, i8 signext %27, i32 %28)
  store i32 -2, i32* %2, align 4
  br label %109

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 4
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = sub i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = call i64 @pqCheckInBufferSpace(i32 %51, %struct.TYPE_10__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = load i8, i8* %4, align 1
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @handleSyncLoss(%struct.TYPE_10__* %56, i8 signext %57, i32 %58)
  store i32 -2, i32* %2, align 4
  br label %109

60:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %109

61:                                               ; preds = %30
  %62 = load i8, i8* %4, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %99 [
    i32 65, label %64
    i32 78, label %70
    i32 83, label %76
    i32 100, label %82
    i32 99, label %84
  ]

64:                                               ; preds = %61
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = call i32 @getNotify(%struct.TYPE_10__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %109

69:                                               ; preds = %64
  br label %103

70:                                               ; preds = %61
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = call i32 @pqGetErrorNotice3(%struct.TYPE_10__* %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %109

75:                                               ; preds = %70
  br label %103

76:                                               ; preds = %61
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = call i32 @getParameterStatus(%struct.TYPE_10__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %109

81:                                               ; preds = %76
  br label %103

82:                                               ; preds = %61
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %109

84:                                               ; preds = %61
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** @PGASYNC_COPY_BOTH, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i8*, i8** @PGASYNC_COPY_IN, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  br label %98

94:                                               ; preds = %84
  %95 = load i8*, i8** @PGASYNC_BUSY, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %90
  store i32 -1, i32* %2, align 4
  br label %109

99:                                               ; preds = %61
  %100 = load i8*, i8** @PGASYNC_BUSY, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  store i32 -1, i32* %2, align 4
  br label %109

103:                                              ; preds = %81, %75, %69
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %7

109:                                              ; preds = %99, %98, %82, %80, %74, %68, %60, %55, %25, %21, %16
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @pqGetc(i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @pqGetInt(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @handleSyncLoss(%struct.TYPE_10__*, i8 signext, i32) #1

declare dso_local i64 @pqCheckInBufferSpace(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @getNotify(%struct.TYPE_10__*) #1

declare dso_local i32 @pqGetErrorNotice3(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @getParameterStatus(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
