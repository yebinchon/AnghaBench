; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_farsi.c_chg_l_to_X_orX_.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_farsi.c_chg_l_to_X_orX_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@curwin = common dso_local global %struct.TYPE_4__* null, align 8
@p_ri = common dso_local global i64 0, align 8
@ALEF_ = common dso_local global i32 0, align 4
@ALEF_U_H_ = common dso_local global i32 0, align 4
@_AYN_ = common dso_local global i32 0, align 4
@AYN_ = common dso_local global i32 0, align 4
@_GHAYN_ = common dso_local global i32 0, align 4
@GHAYN_ = common dso_local global i32 0, align 4
@_HE_ = common dso_local global i32 0, align 4
@YE_ = common dso_local global i32 0, align 4
@IE_ = common dso_local global i32 0, align 4
@TEE_ = common dso_local global i32 0, align 4
@YEE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @chg_l_to_X_orX_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chg_l_to_X_orX_() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i32 (...) @ml_get_curline()
  %14 = call i64 @STRLEN(i32 %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %72

17:                                               ; preds = %7, %0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* @p_ri, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %72

27:                                               ; preds = %23, %17
  %28 = load i64, i64* @p_ri, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @dec_cursor()
  br label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @inc_cursor()
  br label %34

34:                                               ; preds = %32, %30
  %35 = call i32 (...) @gchar_cursor()
  switch i32 %35, label %58 [
    i32 138, label %36
    i32 137, label %38
    i32 130, label %40
    i32 136, label %42
    i32 129, label %44
    i32 135, label %46
    i32 128, label %48
    i32 132, label %50
    i32 134, label %52
    i32 133, label %54
    i32 131, label %56
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @ALEF_, align 4
  store i32 %37, i32* %1, align 4
  br label %59

38:                                               ; preds = %34
  %39 = load i32, i32* @ALEF_U_H_, align 4
  store i32 %39, i32* %1, align 4
  br label %59

40:                                               ; preds = %34
  %41 = load i32, i32* @_AYN_, align 4
  store i32 %41, i32* %1, align 4
  br label %59

42:                                               ; preds = %34
  %43 = load i32, i32* @AYN_, align 4
  store i32 %43, i32* %1, align 4
  br label %59

44:                                               ; preds = %34
  %45 = load i32, i32* @_GHAYN_, align 4
  store i32 %45, i32* %1, align 4
  br label %59

46:                                               ; preds = %34
  %47 = load i32, i32* @GHAYN_, align 4
  store i32 %47, i32* %1, align 4
  br label %59

48:                                               ; preds = %34
  %49 = load i32, i32* @_HE_, align 4
  store i32 %49, i32* %1, align 4
  br label %59

50:                                               ; preds = %34
  %51 = load i32, i32* @YE_, align 4
  store i32 %51, i32* %1, align 4
  br label %59

52:                                               ; preds = %34
  %53 = load i32, i32* @IE_, align 4
  store i32 %53, i32* %1, align 4
  br label %59

54:                                               ; preds = %34
  %55 = load i32, i32* @TEE_, align 4
  store i32 %55, i32* %1, align 4
  br label %59

56:                                               ; preds = %34
  %57 = load i32, i32* @YEE_, align 4
  store i32 %57, i32* %1, align 4
  br label %59

58:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36
  %60 = load i32, i32* %1, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @put_and_redo(i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i64, i64* @p_ri, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (...) @inc_cursor()
  br label %72

70:                                               ; preds = %65
  %71 = call i32 (...) @dec_cursor()
  br label %72

72:                                               ; preds = %16, %26, %70, %68
  ret void
}

declare dso_local i64 @STRLEN(i32) #1

declare dso_local i32 @ml_get_curline(...) #1

declare dso_local i32 @dec_cursor(...) #1

declare dso_local i32 @inc_cursor(...) #1

declare dso_local i32 @gchar_cursor(...) #1

declare dso_local i32 @put_and_redo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
