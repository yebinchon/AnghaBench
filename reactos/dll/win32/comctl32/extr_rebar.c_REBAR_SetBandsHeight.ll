; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_SetBandsHeight.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_SetBandsHeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Bands [%d; %d) height: %d\0A\00", align 1
@SEP_WIDTH = common dso_local global i64 0, align 8
@NTF_INVALIDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Band %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @REBAR_SetBandsHeight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_SetBandsHeight(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_4__* @REBAR_GetBand(i32* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %37, %4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call %struct.TYPE_4__* @REBAR_GetBand(i32* %26, i32 %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max(i32 %32, i32 %35)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @next_visible(i32* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %110, %41
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %114

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call %struct.TYPE_4__* @REBAR_GetBand(i32* %52, i32 %53)
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %9, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @SEP_WIDTH, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %60, %51
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %88, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %79, %72
  %89 = load i32, i32* @NTF_INVALIDATE, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = call i32 @wine_dbgstr_rect(%struct.TYPE_5__* %106)
  %108 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %88, %79
  br label %110

110:                                              ; preds = %109
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @next_visible(i32* %111, i32 %112)
  store i32 %113, i32* %13, align 4
  br label %47

114:                                              ; preds = %47
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %115, %116
  ret i32 %117
}

declare dso_local %struct.TYPE_4__* @REBAR_GetBand(i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @next_visible(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
