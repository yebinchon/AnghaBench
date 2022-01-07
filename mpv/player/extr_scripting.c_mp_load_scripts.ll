; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_scripting.c_mp_load_scripts.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_scripting.c_mp_load_scripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8**, i32 }

@.str = private unnamed_addr constant [8 x i8] c"scripts\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_load_scripts(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %9 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %44, %1
  %15 = load i8**, i8*** %3, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i8**, i8*** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %17, %14
  %25 = phi i1 [ false, %14 ], [ %23, %17 ]
  br i1 %25, label %26, label %47

26:                                               ; preds = %24
  %27 = load i8**, i8*** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %37 = load i8**, i8*** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @mp_load_user_script(%struct.MPContext* %36, i8* %41)
  br label %43

43:                                               ; preds = %35, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %14

47:                                               ; preds = %24
  %48 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %49 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %112

55:                                               ; preds = %47
  %56 = call i8* @talloc_new(i32* null)
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %59 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8** @mp_find_all_config_files(i8* %57, i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8** %61, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %106, %55
  %63 = load i8**, i8*** %6, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i8**, i8*** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br label %72

72:                                               ; preds = %65, %62
  %73 = phi i1 [ false, %62 ], [ %71, %65 ]
  br i1 %73, label %74, label %109

74:                                               ; preds = %72
  %75 = load i8*, i8** %5, align 8
  %76 = load i8**, i8*** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i8** @list_script_files(i8* %75, i8* %80)
  store i8** %81, i8*** %3, align 8
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %102, %74
  %83 = load i8**, i8*** %3, align 8
  %84 = icmp ne i8** %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i8**, i8*** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br label %92

92:                                               ; preds = %85, %82
  %93 = phi i1 [ false, %82 ], [ %91, %85 ]
  br i1 %93, label %94, label %105

94:                                               ; preds = %92
  %95 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %96 = load i8**, i8*** %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @mp_load_script(%struct.MPContext* %95, i8* %100)
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %82

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %62

109:                                              ; preds = %72
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @talloc_free(i8* %110)
  br label %112

112:                                              ; preds = %109, %54
  ret void
}

declare dso_local i32 @mp_load_user_script(%struct.MPContext*, i8*) #1

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8** @mp_find_all_config_files(i8*, i32, i8*) #1

declare dso_local i8** @list_script_files(i8*, i8*) #1

declare dso_local i32 @mp_load_script(%struct.MPContext*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
