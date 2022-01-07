; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_dosinst.c_init_vimrc_choices.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_dosinst.c_init_vimrc_choices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 (i64)*, i32* }

@vimrc = common dso_local global i64 0, align 8
@installdir = common dso_local global i8* null, align 8
@runtimeidx = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"_vimrc\00", align 1
@oldvimrc = common dso_local global i64* null, align 8
@NUL = common dso_local global i64 0, align 8
@choices = common dso_local global %struct.TYPE_2__* null, align 8
@choice_count = common dso_local global i64 0, align 8
@install_vimrc = common dso_local global i32* null, align 8
@compat_text = common dso_local global i32 0, align 4
@compat_choices = common dso_local global i32* null, align 8
@compat_choice = common dso_local global i64 0, align 8
@remap_text = common dso_local global i32 0, align 4
@remap_choices = common dso_local global i32* null, align 8
@remap_choice = common dso_local global i64 0, align 8
@mouse_text = common dso_local global i32 0, align 4
@mouse_choices = common dso_local global i32* null, align 8
@mouse_choice = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_vimrc_choices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vimrc_choices() #0 {
  %1 = load i64, i64* @vimrc, align 8
  %2 = load i8*, i8** @installdir, align 8
  %3 = call i32 @strcpy(i64 %1, i8* %2)
  %4 = load i64, i64* @vimrc, align 8
  %5 = load i64, i64* @runtimeidx, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @strcpy(i64 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i64*, i64** @oldvimrc, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NUL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %14 = load i64, i64* @choice_count, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  br label %23

17:                                               ; preds = %0
  %18 = load i32*, i32** @install_vimrc, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %20 = load i64, i64* @choice_count, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32* %18, i32** %22, align 8
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %25 = load i64, i64* @choice_count, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load i64, i64* @choice_count, align 8
  %29 = call i32 @change_vimrc_choice(i64 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %31 = load i64, i64* @choice_count, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 (i64)* @change_vimrc_choice, i32 (i64)** %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %35 = load i64, i64* @choice_count, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i64, i64* @choice_count, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* @choice_count, align 8
  %40 = load i64, i64* @choice_count, align 8
  %41 = load i32, i32* @compat_text, align 4
  %42 = load i32*, i32** @compat_choices, align 8
  %43 = load i64, i64* @compat_choice, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @alloc_text(i64 %40, i32 %41, i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %48 = load i64, i64* @choice_count, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 (i64)* @change_run_choice, i32 (i64)** %50, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %52 = load i64, i64* @choice_count, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load i64*, i64** @oldvimrc, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NUL, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %61 = load i64, i64* @choice_count, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load i64, i64* @choice_count, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* @choice_count, align 8
  %66 = load i64, i64* @choice_count, align 8
  %67 = load i32, i32* @remap_text, align 4
  %68 = load i32*, i32** @remap_choices, align 8
  %69 = load i64, i64* @remap_choice, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @alloc_text(i64 %66, i32 %67, i32 %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %74 = load i64, i64* @choice_count, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i32 (i64)* @change_remap_choice, i32 (i64)** %76, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %78 = load i64, i64* @choice_count, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load i64*, i64** @oldvimrc, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NUL, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %87 = load i64, i64* @choice_count, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load i64, i64* @choice_count, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* @choice_count, align 8
  %92 = load i64, i64* @choice_count, align 8
  %93 = load i32, i32* @mouse_text, align 4
  %94 = load i32*, i32** @mouse_choices, align 8
  %95 = load i64, i64* @mouse_choice, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @alloc_text(i64 %92, i32 %93, i32 %97)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %100 = load i64, i64* @choice_count, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i32 (i64)* @change_mouse_choice, i32 (i64)** %102, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %104 = load i64, i64* @choice_count, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  %107 = load i64*, i64** @oldvimrc, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NUL, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %113 = load i64, i64* @choice_count, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 8
  %116 = load i64, i64* @choice_count, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* @choice_count, align 8
  ret void
}

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @change_vimrc_choice(i64) #1

declare dso_local i32 @alloc_text(i64, i32, i32) #1

declare dso_local i32 @change_run_choice(i64) #1

declare dso_local i32 @change_remap_choice(i64) #1

declare dso_local i32 @change_mouse_choice(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
