; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_cmd.c_find_cmd.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_cmd.c_find_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.mp_log = type { i32 }
%struct.mp_cmd = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Command name missing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@mp_cmds = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Command '%.*s' not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.mp_cmd*, i64)* @find_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_cmd(%struct.mp_log* %0, %struct.mp_cmd* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca %struct.mp_cmd*, align 8
  %8 = alloca [80 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i64 %2, i64* %11, align 8
  store %struct.mp_log* %0, %struct.mp_log** %6, align 8
  store %struct.mp_cmd* %1, %struct.mp_cmd** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %17 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @BSTR_P(i64 %21)
  %23 = call i32 @snprintf(i8* %19, i32 80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %42, %18
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 95
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 %39
  store i8 45, i8* %40, align 1
  br label %41

41:                                               ; preds = %37, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %24

45:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %80, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mp_cmds, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %46
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mp_cmds, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @strcmp(i8* %55, i64 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %54
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mp_cmds, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %69, i32 0, i32 1
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  store i32 1, i32* %4, align 4
  br label %89

79:                                               ; preds = %54
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %46

83:                                               ; preds = %46
  %84 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @BSTR_P(i64 %86)
  %88 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %83, %64, %15
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @BSTR_P(i64) #1

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
