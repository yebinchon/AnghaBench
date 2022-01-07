; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_valid-adjtimex.c_validate_freq.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_valid-adjtimex.c_validate_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"Testing ADJ_FREQ... \00", align 1
@stdout = common dso_local global i32 0, align 4
@NUM_FREQ_VALID = common dso_local global i32 0, align 4
@ADJ_FREQUENCY = common dso_local global i8* null, align 8
@valid_freq = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"[FAIL]\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Error: adjtimex(ADJ_FREQ, %ld - %ld ppm\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Warning: freq value %ld not what we set it (%ld)!\0A\00", align 1
@NUM_FREQ_OUTOFRANGE = common dso_local global i32 0, align 4
@outofrange_freq = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"ERROR: out of range value %ld actually set!\0A\00", align 1
@NUM_FREQ_INVALID = common dso_local global i32 0, align 4
@invalid_freq = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"Error: No failure on invalid ADJ_FREQUENCY %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_freq() #0 {
  %1 = alloca %struct.timex, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 (...) @clear_time_state()
  %6 = call i32 @memset(%struct.timex* %1, i32 0, i32 16)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %61, %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NUM_FREQ_VALID, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = load i8*, i8** @ADJ_FREQUENCY, align 8
  %16 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i32*, i32** @valid_freq, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = call i32 @adjtimex(%struct.timex* %1)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %14
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** @valid_freq, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @valid_freq, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 16
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %38)
  store i32 -1, i32* %3, align 4
  br label %146

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 1
  store i8* null, i8** %41, align 8
  %42 = call i32 @adjtimex(%struct.timex* %1)
  store i32 %42, i32* %2, align 4
  %43 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** @valid_freq, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %44, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** @valid_freq, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %51, %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %10

64:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %112, %64
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @NUM_FREQ_OUTOFRANGE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %115

69:                                               ; preds = %65
  %70 = load i8*, i8** @ADJ_FREQUENCY, align 8
  %71 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = load i32*, i32** @outofrange_freq, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = call i32 @adjtimex(%struct.timex* %1)
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %69
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32*, i32** @outofrange_freq, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @outofrange_freq, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 16
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %93)
  store i32 -1, i32* %3, align 4
  br label %146

95:                                               ; preds = %69
  %96 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 1
  store i8* null, i8** %96, align 8
  %97 = call i32 @adjtimex(%struct.timex* %1)
  store i32 %97, i32* %2, align 4
  %98 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** @outofrange_freq, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %99, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %108 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  store i32 -1, i32* %3, align 4
  br label %146

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %65

115:                                              ; preds = %65
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %141, %115
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @NUM_FREQ_INVALID, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = load i8*, i8** @ADJ_FREQUENCY, align 8
  %122 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 1
  store i8* %121, i8** %122, align 8
  %123 = load i32*, i32** @invalid_freq, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 0
  store i32 %127, i32* %128, align 8
  %129 = call i32 @adjtimex(%struct.timex* %1)
  store i32 %129, i32* %2, align 4
  %130 = load i32, i32* %2, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %120
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i32*, i32** @invalid_freq, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  store i32 -1, i32* %3, align 4
  br label %146

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %116

144:                                              ; preds = %116
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %132, %106, %81, %26
  %147 = load i8*, i8** @ADJ_FREQUENCY, align 8
  %148 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 1
  store i8* %147, i8** %148, align 8
  %149 = getelementptr inbounds %struct.timex, %struct.timex* %1, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = call i32 @adjtimex(%struct.timex* %1)
  store i32 %150, i32* %2, align 4
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @clear_time_state(...) #1

declare dso_local i32 @memset(%struct.timex*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @adjtimex(%struct.timex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
