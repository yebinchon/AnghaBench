; ModuleID = '/home/carl/AnghaBench/netdata/web/api/formatters/ssv/extr_ssv.c_rrdr2ssv.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/formatters/ssv/extr_ssv.c_rrdr2ssv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@RRDR_OPTION_REVERSED = common dso_local global i32 0, align 4
@RRDR_OPTION_NULL2ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdr2ssv(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @buffer_strcat(i32* %19, i8* %20)
  store i64 0, i64* %14, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = call i32 @rrdr_rows(%struct.TYPE_5__* %22)
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %15, align 8
  store i64 1, i64* %16, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @RRDR_OPTION_REVERSED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %6
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = call i32 @rrdr_rows(%struct.TYPE_5__* %30)
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %14, align 8
  store i64 -1, i64* %15, align 8
  store i64 -1, i64* %16, align 8
  br label %34

34:                                               ; preds = %29, %6
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %110, %34
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %114

40:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @rrdr2value(%struct.TYPE_5__* %41, i64 %42, i32 %43, i32* %17)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %40
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %18, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i64, i64* %18, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %18, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* %18, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  br label %79

72:                                               ; preds = %40
  %73 = load i64, i64* %18, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %72, %71
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp ne i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @likely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32*, i32** %8, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @buffer_strcat(i32* %87, i8* %88)
  br label %90

90:                                               ; preds = %86, %79
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @RRDR_OPTION_NULL2ZERO, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @buffer_strcat(i32* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %104

101:                                              ; preds = %93
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @buffer_strcat(i32* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  br label %109

105:                                              ; preds = %90
  %106 = load i32*, i32** %8, align 8
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @buffer_rrd_value(i32* %106, i64 %107)
  br label %109

109:                                              ; preds = %105, %104
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* %13, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %13, align 8
  br label %36

114:                                              ; preds = %36
  %115 = load i32*, i32** %8, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @buffer_strcat(i32* %115, i8* %116)
  ret void
}

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @rrdr_rows(%struct.TYPE_5__*) #1

declare dso_local i64 @rrdr2value(%struct.TYPE_5__*, i64, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @buffer_rrd_value(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
