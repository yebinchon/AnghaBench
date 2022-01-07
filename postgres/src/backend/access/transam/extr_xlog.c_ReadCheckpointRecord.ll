; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_ReadCheckpointRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_ReadCheckpointRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"invalid primary checkpoint link in control file\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid checkpoint link in backup_label file\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid primary checkpoint record\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid checkpoint record\00", align 1
@RM_XLOG_ID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"invalid resource manager ID in primary checkpoint record\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"invalid resource manager ID in checkpoint record\00", align 1
@XLR_INFO_MASK = common dso_local global i32 0, align 4
@XLOG_CHECKPOINT_SHUTDOWN = common dso_local global i32 0, align 4
@XLOG_CHECKPOINT_ONLINE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"invalid xl_info in primary checkpoint record\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"invalid xl_info in checkpoint record\00", align 1
@SizeOfXLogRecord = common dso_local global i64 0, align 8
@SizeOfXLogRecordDataHeaderShort = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"invalid length of primary checkpoint record\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"invalid length of checkpoint record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32, i32, i32)* @ReadCheckpointRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @ReadCheckpointRecord(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @XRecOffIsValid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %116

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %25 [
    i32 1, label %21
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @LOG, align 4
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %22, i32 %23)
  br label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @LOG, align 4
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %116

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @LOG, align 4
  %34 = call %struct.TYPE_4__* @ReadRecord(i32* %31, i32 %32, i32 %33, i32 1)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %10, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %116

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %47 [
    i32 1, label %43
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @LOG, align 4
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %44, i32 %45)
  br label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @LOG, align 4
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %116

52:                                               ; preds = %30
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RM_XLOG_ID, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %64 [
    i32 1, label %60
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* @LOG, align 4
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %61, i32 %62)
  br label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @LOG, align 4
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %67 = call i32 @ereport(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %116

69:                                               ; preds = %52
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @XLR_INFO_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @XLOG_CHECKPOINT_SHUTDOWN, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @XLOG_CHECKPOINT_ONLINE, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  switch i32 %84, label %89 [
    i32 1, label %85
  ]

85:                                               ; preds = %83
  %86 = load i32, i32* @LOG, align 4
  %87 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %88 = call i32 @ereport(i32 %86, i32 %87)
  br label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @LOG, align 4
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %92 = call i32 @ereport(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %85
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %116

94:                                               ; preds = %79, %69
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SizeOfXLogRecord, align 8
  %99 = load i64, i64* @SizeOfXLogRecordDataHeaderShort, align 8
  %100 = add nsw i64 %98, %99
  %101 = add i64 %100, 4
  %102 = icmp ne i64 %97, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  switch i32 %104, label %109 [
    i32 1, label %105
  ]

105:                                              ; preds = %103
  %106 = load i32, i32* @LOG, align 4
  %107 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %108 = call i32 @ereport(i32 %106, i32 %107)
  br label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @LOG, align 4
  %111 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %112 = call i32 @ereport(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %116

114:                                              ; preds = %94
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** %5, align 8
  br label %116

116:                                              ; preds = %114, %113, %93, %68, %51, %40, %29, %18
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %117
}

declare dso_local i32 @XRecOffIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local %struct.TYPE_4__* @ReadRecord(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
