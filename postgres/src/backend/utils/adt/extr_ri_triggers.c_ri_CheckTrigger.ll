; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_CheckTrigger.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_CheckTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"function \22%s\22 was not called by trigger manager\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"function \22%s\22 must be fired AFTER ROW\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"function \22%s\22 must be fired for INSERT\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"function \22%s\22 must be fired for UPDATE\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"function \22%s\22 must be fired for DELETE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i32)* @ri_CheckTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ri_CheckTrigger(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @CALLED_AS_TRIGGER(%struct.TYPE_6__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @ereport(i32 %16, i32 %20)
  br label %22

22:                                               ; preds = %15, %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TRIGGER_FIRED_AFTER(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TRIGGER_FIRED_FOR_ROW(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 @ereport(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %85 [
    i32 129, label %43
    i32 128, label %57
    i32 130, label %71
  ]

43:                                               ; preds = %41
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @TRIGGER_FIRED_BY_INSERT(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = call i32 @ereport(i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %49, %43
  br label %85

57:                                               ; preds = %41
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TRIGGER_FIRED_BY_UPDATE(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ERROR, align 4
  %65 = load i32, i32* @ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED, align 4
  %66 = call i32 @errcode(i32 %65)
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = call i32 @ereport(i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %63, %57
  br label %85

71:                                               ; preds = %41
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @TRIGGER_FIRED_BY_DELETE(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = call i32 @ereport(i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %41, %84, %70, %56
  ret void
}

declare dso_local i32 @CALLED_AS_TRIGGER(%struct.TYPE_6__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @TRIGGER_FIRED_AFTER(i32) #1

declare dso_local i32 @TRIGGER_FIRED_FOR_ROW(i32) #1

declare dso_local i32 @TRIGGER_FIRED_BY_INSERT(i32) #1

declare dso_local i32 @TRIGGER_FIRED_BY_UPDATE(i32) #1

declare dso_local i32 @TRIGGER_FIRED_BY_DELETE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
