; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_checkFrame.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_checkFrame.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"--no-prompt\00", align 1
@no_prompt = common dso_local global i32 0, align 4
@displayLevel = common dso_local global i32 0, align 4
@use_pause = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Starting frame checker (%i-bits, %s)\0A\00", align 1
@LZ4_VERSION_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s: %s \0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %170, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %173

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %170

30:                                               ; preds = %21
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %36, label %129

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 1, i32* @no_prompt, align 4
  store i32 1, i32* @displayLevel, align 4
  br label %170

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  br label %44

44:                                               ; preds = %127, %41
  %45 = load i8*, i8** %10, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %128

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %124 [
    i32 104, label %53
    i32 118, label %56
    i32 113, label %61
    i32 112, label %66
    i32 98, label %69
    i32 66, label %96
  ]

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @FUZ_usage(i8* %54)
  store i32 %55, i32* %3, align 4
  br label %174

56:                                               ; preds = %49
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  %59 = load i32, i32* @displayLevel, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @displayLevel, align 4
  br label %127

61:                                               ; preds = %49
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  %64 = load i32, i32* @displayLevel, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @displayLevel, align 4
  br label %127

66:                                               ; preds = %49
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %10, align 8
  store i32 1, i32* @use_pause, align 4
  br label %127

69:                                               ; preds = %49
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %84, %69
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sge i32 %75, 48
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %80, 57
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ false, %72 ], [ %81, %77 ]
  br i1 %83, label %84, label %95

84:                                               ; preds = %82
  %85 = load i32, i32* %7, align 4
  %86 = mul i32 %85, 10
  store i32 %86, i32* %7, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = sub nsw i32 %89, 48
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %10, align 8
  br label %72

95:                                               ; preds = %82
  br label %127

96:                                               ; preds = %49
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  store i64 0, i64* %8, align 8
  br label %99

99:                                               ; preds = %111, %96
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sge i32 %102, 48
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i8*, i8** %10, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp sle i32 %107, 57
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi i1 [ false, %99 ], [ %108, %104 ]
  br i1 %110, label %111, label %123

111:                                              ; preds = %109
  %112 = load i64, i64* %8, align 8
  %113 = mul i64 %112, 10
  store i64 %113, i64* %8, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = sub nsw i32 %116, 48
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %8, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %8, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %10, align 8
  br label %99

123:                                              ; preds = %109
  br label %127

124:                                              ; preds = %49
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @FUZ_usage(i8* %125)
  store i32 %126, i32* %3, align 4
  br label %174

127:                                              ; preds = %123, %95, %66, %61, %56
  br label %44

128:                                              ; preds = %44
  br label %169

129:                                              ; preds = %30
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %8, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132, %129
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 @FUZ_usage(i8* %136)
  store i32 %137, i32* %3, align 4
  br label %174

138:                                              ; preds = %132
  %139 = load i32, i32* @LZ4_VERSION_STRING, align 4
  %140 = call i32 @DISPLAY(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 64, i32 %139)
  %141 = call i32 @createCResources(i32* %13)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %3, align 4
  br label %174

146:                                              ; preds = %138
  %147 = load i8*, i8** %10, align 8
  %148 = call i32* @fopen(i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %148, i32** %12, align 8
  %149 = load i32*, i32** %12, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @freeCResources(i32 %152)
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* @errno, align 4
  %156 = call i32 @strerror(i32 %155)
  %157 = call i32 @EXM_THROW(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %154, i32 %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i32, i32* %13, align 4
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @frameCheck(i32 %159, i32* %160, i32 %161, i64 %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @freeCResources(i32 %164)
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @fclose(i32* %166)
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %3, align 4
  br label %174

169:                                              ; preds = %128
  br label %170

170:                                              ; preds = %169, %40, %29
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %17

173:                                              ; preds = %17
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %158, %144, %135, %124, %53
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @FUZ_usage(i8*) #1

declare dso_local i32 @DISPLAY(i8*, i32, i32) #1

declare dso_local i32 @createCResources(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @freeCResources(i32) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @frameCheck(i32, i32*, i32, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
