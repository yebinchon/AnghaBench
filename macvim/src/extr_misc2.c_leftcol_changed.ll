; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc2.c_leftcol_changed.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc2.c_leftcol_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_4__* null, align 8
@p_siso = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FAIL = common dso_local global i64 0, align 8
@NOT_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leftcol_changed() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 (...) @changed_cline_bef_curs()
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %11 = call i32 @W_WIDTH(%struct.TYPE_4__* %10)
  %12 = add nsw i32 %9, %11
  %13 = call i32 (...) @curwin_col_off()
  %14 = sub nsw i32 %12, %13
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %1, align 8
  %17 = call i32 (...) @validate_virtcol()
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @p_siso, align 8
  %23 = sub nsw i64 %21, %22
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %0
  %26 = load i8*, i8** @TRUE, align 8
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @p_siso, align 8
  %30 = sub nsw i64 %28, %29
  %31 = call i64 @coladvance(i64 %30)
  br label %54

32:                                               ; preds = %0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @p_siso, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp slt i64 %35, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load i8*, i8** @TRUE, align 8
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @p_siso, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i64 @coladvance(i64 %51)
  br label %53

53:                                               ; preds = %43, %32
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = call i32 @getvvcol(%struct.TYPE_4__* %55, i32* %57, i64* %2, i32* null, i64* %3)
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %1, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i8*, i8** @TRUE, align 8
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %4, align 4
  %65 = load i64, i64* %2, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call i64 @coladvance(i64 %66)
  br label %91

68:                                               ; preds = %54
  %69 = load i64, i64* %2, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %69, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load i8*, i8** @TRUE, align 8
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %4, align 4
  %78 = load i64, i64* %3, align 8
  %79 = add nsw i64 %78, 1
  %80 = call i64 @coladvance(i64 %79)
  %81 = load i64, i64* @FAIL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i64, i64* %2, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = call i32 (...) @changed_cline_bef_curs()
  br label %89

89:                                               ; preds = %83, %75
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %62
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** @TRUE, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* @NOT_VALID, align 4
  %100 = call i32 @redraw_later(i32 %99)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @changed_cline_bef_curs(...) #1

declare dso_local i32 @W_WIDTH(%struct.TYPE_4__*) #1

declare dso_local i32 @curwin_col_off(...) #1

declare dso_local i32 @validate_virtcol(...) #1

declare dso_local i64 @coladvance(i64) #1

declare dso_local i32 @getvvcol(%struct.TYPE_4__*, i32*, i64*, i32*, i64*) #1

declare dso_local i32 @redraw_later(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
