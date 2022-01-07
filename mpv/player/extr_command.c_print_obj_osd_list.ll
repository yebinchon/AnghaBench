; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_print_obj_osd_list.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_print_obj_osd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_obj_settings = type { i32, i64*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"%s [\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%s=%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" (disabled)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(empty)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.m_obj_settings*)* @print_obj_osd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_obj_osd_list(%struct.m_obj_settings* %0) #0 {
  %2 = alloca %struct.m_obj_settings*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.m_obj_settings* %0, %struct.m_obj_settings** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %97, %1
  %7 = load %struct.m_obj_settings*, %struct.m_obj_settings** %2, align 8
  %8 = icmp ne %struct.m_obj_settings* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.m_obj_settings*, %struct.m_obj_settings** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %10, i64 %12
  %14 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %9, %6
  %18 = phi i1 [ false, %6 ], [ %16, %9 ]
  br i1 %18, label %19, label %100

19:                                               ; preds = %17
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.m_obj_settings*, %struct.m_obj_settings** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %21, i64 %23
  %25 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i8* %27, i8** %3, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %78, %19
  %29 = load %struct.m_obj_settings*, %struct.m_obj_settings** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %29, i64 %31
  %33 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.m_obj_settings*, %struct.m_obj_settings** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %37, i64 %39
  %41 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %36, %28
  %49 = phi i1 [ false, %28 ], [ %47, %36 ]
  br i1 %49, label %50, label %81

50:                                               ; preds = %48
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %56 = load %struct.m_obj_settings*, %struct.m_obj_settings** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %56, i64 %58
  %60 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.m_obj_settings*, %struct.m_obj_settings** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %66, i64 %68
  %70 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %55, i64 %65, i64 %76)
  store i8* %77, i8** %3, align 8
  br label %78

78:                                               ; preds = %50
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %5, align 4
  br label %28

81:                                               ; preds = %48
  %82 = load i8*, i8** %3, align 8
  %83 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %83, i8** %3, align 8
  %84 = load %struct.m_obj_settings*, %struct.m_obj_settings** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %84, i64 %86
  %88 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %81
  %92 = load i8*, i8** %3, align 8
  %93 = call i8* @talloc_strdup_append(i8* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %91, %81
  %95 = load i8*, i8** %3, align 8
  %96 = call i8* @talloc_strdup_append(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %96, i8** %3, align 8
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %6

100:                                              ; preds = %17
  %101 = load i8*, i8** %3, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %104, i8** %3, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i8*, i8** %3, align 8
  ret i8* %106
}

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, ...) #1

declare dso_local i8* @talloc_strdup_append(i8*, i8*) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
