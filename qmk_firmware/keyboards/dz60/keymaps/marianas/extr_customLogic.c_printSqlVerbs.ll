; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_customLogic.c_printSqlVerbs.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_customLogic.c_printSqlVerbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"LEFT JOIN\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"INNER JOIN \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FROM \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DISTINCT \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ORDER BY \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"WHERE \00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"ALTER SESSION SET CURRENT_SCHEMA = SUPPLY;\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"* \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printSqlVerbs(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %33 [
    i32 131, label %13
    i32 132, label %16
    i32 129, label %19
    i32 133, label %21
    i32 134, label %23
    i32 130, label %25
    i32 128, label %27
    i32 136, label %29
    i32 135, label %31
  ]

13:                                               ; preds = %11
  %14 = call i32 @SEND_STRING(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @activateRelativity()
  store i32 0, i32* %3, align 4
  br label %35

16:                                               ; preds = %11
  %17 = call i32 @SEND_STRING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 (...) @activateRelativity()
  store i32 0, i32* %3, align 4
  br label %35

19:                                               ; preds = %11
  %20 = call i32 @SEND_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

21:                                               ; preds = %11
  %22 = call i32 @SEND_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

23:                                               ; preds = %11
  %24 = call i32 @SEND_STRING(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

25:                                               ; preds = %11
  %26 = call i32 @SEND_STRING(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

27:                                               ; preds = %11
  %28 = call i32 @SEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

29:                                               ; preds = %11
  %30 = call i32 @SEND_STRING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

31:                                               ; preds = %11
  %32 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33, %2
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31, %29, %27, %25, %23, %21, %19, %16, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @activateRelativity(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
