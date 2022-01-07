; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_WriteClipboardFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_fileutils.c_WriteClipboardFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i64 }

@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@Globals = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ERROR_INVALID_FILE_FORMAT = common dso_local global i32 0, align 4
@MB_ICONSTOP = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@INVALID_SET_FILE_POINTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteClipboardFile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @GENERIC_WRITE, align 4
  %22 = load i32, i32* @CREATE_ALWAYS, align 4
  %23 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %24 = call i64 @CreateFileW(i32 %20, i32 %21, i32 0, i32* null, i32 %22, i32 %23, i32* null)
  store i64 %24, i64* %17, align 8
  %25 = load i64, i64* %17, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 0), align 4
  %30 = call i32 @ShowLastWin32Error(i32 %29)
  br label %173

31:                                               ; preds = %2
  %32 = call i32 (...) @CountClipboardFormats()
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %42 [
    i32 130, label %34
    i32 128, label %38
    i32 129, label %38
  ]

34:                                               ; preds = %31
  store i64 40, i64* %11, align 8
  store i64 40, i64* %12, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 130, i32* %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  br label %50

38:                                               ; preds = %31, %31
  store i64 40, i64* %11, align 8
  store i64 40, i64* %12, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 128, i32* %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  br label %50

42:                                               ; preds = %31
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 0), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 1), align 4
  %45 = load i32, i32* @ERROR_INVALID_FILE_FORMAT, align 4
  %46 = load i32, i32* @MB_ICONSTOP, align 4
  %47 = load i32, i32* @MB_OK, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @MessageBoxRes(i32 %43, i32 %44, i32 %45, i32 0, i32 %48)
  br label %173

50:                                               ; preds = %38, %34
  %51 = load i64, i64* %17, align 8
  %52 = load i32, i32* @FILE_BEGIN, align 4
  %53 = call i64 @SetFilePointer(i64 %51, i64 0, i32* null, i32 %52)
  %54 = load i64, i64* %17, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @WriteFile(i64 %54, %struct.TYPE_9__* %55, i64 %56, i64* %18, i32* null)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %50
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 0), align 4
  %65 = call i32 @ShowLastWin32Error(i32 %64)
  br label %173

66:                                               ; preds = %59
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %12, align 8
  %71 = mul nsw i64 %69, %70
  %72 = add nsw i64 %67, %71
  store i64 %72, i64* %16, align 8
  store i32 0, i32* %19, align 4
  %73 = call i64 @EnumClipboardFormats(i64 0)
  store i64 %73, i64* %14, align 8
  br label %74

74:                                               ; preds = %167, %66
  %75 = load i64, i64* %14, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %172

77:                                               ; preds = %74
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i32 @assert(i32 %82)
  br label %172

84:                                               ; preds = %77
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i32 @ClipboardWriteMemory(i64 %85, i64 %86, i64 %87, i64* %15)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %167

91:                                               ; preds = %84
  %92 = load i32, i32* %4, align 4
  switch i32 %92, label %139 [
    i32 130, label %93
    i32 128, label %116
    i32 129, label %116
  ]

93:                                               ; preds = %91
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = call i32 @ZeroMemory(%struct.TYPE_9__* %94, i32 40)
  %96 = load i64, i64* %14, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 5
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 1), align 4
  %106 = load i64, i64* %14, align 8
  %107 = load i32, i32* @FALSE, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ARRAYSIZE(i32 %113)
  %115 = call i32 @RetrieveClipboardFormatName(i32 %105, i64 %106, i32 %107, i32 %110, i32 %114)
  br label %139

116:                                              ; preds = %91, %91
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %118 = call i32 @ZeroMemory(%struct.TYPE_9__* %117, i32 40)
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 5
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 1), align 4
  %129 = load i64, i64* %14, align 8
  %130 = load i32, i32* @TRUE, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ARRAYSIZE(i32 %136)
  %138 = call i32 @RetrieveClipboardFormatName(i32 %128, i64 %129, i32 %130, i32 %133, i32 %137)
  br label %139

139:                                              ; preds = %91, %116, %93
  %140 = load i64, i64* %17, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %12, align 8
  %145 = mul nsw i64 %143, %144
  %146 = add nsw i64 %141, %145
  %147 = load i32, i32* @FILE_BEGIN, align 4
  %148 = call i64 @SetFilePointer(i64 %140, i64 %146, i32* null, i32 %147)
  %149 = load i64, i64* @INVALID_SET_FILE_POINTER, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 0), align 4
  %153 = call i32 @ShowLastWin32Error(i32 %152)
  br label %173

154:                                              ; preds = %139
  %155 = load i64, i64* %17, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @WriteFile(i64 %155, %struct.TYPE_9__* %156, i64 %157, i64* %18, i32* null)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %154
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 0), align 4
  %162 = call i32 @ShowLastWin32Error(i32 %161)
  br label %173

163:                                              ; preds = %154
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* %16, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %16, align 8
  br label %167

167:                                              ; preds = %163, %90
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %19, align 4
  %170 = load i64, i64* %14, align 8
  %171 = call i64 @EnumClipboardFormats(i64 %170)
  store i64 %171, i64* %14, align 8
  br label %74

172:                                              ; preds = %81, %74
  br label %173

173:                                              ; preds = %172, %160, %151, %63, %42, %28
  %174 = load i64, i64* %17, align 8
  %175 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i64, i64* %17, align 8
  %179 = call i32 @CloseHandle(i64 %178)
  br label %180

180:                                              ; preds = %177, %173
  ret void
}

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ShowLastWin32Error(i32) #1

declare dso_local i32 @CountClipboardFormats(...) #1

declare dso_local i32 @MessageBoxRes(i32, i32, i32, i32, i32) #1

declare dso_local i64 @SetFilePointer(i64, i64, i32*, i32) #1

declare dso_local i32 @WriteFile(i64, %struct.TYPE_9__*, i64, i64*, i32*) #1

declare dso_local i64 @EnumClipboardFormats(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ClipboardWriteMemory(i64, i64, i64, i64*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @RetrieveClipboardFormatName(i32, i64, i32, i32, i32) #1

declare dso_local i32 @ARRAYSIZE(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
