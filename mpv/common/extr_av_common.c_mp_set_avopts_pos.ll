; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_set_avopts_pos.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_set_avopts_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }

@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"AVOption '%s' not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not set AVOption %s='%s' (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_set_avopts_pos(%struct.mp_log* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [80 x i8], align 16
  store %struct.mp_log* %0, %struct.mp_log** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %71, %4
  %16 = load i8**, i8*** %8, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8**, i8*** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %74

28:                                               ; preds = %26
  %29 = load i8**, i8*** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %30, 2
  %32 = add nsw i32 %31, 0
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %29, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %36, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @resolve_positional_arg(i8* %43, i8** %11)
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %49 = call i32 @av_opt_set(i8* %45, i8* %46, i8* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %28
  %54 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 (%struct.mp_log*, i8*, i8*, ...) @mp_err(%struct.mp_log* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %55)
  store i32 -1, i32* %9, align 4
  br label %70

57:                                               ; preds = %28
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %63 = call i32 @av_strerror(i32 %61, i8* %62, i32 80)
  %64 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %68 = call i32 (%struct.mp_log*, i8*, i8*, ...) @mp_err(%struct.mp_log* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %66, i8* %67)
  store i32 -1, i32* %9, align 4
  br label %69

69:                                               ; preds = %60, %57
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %15

74:                                               ; preds = %26
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i32 @resolve_positional_arg(i8*, i8**) #1

declare dso_local i32 @av_opt_set(i8*, i8*, i8*, i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i8*, ...) #1

declare dso_local i32 @av_strerror(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
