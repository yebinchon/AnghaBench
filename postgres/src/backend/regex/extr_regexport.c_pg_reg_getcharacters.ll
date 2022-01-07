; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexport.c_pg_reg_getcharacters.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexport.c_pg_reg_getcharacters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.colormap = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.guts = type { %struct.colormap }

@REMAGIC = common dso_local global i64 0, align 8
@PSEUDO = common dso_local global i32 0, align 4
@CHR_MIN = common dso_local global i64 0, align 8
@MAX_SIMPLE_CHR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_reg_getcharacters(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.colormap*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REMAGIC, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %4
  %20 = phi i1 [ false, %4 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.guts*
  %27 = getelementptr inbounds %struct.guts, %struct.guts* %26, i32 0, i32 0
  store %struct.colormap* %27, %struct.colormap** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.colormap*, %struct.colormap** %9, align 8
  %33 = getelementptr inbounds %struct.colormap, %struct.colormap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %30, %19
  br label %84

40:                                               ; preds = %36
  %41 = load %struct.colormap*, %struct.colormap** %9, align 8
  %42 = getelementptr inbounds %struct.colormap, %struct.colormap* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PSEUDO, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %84

53:                                               ; preds = %40
  %54 = load i64, i64* @CHR_MIN, align 8
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %81, %53
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @MAX_SIMPLE_CHR, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load %struct.colormap*, %struct.colormap** %9, align 8
  %61 = getelementptr inbounds %struct.colormap, %struct.colormap* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @CHR_MIN, align 8
  %65 = sub nsw i64 %63, %64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %59
  %71 = load i64, i64* %10, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %84

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %10, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %55

84:                                               ; preds = %39, %52, %78, %55
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
