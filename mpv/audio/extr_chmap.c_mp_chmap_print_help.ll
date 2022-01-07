; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_print_help.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Speakers:\0A\00", align 1
@MP_SPEAKER_ID_COUNT = common dso_local global i32 0, align 4
@speaker_names = common dso_local global i64** null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"    %-16s (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Standard layouts:\0A\00", align 1
@std_layout_names = common dso_local global i64** null, align 8
@MP_NUM_CHANNELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"    unknown%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_chmap_print_help(%struct.mp_log* %0) #0 {
  %2 = alloca %struct.mp_log*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %2, align 8
  %6 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  %7 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %39, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MP_SPEAKER_ID_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load i64**, i64*** @speaker_names, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64*, i64** %13, i64 %15
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %12
  %22 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  %23 = load i64**, i64*** @speaker_names, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64*, i64** %23, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64**, i64*** @speaker_names, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64*, i64** %30, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %36)
  br label %38

38:                                               ; preds = %21, %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %8

42:                                               ; preds = %8
  %43 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  %44 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %71, %42
  %46 = load i64**, i64*** @std_layout_names, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64*, i64** %46, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %45
  %55 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  %56 = load i64**, i64*** @std_layout_names, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64**, i64*** @std_layout_names, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64*, i64** %63, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %69)
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %45

74:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %84, %74
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @MP_NUM_CHANNELS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %75

87:                                               ; preds = %75
  ret void
}

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
