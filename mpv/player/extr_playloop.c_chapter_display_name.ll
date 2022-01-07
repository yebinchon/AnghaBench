; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_chapter_display_name.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_chapter_display_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"(%d) %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(unavailable)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"(%d) of %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @chapter_display_name(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @chapter_name(%struct.MPContext* %8, i32 %9)
  store i8* %10, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* (i32*, i8*, i32, ...) @talloc_asprintf(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16)
  store i8* %17, i8** %6, align 8
  br label %39

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  br label %38

23:                                               ; preds = %18
  %24 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %25 = call i32 @get_chapter_count(%struct.MPContext* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i8* (i32*, i8*, i32, ...) @talloc_asprintf(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i8* %31, i8** %6, align 8
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %7, align 4
  %36 = call i8* (i32*, i8*, i32, ...) @talloc_asprintf(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 %35)
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %32, %28
  br label %38

38:                                               ; preds = %37, %21
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i8*, i8** %6, align 8
  ret i8* %40
}

declare dso_local i8* @chapter_name(%struct.MPContext*, i32) #1

declare dso_local i8* @talloc_asprintf(i32*, i8*, i32, ...) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i32 @get_chapter_count(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
