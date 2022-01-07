; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_fileio.c_au_cleanup.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_fileio.c_au_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, i32*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@autocmd_busy = common dso_local global i64 0, align 8
@au_need_clean = common dso_local global i64 0, align 8
@NUM_EVENTS = common dso_local global i64 0, align 8
@first_autopat = common dso_local global %struct.TYPE_5__** null, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @au_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au_cleanup() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__**, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i64, align 8
  %6 = load i64, i64* @autocmd_busy, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @au_need_clean, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %0
  br label %97

12:                                               ; preds = %8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %90, %12
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i64, i64* @NUM_EVENTS, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %95

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @first_autopat, align 8
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %20, i64 %23
  store %struct.TYPE_5__** %24, %struct.TYPE_5__*** %2, align 8
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %1, align 8
  br label %27

27:                                               ; preds = %86, %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %89

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store %struct.TYPE_5__** %32, %struct.TYPE_5__*** %4, align 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %3, align 8
  br label %35

35:                                               ; preds = %63, %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp eq %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43, %38
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @vim_free(%struct.TYPE_5__* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = call i32 @vim_free(%struct.TYPE_5__* %57)
  br label %62

59:                                               ; preds = %43
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.TYPE_5__** %61, %struct.TYPE_5__*** %4, align 8
  br label %62

62:                                               ; preds = %59, %48
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %3, align 8
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @vim_regfree(i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %81 = call i32 @vim_free(%struct.TYPE_5__* %80)
  br label %85

82:                                               ; preds = %66
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store %struct.TYPE_5__** %84, %struct.TYPE_5__*** %2, align 8
  br label %85

85:                                               ; preds = %82, %71
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %1, align 8
  br label %27

89:                                               ; preds = %27
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %5, align 8
  %92 = trunc i64 %91 to i32
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %5, align 8
  br label %13

95:                                               ; preds = %13
  %96 = load i64, i64* @FALSE, align 8
  store i64 %96, i64* @au_need_clean, align 8
  br label %97

97:                                               ; preds = %95, %11
  ret void
}

declare dso_local i32 @vim_free(%struct.TYPE_5__*) #1

declare dso_local i32 @vim_regfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
