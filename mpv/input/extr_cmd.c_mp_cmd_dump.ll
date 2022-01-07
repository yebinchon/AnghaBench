; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_cmd.c_mp_cmd_dump.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_cmd.c_mp_cmd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mp_cmd = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(NULL)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s, flags=%d, args=[\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_cmd_dump(%struct.mp_log* %0, i32 %1, i8* %2, %struct.mp_cmd* %3) #0 {
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mp_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.mp_log* %0, %struct.mp_log** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.mp_cmd* %3, %struct.mp_cmd** %8, align 8
  %11 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @mp_msg_test(%struct.mp_log* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %90

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %19, %16
  %25 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %26 = icmp ne %struct.mp_cmd* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %28, i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %90

31:                                               ; preds = %24
  %32 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %32, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %83, %31
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %44 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %41
  %48 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %49 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i8* @m_option_print(i32 %55, i32* %62)
  store i8* %63, i8** %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %47
  %67 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %67, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %47
  %71 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** %10, align 8
  br label %78

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i8* [ %76, %75 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %77 ]
  %80 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %71, i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @talloc_free(i8* %81)
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %41

86:                                               ; preds = %41
  %87 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %87, i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %27, %15
  ret void
}

declare dso_local i32 @mp_msg_test(%struct.mp_log*, i32) #1

declare dso_local i32 @mp_msg(%struct.mp_log*, i32, i8*, ...) #1

declare dso_local i8* @m_option_print(i32, i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
