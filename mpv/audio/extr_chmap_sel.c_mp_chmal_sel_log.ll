; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_mp_chmal_sel_log.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_mp_chmal_sel_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap_sel = type { i32, i64, i64, i32*, i32* }
%struct.mp_log = type { i32 }
%struct.mp_chmap = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c" - %s\0A\00", align 1
@MP_SPEAKER_ID_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" - #%s\0A\00", align 1
@MP_SPEAKER_ID_FC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" - waveext\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" - anything\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_chmal_sel_log(%struct.mp_chmap_sel* %0, %struct.mp_log* %1, i32 %2) #0 {
  %4 = alloca %struct.mp_chmap_sel*, align 8
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_chmap, align 4
  store %struct.mp_chmap_sel* %0, %struct.mp_chmap_sel** %4, align 8
  store %struct.mp_log* %1, %struct.mp_log** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @mp_msg_test(%struct.mp_log* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %87

15:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %19 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %26 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @mp_chmap_to_str(i32* %30)
  %32 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %23, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %16

36:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %66, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MP_SPEAKER_ID_COUNT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %43 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %66

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %9, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %9, i32 0, i32 1
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %53, align 4
  %55 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MP_SPEAKER_ID_FC, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %63

61:                                               ; preds = %51
  %62 = call i8* @mp_chmap_to_str_hr(%struct.mp_chmap* %9)
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %60 ], [ %62, %61 ]
  %65 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %63, %50
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %37

69:                                               ; preds = %37
  %70 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %71 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %75, i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %80 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %84, i32 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %14, %83, %78
  ret void
}

declare dso_local i32 @mp_msg_test(%struct.mp_log*, i32) #1

declare dso_local i32 @mp_msg(%struct.mp_log*, i32, i8*, ...) #1

declare dso_local i32 @mp_chmap_to_str(i32*) #1

declare dso_local i8* @mp_chmap_to_str_hr(%struct.mp_chmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
