; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_dosinst.c_change_vimrc_choice.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_dosinst.c_change_vimrc_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@choices = common dso_local global %struct.TYPE_2__* null, align 8
@oldvimrc = common dso_local global i64* null, align 8
@NUL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Do NOT change startup file %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Do NOT create startup file %s\00", align 1
@vimrc = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Overwrite startup file %s with:\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Create startup file %s with:\00", align 1
@install_vimrc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @change_vimrc_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_vimrc_choice(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = load i64*, i64** @oldvimrc, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NUL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = load i64*, i64** @oldvimrc, align 8
  %18 = call i32 @alloc_text(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64* %17)
  br label %23

19:                                               ; preds = %10
  %20 = load i32, i32* %2, align 4
  %21 = load i64*, i64** @vimrc, align 8
  %22 = call i32 @alloc_text(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64* %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %85

47:                                               ; preds = %1
  %48 = load i64*, i64** @oldvimrc, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NUL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  %54 = load i64*, i64** @oldvimrc, align 8
  %55 = call i32 @alloc_text(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64* %54)
  br label %60

56:                                               ; preds = %47
  %57 = load i32, i32* %2, align 4
  %58 = load i64*, i64** @vimrc, align 8
  %59 = call i32 @alloc_text(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64* %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32*, i32** @install_vimrc, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* %61, i32** %66, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %60, %23
  ret void
}

declare dso_local i32 @alloc_text(i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
