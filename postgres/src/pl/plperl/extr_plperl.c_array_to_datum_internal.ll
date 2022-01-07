; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_array_to_datum_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_array_to_datum_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dTHX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAXDIM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"number of array dimensions (%d) exceeds the maximum allowed (%d)\00", align 1
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"multidimensional arrays must have array expressions with matching dimensions\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32*, i32)* @array_to_datum_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_to_datum_internal(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32**, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  %28 = load i32, i32* @dTHX, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @av_len(i32* %29)
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %32

32:                                               ; preds = %150, %10
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %22, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %153

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32** @av_fetch(i32* %37, i32 %38, i32 %39)
  store i32** %40, i32*** %23, align 8
  %41 = load i32**, i32*** %23, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32**, i32*** %23, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = call i32* @get_perl_array_ref(i32* %45)
  br label %48

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32* [ %46, %43 ], [ null, %47 ]
  store i32* %49, i32** %24, align 8
  %50 = load i32*, i32** %24, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %118

52:                                               ; preds = %48
  %53 = load i32*, i32** %24, align 8
  %54 = call i64 @SvRV(i32* %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %25, align 8
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @MAXDIM, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* @MAXDIM, align 4
  %67 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  %68 = call i32 @ereport(i32 %61, i32 %67)
  br label %69

69:                                               ; preds = %60, %52
  %70 = load i32, i32* %21, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i32*, i32** %25, align 8
  %79 = call i32 @av_len(i32* %78)
  %80 = add nsw i32 %79, 1
  %81 = load i32*, i32** %14, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %106

89:                                               ; preds = %72, %69
  %90 = load i32*, i32** %25, align 8
  %91 = call i32 @av_len(i32* %90)
  %92 = add nsw i32 %91, 1
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %92, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %89
  %100 = load i32, i32* @ERROR, align 4
  %101 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %102 = call i32 @errcode(i32 %101)
  %103 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %104 = call i32 @ereport(i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %99, %89
  br label %106

106:                                              ; preds = %105, %77
  %107 = load i32*, i32** %25, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32*, i32** %19, align 8
  %117 = load i32, i32* %20, align 4
  call void @array_to_datum_internal(i32* %107, i32* %108, i32* %109, i32* %110, i32 %112, i32 %113, i32 %114, i32 %115, i32* %116, i32 %117)
  br label %149

118:                                              ; preds = %48
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @ERROR, align 4
  %125 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %126 = call i32 @errcode(i32 %125)
  %127 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %128 = call i32 @ereport(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i32**, i32*** %23, align 8
  %131 = icmp ne i32** %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32**, i32*** %23, align 8
  %134 = load i32*, i32** %133, align 8
  br label %136

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %132
  %137 = phi i32* [ %134, %132 ], [ null, %135 ]
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32*, i32** %19, align 8
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @plperl_sv_to_datum(i32* %137, i32 %138, i32 %139, i32* null, i32* %140, i32 %141, i32* %27)
  store i32 %142, i32* %26, align 4
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %26, align 4
  %145 = load i32, i32* %27, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @CurrentMemoryContext, align 4
  %148 = call i32 @accumArrayResult(i32* %143, i32 %144, i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %136, %106
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %21, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %21, align 4
  br label %32

153:                                              ; preds = %32
  ret void
}

declare dso_local i32 @av_len(i32*) #1

declare dso_local i32** @av_fetch(i32*, i32, i32) #1

declare dso_local i32* @get_perl_array_ref(i32*) #1

declare dso_local i64 @SvRV(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @plperl_sv_to_datum(i32*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @accumArrayResult(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
