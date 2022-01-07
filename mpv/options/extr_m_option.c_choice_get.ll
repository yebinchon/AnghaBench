; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_choice_get.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_choice_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.m_opt_choice_alternatives = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@MPV_FORMAT_FLAG = common dso_local global i32 0, align 4
@MPV_FORMAT_STRING = common dso_local global i32 0, align 4
@MPV_FORMAT_INT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.mpv_node*, i8*)* @choice_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choice_get(i32* %0, i8* %1, %struct.mpv_node* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_opt_choice_alternatives*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.m_opt_choice_alternatives* @get_choice(i32* %13, i8* %14, i32* %9)
  store %struct.m_opt_choice_alternatives* %15, %struct.m_opt_choice_alternatives** %10, align 8
  %16 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %10, align 8
  %17 = icmp ne %struct.m_opt_choice_alternatives* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  store i8* null, i8** %11, align 8
  %19 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %10, align 8
  %20 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strtol(i32 %21, i8** %11, i32 10)
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.m_opt_choice_alternatives* null, %struct.m_opt_choice_alternatives** %10, align 8
  br label %31

31:                                               ; preds = %30, %25, %18
  br label %32

32:                                               ; preds = %31, %4
  %33 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %10, align 8
  %34 = icmp ne %struct.m_opt_choice_alternatives* %33, null
  br i1 %34, label %35, label %74

35:                                               ; preds = %32
  store i32 -1, i32* %12, align 4
  %36 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %10, align 8
  %37 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  br label %50

42:                                               ; preds = %35
  %43 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %10, align 8
  %44 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @strcmp(i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %42
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32, i32* %12, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* @MPV_FORMAT_FLAG, align 4
  %55 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %56 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %59 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %73

61:                                               ; preds = %50
  %62 = load i32, i32* @MPV_FORMAT_STRING, align 4
  %63 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %64 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %10, align 8
  %67 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @talloc_strdup(i8* %65, i32 %68)
  %70 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %71 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %61, %53
  br label %82

74:                                               ; preds = %32
  %75 = load i32, i32* @MPV_FORMAT_INT64, align 4
  %76 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %77 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %80 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %73
  ret i32 1
}

declare dso_local %struct.m_opt_choice_alternatives* @get_choice(i32*, i8*, i32*) #1

declare dso_local i32 @strtol(i32, i8**, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @talloc_strdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
