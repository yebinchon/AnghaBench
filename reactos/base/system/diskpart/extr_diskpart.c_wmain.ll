; ModuleID = '/home/carl/AnghaBench/reactos/base/system/diskpart/extr_diskpart.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/diskpart/extr_diskpart.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@IDS_APP_HEADER = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@IDS_ERROR_MSG_BAD_ARG = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 63, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@IDS_APP_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 116, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8
@IDS_ERROR_MSG_NO_SCRIPT = common dso_local global i32 0, align 4
@IDS_APP_LEAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [50 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 (...) @ConInitStdStreams()
  %13 = call i32 @GetModuleHandle(i32* null)
  %14 = load i32, i32* @IDS_APP_HEADER, align 4
  %15 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %16 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %17 = call i32 @ARRAYSIZE(i32* %16)
  %18 = call i32 @K32LoadStringW(i32 %13, i32 %14, i32* %15, i32 %17)
  %19 = getelementptr inbounds [50 x i32], [50 x i32]* %7, i64 0, i64 0
  %20 = call i32 @SetConsoleTitleW(i32* %19)
  store i32 0, i32* %9, align 4
  %21 = call i32 (...) @CreatePartitionList()
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = call i32 (...) @ShowHeader()
  %26 = call i32 (...) @InterpretMain()
  br label %157

27:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %128, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %131

32:                                               ; preds = %28
  %33 = load i8**, i8*** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 47
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = load i8**, i8*** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br i1 %51, label %52, label %59

52:                                               ; preds = %42, %32
  %53 = load i8**, i8*** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %6, align 8
  br label %69

59:                                               ; preds = %42
  %60 = load i32, i32* @StdErr, align 4
  %61 = load i32, i32* @IDS_ERROR_MSG_BAD_ARG, align 4
  %62 = load i8**, i8*** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @ConResPrintf(i32 %60, i32 %61, i8* %66)
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %68, i32* %10, align 4
  br label %161

69:                                               ; preds = %52
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @_wcsicmp(i8* %70, i8* bitcast ([2 x i32]* @.str to i8*))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* @StdOut, align 4
  %75 = load i32, i32* @IDS_APP_USAGE, align 4
  %76 = call i32 @ConResPuts(i32 %74, i32 %75)
  %77 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %77, i32* %10, align 4
  br label %161

78:                                               ; preds = %69
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @_wcsicmp(i8* %79, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* %3, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load i8**, i8*** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %5, align 8
  br label %95

95:                                               ; preds = %87, %82
  br label %126

96:                                               ; preds = %78
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @_wcsicmp(i8* %97, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %3, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load i8**, i8*** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @_wtoi(i8* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %105
  br label %118

118:                                              ; preds = %117, %100
  br label %125

119:                                              ; preds = %96
  %120 = load i32, i32* @StdErr, align 4
  %121 = load i32, i32* @IDS_ERROR_MSG_BAD_ARG, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @ConResPrintf(i32 %120, i32 %121, i8* %122)
  %124 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %124, i32* %10, align 4
  br label %161

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %95
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %28

131:                                              ; preds = %28
  %132 = call i32 (...) @ShowHeader()
  %133 = load i8*, i8** %5, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = load i32, i32* %9, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = mul nsw i32 %139, 1000
  %141 = call i32 @Sleep(i32 %140)
  br label %142

142:                                              ; preds = %138, %135
  %143 = load i8*, i8** %5, align 8
  %144 = call i64 @RunScript(i8* %143)
  %145 = load i64, i64* @FALSE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %148, i32* %10, align 4
  br label %161

149:                                              ; preds = %142
  br label %156

150:                                              ; preds = %131
  %151 = load i32, i32* @StdErr, align 4
  %152 = load i32, i32* @IDS_ERROR_MSG_NO_SCRIPT, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 @ConResPrintf(i32 %151, i32 %152, i8* %153)
  %155 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %155, i32* %10, align 4
  br label %161

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %24
  %158 = load i32, i32* @StdOut, align 4
  %159 = load i32, i32* @IDS_APP_LEAVING, align 4
  %160 = call i32 @ConResPuts(i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %150, %147, %119, %73, %59
  %162 = call i32 (...) @DestroyPartitionList()
  %163 = load i32, i32* %10, align 4
  ret i32 %163
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i32 @K32LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @SetConsoleTitleW(i32*) #1

declare dso_local i32 @CreatePartitionList(...) #1

declare dso_local i32 @ShowHeader(...) #1

declare dso_local i32 @InterpretMain(...) #1

declare dso_local i32 @ConResPrintf(i32, i32, i8*) #1

declare dso_local i64 @_wcsicmp(i8*, i8*) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i32 @_wtoi(i8*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @RunScript(i8*) #1

declare dso_local i32 @DestroyPartitionList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
