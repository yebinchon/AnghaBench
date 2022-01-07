; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_event.c_mp_event_drop_files.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_event.c_mp_event_drop_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"osd-auto\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sub-add\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"loadfile\00", align 1
@DND_REPLACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"append-play\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_event_drop_files(%struct.input_ctx* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.input_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca [5 x i8*], align 16
  store %struct.input_ctx* %0, %struct.input_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %28, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i8**, i8*** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @mp_might_be_subtitle_file(i8* %24)
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8**, i8*** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %42, align 8
  %48 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* null, i8** %48, align 8
  %49 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %50 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %51 = call i32 @mp_input_run_cmd(%struct.input_ctx* %49, i8** %50)
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %35

55:                                               ; preds = %35
  br label %89

56:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %63, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8**, i8*** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %64, align 8
  %70 = getelementptr inbounds i8*, i8** %64, i64 1
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @DND_REPLACE, align 4
  %76 = icmp eq i32 %74, %75
  br label %77

77:                                               ; preds = %73, %61
  %78 = phi i1 [ false, %61 ], [ %76, %73 ]
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  store i8* %80, i8** %70, align 8
  %81 = getelementptr inbounds i8*, i8** %70, i64 1
  store i8* null, i8** %81, align 8
  %82 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %83 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  %84 = call i32 @mp_input_run_cmd(%struct.input_ctx* %82, i8** %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %57

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88, %55
  ret void
}

declare dso_local i32 @mp_might_be_subtitle_file(i8*) #1

declare dso_local i32 @mp_input_run_cmd(%struct.input_ctx*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
