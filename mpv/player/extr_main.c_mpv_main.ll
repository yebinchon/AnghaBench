; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_main.c_mpv_main.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_main.c_mpv_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i64, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"Fatal error\00", align 1
@PT_QUIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Quit\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Some errors happened\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"End of file\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Errors when loading file\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Interrupted by error\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"No files played\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\0AExiting... (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpv_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call %struct.MPContext* (...) @mp_create()
  store %struct.MPContext* %11, %struct.MPContext** %6, align 8
  %12 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %13 = icmp ne %struct.MPContext* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %115

15:                                               ; preds = %2
  %16 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  br label %29

28:                                               ; preds = %20, %15
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i8** [ %27, %25 ], [ null, %28 ]
  store i8** %30, i8*** %7, align 8
  %31 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = call i32 @mp_initialize(%struct.MPContext* %31, i8** %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %38 = call i32 @mp_play_files(%struct.MPContext* %37)
  br label %39

39:                                               ; preds = %36, %29
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 1, i32* %9, align 4
  br label %95

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %94

47:                                               ; preds = %43
  %48 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %49 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PT_QUIT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %93

54:                                               ; preds = %47
  %55 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %66 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32 3, i32* %9, align 4
  br label %71

70:                                               ; preds = %64
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %71

71:                                               ; preds = %70, %69
  br label %92

72:                                               ; preds = %54
  %73 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %74 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %79 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  store i32 2, i32* %9, align 4
  br label %91

83:                                               ; preds = %77, %72
  %84 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %85 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  store i32 2, i32* %9, align 4
  br label %90

89:                                               ; preds = %83
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %90

90:                                               ; preds = %89, %88
  br label %91

91:                                               ; preds = %90, %82
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92, %53
  br label %94

94:                                               ; preds = %93, %46
  br label %95

95:                                               ; preds = %94, %42
  %96 = load i8*, i8** %10, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @MP_INFO(%struct.MPContext* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %104 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %109 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %113 = call i32 @mp_destroy(%struct.MPContext* %112)
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %14
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.MPContext* @mp_create(...) #1

declare dso_local i32 @mp_initialize(%struct.MPContext*, i8**) #1

declare dso_local i32 @mp_play_files(%struct.MPContext*) #1

declare dso_local i32 @MP_INFO(%struct.MPContext*, i8*, i8*) #1

declare dso_local i32 @mp_destroy(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
