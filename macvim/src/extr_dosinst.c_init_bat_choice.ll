; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_dosinst.c_init_bat_choice.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_dosinst.c_init_bat_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 (i64)*, i32*, i32 }

@targets = common dso_local global %struct.TYPE_3__* null, align 8
@choices = common dso_local global %struct.TYPE_4__* null, align 8
@choice_count = common dso_local global i64 0, align 8
@install_bat_choice = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@default_bat_dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"WINDIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"C:/Windows\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_bat_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bat_choice(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @targets, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @targets, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %4, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %21 = load i64, i64* @choice_count, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = load i32, i32* @install_bat_choice, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %26 = load i64, i64* @choice_count, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32 %24, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %30 = load i64, i64* @choice_count, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %34 = load i64, i64* @choice_count, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %41 = load i64, i64* @choice_count, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 (i64)* @toggle_bat_choice, i32 (i64)** %43, align 8
  %44 = load i8, i8* @NUL, align 1
  %45 = load i8*, i8** %3, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i64, i64* @choice_count, align 8
  %47 = call i32 @toggle_bat_choice(i64 %46)
  br label %132

48:                                               ; preds = %1
  %49 = load i8*, i8** @default_bat_dir, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** @default_bat_dir, align 8
  %54 = call i32 @strcpy(i8* %52, i8* %53)
  br label %116

55:                                               ; preds = %48
  %56 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* @NUL, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i8*, i8** %3, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @strcpy(i8* %67, i8* %68)
  br label %115

70:                                               ; preds = %59, %55
  %71 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @NUL, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74, %70
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @strcpy(i8* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %114

84:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %99, %84
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* @NUL, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i8*, i8** %5, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 59
  br label %97

97:                                               ; preds = %92, %85
  %98 = phi i1 [ false, %85 ], [ %96, %92 ]
  br i1 %98, label %99, label %108

99:                                               ; preds = %97
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %5, align 8
  %102 = load i8, i8* %100, align 1
  %103 = load i8*, i8** %3, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  br label %85

108:                                              ; preds = %97
  %109 = load i8, i8* @NUL, align 1
  %110 = load i8*, i8** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 %109, i8* %113, align 1
  br label %114

114:                                              ; preds = %108, %81
  br label %115

115:                                              ; preds = %114, %66
  br label %116

116:                                              ; preds = %115, %51
  %117 = load i8*, i8** %3, align 8
  %118 = call i32 @add_pathsep(i8* %117)
  %119 = load i64, i64* @choice_count, align 8
  %120 = load i8*, i8** %3, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @targets, align 8
  %122 = load i32, i32* %2, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @set_bat_text(i64 %119, i8* %120, i32 %126)
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %129 = load i64, i64* @choice_count, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i32 (i64)* @change_bat_choice, i32 (i64)** %131, align 8
  br label %132

132:                                              ; preds = %116, %39
  %133 = load i64, i64* @choice_count, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* @choice_count, align 8
  ret void
}

declare dso_local i32 @toggle_bat_choice(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @add_pathsep(i8*) #1

declare dso_local i32 @set_bat_text(i64, i8*, i32) #1

declare dso_local i32 @change_bat_choice(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
