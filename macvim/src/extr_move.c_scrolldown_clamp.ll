; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_move.c_scrolldown_clamp.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_move.c_scrolldown_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i64 }

@curwin = common dso_local global %struct.TYPE_5__* null, align 8
@p_so = common dso_local global i32 0, align 4
@VALID_WROW = common dso_local global i32 0, align 4
@VALID_CROW = common dso_local global i32 0, align 4
@VALID_BOTLINE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scrolldown_clamp() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %68

7:                                                ; preds = %0
  %8 = call i32 (...) @validate_cursor()
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = call i64 @plines(i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %1, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %7
  %26 = call i32 (...) @validate_cheight()
  %27 = call i32 (...) @validate_virtcol()
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %36 = call i32 @W_WIDTH(%struct.TYPE_5__* %35)
  %37 = sdiv i32 %34, %36
  %38 = sub nsw i32 %31, %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %25, %7
  %42 = load i32, i32* %1, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @p_so, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @VALID_WROW, align 4
  %59 = load i32, i32* @VALID_CROW, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @VALID_BOTLINE, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %6, %49, %41
  ret void
}

declare dso_local i32 @validate_cursor(...) #1

declare dso_local i64 @plines(i32) #1

declare dso_local i32 @validate_cheight(...) #1

declare dso_local i32 @validate_virtcol(...) #1

declare dso_local i32 @W_WIDTH(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
