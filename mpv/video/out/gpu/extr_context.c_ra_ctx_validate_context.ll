; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_context.c_ra_ctx_validate_context.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_context.c_ra_ctx_validate_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.mp_log = type { i32 }
%struct.m_option = type { i32 }
%struct.bstr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GPU contexts (APIs):\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"    auto (autodetect)\0A\00", align 1
@contexts = common dso_local global %struct.TYPE_3__** null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"    %s (%s)\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ra_ctx_validate_context(%struct.mp_log* %0, %struct.m_option* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca %struct.m_option*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %3, i32* %13, align 4
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store %struct.m_option* %1, %struct.m_option** %9, align 8
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @bstr_equals0(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %20 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %22 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %45, %18
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @contexts, align 8
  %26 = call i32 @MP_ARRAY_SIZE(%struct.TYPE_3__** %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @contexts, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @contexts, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %36, i32 %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %23

48:                                               ; preds = %23
  %49 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %49, i32* %5, align 4
  br label %81

50:                                               ; preds = %4
  %51 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @bstr_equals0(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %81

56:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @contexts, align 8
  %60 = call i32 @MP_ARRAY_SIZE(%struct.TYPE_3__** %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @contexts, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @bstr_equals0(i32 %71, i8* %69)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 1, i32* %5, align 4
  br label %81

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %74, %55, %48
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @MP_ARRAY_SIZE(%struct.TYPE_3__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
