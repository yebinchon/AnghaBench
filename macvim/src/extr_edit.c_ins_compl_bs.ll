; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_compl_bs.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_compl_bs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@curwin = common dso_local global %struct.TYPE_4__* null, align 8
@compl_col = common dso_local global i64 0, align 8
@ctrl_x_mode = common dso_local global i32 0, align 4
@CTRL_X_OMNI = common dso_local global i32 0, align 4
@K_BS = common dso_local global i32 0, align 4
@compl_length = common dso_local global i64 0, align 8
@compl_leader = common dso_local global i32* null, align 8
@compl_shown_match = common dso_local global i32* null, align 8
@compl_curr_match = common dso_local global i32* null, align 8
@NUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ins_compl_bs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ins_compl_bs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* (...) @ml_get_curline()
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %5, i64 %10
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mb_ptr_back(i32* %12, i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* @compl_col, align 8
  %23 = trunc i64 %22 to i32
  %24 = sub nsw i32 %21, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %0
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = ptrtoint i32* %27 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* @compl_col, align 8
  %35 = trunc i64 %34 to i32
  %36 = sub nsw i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load i32, i32* @ctrl_x_mode, align 4
  %40 = load i32, i32* @CTRL_X_OMNI, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %0
  %44 = load i32, i32* @K_BS, align 4
  store i32 %44, i32* %1, align 4
  br label %89

45:                                               ; preds = %38, %26
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @compl_col, align 8
  %52 = load i64, i64* @compl_length, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp sle i64 %50, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %45
  %56 = call i64 (...) @ins_compl_need_restart()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55, %45
  %59 = call i32 (...) @ins_compl_restart()
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32*, i32** @compl_leader, align 8
  %62 = call i32 @vim_free(i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = load i64, i64* @compl_col, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @compl_col, align 8
  %75 = sub nsw i64 %73, %74
  %76 = call i32* @vim_strnsave(i32* %65, i64 %75)
  store i32* %76, i32** @compl_leader, align 8
  %77 = load i32*, i32** @compl_leader, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %60
  %80 = call i32 (...) @ins_compl_new_leader()
  %81 = load i32*, i32** @compl_shown_match, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32*, i32** @compl_shown_match, align 8
  store i32* %84, i32** @compl_curr_match, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, i32* @NUL, align 4
  store i32 %86, i32* %1, align 4
  br label %89

87:                                               ; preds = %60
  %88 = load i32, i32* @K_BS, align 4
  store i32 %88, i32* %1, align 4
  br label %89

89:                                               ; preds = %87, %85, %43
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i32* @ml_get_curline(...) #1

declare dso_local i32 @mb_ptr_back(i32*, i32*) #1

declare dso_local i64 @ins_compl_need_restart(...) #1

declare dso_local i32 @ins_compl_restart(...) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i32* @vim_strnsave(i32*, i64) #1

declare dso_local i32 @ins_compl_new_leader(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
