; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_qotd.c_RetrieveQuote.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_qotd.c_RetrieveQuote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i32] [i32 81, i32 79, i32 84, i32 68, i32 58, i32 32, i32 71, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 32, i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 32, i32 112, i32 97, i32 116, i32 104, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 0], align 4
@LOG_FILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@szFilePath = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i32] [i32 81, i32 79, i32 84, i32 68, i32 58, i32 32, i32 79, i32 112, i32 101, i32 110, i32 105, i32 110, i32 103, i32 32, i32 113, i32 117, i32 111, i32 116, i32 101, i32 115, i32 32, i32 102, i32 105, i32 108, i32 101, i32 0], align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i32] [i32 81, i32 79, i32 84, i32 68, i32 58, i32 32, i32 69, i32 114, i32 114, i32 111, i32 114, i32 32, i32 111, i32 112, i32 101, i32 110, i32 105, i32 110, i32 103, i32 32, i32 113, i32 117, i32 111, i32 116, i32 101, i32 115, i32 32, i32 102, i32 105, i32 108, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [25 x i32] [i32 81, i32 79, i32 84, i32 68, i32 58, i32 32, i32 69, i32 114, i32 114, i32 111, i32 114, i32 32, i32 115, i32 101, i32 110, i32 100, i32 105, i32 110, i32 103, i32 32, i32 100, i32 97, i32 116, i32 97, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @RetrieveQuote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RetrieveQuote(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = add nsw i32 %16, 20
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = call i32 @GetSystemDirectoryW(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = call i32 (...) @GetLastError()
  %26 = load i32, i32* @LOG_FILE, align 4
  %27 = call i32 @LogEvent(i8* bitcast ([33 x i32]* @.str to i8*), i32 %25, i32 0, i32 %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

29:                                               ; preds = %1
  %30 = load i32, i32* @szFilePath, align 4
  %31 = call i32 @wcscat(i32* %20, i32 %30)
  %32 = load i32, i32* @LOG_FILE, align 4
  %33 = call i32 @LogEvent(i8* bitcast ([26 x i32]* @.str.1 to i8*), i32 0, i32 0, i32 %32)
  %34 = load i32, i32* @GENERIC_READ, align 4
  %35 = load i32, i32* @OPEN_EXISTING, align 4
  %36 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %37 = call i64 @CreateFileW(i32* %20, i32 %34, i32 0, i32* null, i32 %35, i32 %36, i32* null)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = call i32 (...) @GetLastError()
  %43 = load i32, i32* @LOG_FILE, align 4
  %44 = call i32 @LogEvent(i8* bitcast ([32 x i32]* @.str.2 to i8*), i32 %42, i32 0, i32 %43)
  br label %168

45:                                               ; preds = %29
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @GetFileSize(i64 %46, i32* null)
  store i32 %47, i32* %14, align 4
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i64 @HeapAlloc(i32 %48, i32 0, i32 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @CloseHandle(i64 %56)
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

59:                                               ; preds = %45
  %60 = load i64, i64* %4, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @ReadFile(i64 %60, i8* %61, i32 %62, i32* %7, i32* null)
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @CloseHandle(i64 %64)
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %59
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @HeapFree(i32 %74, i32 0, i8* %75)
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

78:                                               ; preds = %59
  %79 = load i8*, i8** %8, align 8
  store i8* %79, i8** %9, align 8
  br label %80

80:                                               ; preds = %92, %78
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i8*, i8** %9, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  br label %80

95:                                               ; preds = %80
  %96 = call i64 (...) @GetTickCount()
  %97 = trunc i64 %96 to i32
  %98 = call i32 @srand(i32 %97)
  %99 = call i32 (...) @rand()
  %100 = load i32, i32* %11, align 4
  %101 = srem i32 %99, %100
  store i32 %101, i32* %10, align 4
  %102 = load i8*, i8** %8, align 8
  store i8* %102, i8** %9, align 8
  store i32 1, i32* %12, align 4
  br label %103

103:                                              ; preds = %160, %95
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %163

107:                                              ; preds = %103
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %9, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %140

113:                                              ; preds = %107
  %114 = load i8*, i8** %9, align 8
  store i8* %114, i8** %15, align 8
  br label %115

115:                                              ; preds = %127, %113
  %116 = load i8*, i8** %9, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 37
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i8*, i8** %9, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %120, %115
  %126 = phi i1 [ false, %115 ], [ %124, %120 ]
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %9, align 8
  br label %115

130:                                              ; preds = %125
  %131 = load i8*, i8** %9, align 8
  store i8 0, i8* %131, align 1
  %132 = load i32, i32* %3, align 4
  %133 = load i8*, i8** %15, align 8
  %134 = call i32 @SendQuote(i32 %132, i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* @LOG_FILE, align 4
  %138 = call i32 @LogEvent(i8* bitcast ([25 x i32]* @.str.3 to i8*), i32 0, i32 0, i32 %137)
  br label %139

139:                                              ; preds = %136, %130
  br label %163

140:                                              ; preds = %107
  br label %141

141:                                              ; preds = %153, %140
  %142 = load i8*, i8** %9, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 37
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i8*, i8** %9, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %146, %141
  %152 = phi i1 [ false, %141 ], [ %150, %146 ]
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %9, align 8
  br label %141

156:                                              ; preds = %151
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 2
  store i8* %158, i8** %9, align 8
  br label %159

159:                                              ; preds = %156
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %103

163:                                              ; preds = %139, %103
  %164 = call i32 (...) @GetProcessHeap()
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 @HeapFree(i32 %164, i32 0, i8* %165)
  %167 = load i32, i32* @TRUE, align 4
  store i32 %167, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

168:                                              ; preds = %41
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

170:                                              ; preds = %168, %163, %73, %55, %24
  %171 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemDirectoryW(i32*, i32) #2

declare dso_local i32 @LogEvent(i8*, i32, i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @wcscat(i32*, i32) #2

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @GetFileSize(i64, i32*) #2

declare dso_local i64 @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @srand(i32) #2

declare dso_local i64 @GetTickCount(...) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @SendQuote(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
