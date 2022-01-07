; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_handle_input_choice.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_handle_input_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }

@ptdata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"New Target Temp:\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"New Value for %.10s-%2d: \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid selection %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_input_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_input_choice(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [48 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 %6, 65
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 0), align 8
  %11 = sext i8 %10 to i32
  %12 = add nsw i32 65, %11
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %15, 97
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 0), align 8
  %20 = sext i8 %19 to i32
  %21 = add nsw i32 97, %20
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %17, %8
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 97
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 65, i32 97
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 0), align 8
  %32 = sext i8 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = getelementptr inbounds [48 x i8], [48 x i8]* %3, i64 0, i64 0
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %53

38:                                               ; preds = %23
  %39 = getelementptr inbounds [48 x i8], [48 x i8]* %3, i64 0, i64 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ptdata, i32 0, i32 1), align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %51)
  br label %53

53:                                               ; preds = %38, %35
  %54 = getelementptr inbounds [48 x i8], [48 x i8]* %3, i64 0, i64 0
  %55 = call i32 (...) @diag_dev_rows()
  %56 = add nsw i32 %55, 2
  %57 = call i32 @write_dialogue_win(i8* %54, i32 %56, i32 2)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @handle_input_val(i32 %58)
  br label %66

60:                                               ; preds = %17, %14
  %61 = getelementptr inbounds [48 x i8], [48 x i8]* %3, i64 0, i64 0
  %62 = load i32, i32* %2, align 4
  %63 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %61, i32 48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [48 x i8], [48 x i8]* %3, i64 0, i64 0
  %65 = call i32 @write_dialogue_win(i8* %64, i32 8, i32 2)
  br label %66

66:                                               ; preds = %60, %53
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @write_dialogue_win(i8*, i32, i32) #1

declare dso_local i32 @diag_dev_rows(...) #1

declare dso_local i32 @handle_input_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
