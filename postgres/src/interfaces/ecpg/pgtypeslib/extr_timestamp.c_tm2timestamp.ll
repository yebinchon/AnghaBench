; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_tm2timestamp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_tm2timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@USECS_PER_DAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm2timestamp(%struct.tm* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.tm*, %struct.tm** %6, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tm*, %struct.tm** %6, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tm*, %struct.tm** %6, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IS_VALID_JULIAN(i32 %14, i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %96

24:                                               ; preds = %4
  %25 = load %struct.tm*, %struct.tm** %6, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tm*, %struct.tm** %6, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tm*, %struct.tm** %6, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @date2j(i32 %27, i32 %30, i32 %33)
  %35 = call i32 @date2j(i32 2000, i32 1, i32 1)
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.tm*, %struct.tm** %6, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tm*, %struct.tm** %6, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tm*, %struct.tm** %6, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @time2t(i32 %39, i32 %42, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @USECS_PER_DAY, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* @USECS_PER_DAY, align 4
  %59 = sdiv i32 %57, %58
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %96

63:                                               ; preds = %24
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67, %63
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %74, %67
  store i32 -1, i32* %5, align 4
  br label %96

78:                                               ; preds = %74, %70
  %79 = load i32*, i32** %8, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 @dt2local(i32 %83, i32 %86)
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %81, %78
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @IS_VALID_TIMESTAMP(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store i32 -1, i32* %5, align 4
  br label %96

95:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %94, %77, %62, %23
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @IS_VALID_JULIAN(i32, i32, i32) #1

declare dso_local i32 @date2j(i32, i32, i32) #1

declare dso_local i32 @time2t(i32, i32, i32, i32) #1

declare dso_local i32 @dt2local(i32, i32) #1

declare dso_local i32 @IS_VALID_TIMESTAMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
