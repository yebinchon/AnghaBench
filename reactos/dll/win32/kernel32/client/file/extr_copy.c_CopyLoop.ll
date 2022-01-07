; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/file/extr_copy.c_CopyLoop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/file/extr_copy.c_CopyLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@MEM_RESERVE = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@CALLBACK_STREAM_SWITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Progress callback requested cancel\0A\00", align 1
@STATUS_REQUEST_ABORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Progress callback requested stop\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@CALLBACK_CHUNK_FINISHED = common dso_local global i32 0, align 4
@STATUS_END_OF_FILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Error 0x%08x reading writing to dest\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Error 0x%08x reading from source\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"User requested cancel\0A\00", align 1
@MEM_RELEASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Error 0x%08x allocating buffer of %lu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)*, i32, i64*, i64*)* @CopyLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CopyLoop(i32 %0, i32 %1, i64 %2, i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)* %3, i32 %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store i64 %2, i64* %23, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)* %3, i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  store i32* null, i32** %17, align 8
  store i32 65536, i32* %18, align 4
  %24 = load i64, i64* @FALSE, align 8
  %25 = load i64*, i64** %14, align 8
  store i64 %24, i64* %25, align 8
  %26 = call i32 (...) @NtCurrentProcess()
  %27 = bitcast i32** %17 to i32*
  %28 = load i32, i32* @MEM_RESERVE, align 4
  %29 = load i32, i32* @MEM_COMMIT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PAGE_READWRITE, align 4
  %32 = call i64 @NtAllocateVirtualMemory(i32 %26, i32* %27, i32 0, i32* %18, i32 %30, i32 %31)
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i64 @NT_SUCCESS(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %177

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %22, align 8
  %39 = load i32, i32* @CALLBACK_STREAM_SWITCH, align 4
  store i32 %39, i32* %20, align 4
  br label %40

40:                                               ; preds = %158, %36
  %41 = load i64, i64* %22, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %15, align 8
  %45 = call i64 @NT_SUCCESS(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i64*, i64** %13, align 8
  %49 = icmp eq i64* null, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i64*, i64** %13, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i1 [ true, %47 ], [ %54, %50 ]
  br label %57

57:                                               ; preds = %55, %43, %40
  %58 = phi i1 [ false, %43 ], [ false, %40 ], [ %56, %55 ]
  br i1 %58, label %59, label %159

59:                                               ; preds = %57
  %60 = load i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)*, i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)** %11, align 8
  %61 = icmp ne i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)* null, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %59
  %63 = load i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)*, i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)** %11, align 8
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 %63(i64 %69, i64 %71, i64 %73, i64 %75, i32 0, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  switch i32 %77, label %88 [
    i32 131, label %78
    i32 128, label %81
    i32 129, label %86
    i32 130, label %87
  ]

78:                                               ; preds = %62
  %79 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %80 = load i64, i64* @STATUS_REQUEST_ABORTED, align 8
  store i64 %80, i64* %15, align 8
  br label %89

81:                                               ; preds = %62
  %82 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i64, i64* @STATUS_REQUEST_ABORTED, align 8
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* @TRUE, align 8
  %85 = load i64*, i64** %14, align 8
  store i64 %84, i64* %85, align 8
  br label %89

86:                                               ; preds = %62
  store i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)* null, i32 (i64, i64, i64, i64, i32, i32, i32, i32, i32)** %11, align 8
  br label %89

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %62, %87
  br label %89

89:                                               ; preds = %88, %86, %81, %78
  %90 = load i32, i32* @CALLBACK_CHUNK_FINISHED, align 4
  store i32 %90, i32* %20, align 4
  br label %91

91:                                               ; preds = %89, %59
  %92 = load i64, i64* %15, align 8
  %93 = call i64 @NT_SUCCESS(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %158

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = ptrtoint %struct.TYPE_17__* %16 to i32
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* %18, align 4
  %100 = call i64 @NtReadFile(i32 %96, i32* null, i32* null, i32* null, i32 %97, i32* %98, i32 %99, i32* null, i32* null)
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = call i64 @NT_SUCCESS(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* @STATUS_END_OF_FILE, align 8
  store i64 %109, i64* %15, align 8
  br label %110

110:                                              ; preds = %108, %104, %95
  %111 = load i64, i64* %15, align 8
  %112 = call i64 @NT_SUCCESS(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %110
  %115 = load i64*, i64** %13, align 8
  %116 = icmp eq i64* null, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load i64*, i64** %13, align 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %141, label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %10, align 4
  %123 = ptrtoint %struct.TYPE_17__* %16 to i32
  %124 = load i32*, i32** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @NtWriteFile(i32 %122, i32* null, i32* null, i32* null, i32 %123, i32* %124, i64 %126, i32* null, i32* null)
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i64 @NT_SUCCESS(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %133
  store i64 %136, i64* %134, align 8
  br label %140

137:                                              ; preds = %121
  %138 = load i64, i64* %15, align 8
  %139 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %138)
  br label %140

140:                                              ; preds = %137, %131
  br label %157

141:                                              ; preds = %117, %110
  %142 = load i64, i64* %15, align 8
  %143 = call i64 @NT_SUCCESS(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* @STATUS_END_OF_FILE, align 8
  %147 = load i64, i64* %15, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i64, i64* @TRUE, align 8
  store i64 %150, i64* %22, align 8
  %151 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %151, i64* %15, align 8
  br label %155

152:                                              ; preds = %145
  %153 = load i64, i64* %15, align 8
  %154 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %153)
  br label %155

155:                                              ; preds = %152, %149
  br label %156

156:                                              ; preds = %155, %141
  br label %157

157:                                              ; preds = %156, %140
  br label %158

158:                                              ; preds = %157, %91
  br label %40

159:                                              ; preds = %57
  %160 = load i64, i64* %22, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %159
  %163 = load i64*, i64** %13, align 8
  %164 = icmp ne i64* null, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i64*, i64** %13, align 8
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %171 = load i64, i64* @STATUS_REQUEST_ABORTED, align 8
  store i64 %171, i64* %15, align 8
  br label %172

172:                                              ; preds = %169, %165, %162, %159
  %173 = call i32 (...) @NtCurrentProcess()
  %174 = bitcast i32** %17 to i32*
  %175 = load i32, i32* @MEM_RELEASE, align 4
  %176 = call i32 @NtFreeVirtualMemory(i32 %173, i32* %174, i32* %18, i32 %175)
  br label %181

177:                                              ; preds = %7
  %178 = load i64, i64* %15, align 8
  %179 = load i32, i32* %18, align 4
  %180 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %172
  %182 = load i64, i64* %15, align 8
  ret i64 %182
}

declare dso_local i64 @NtAllocateVirtualMemory(i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @NtReadFile(i32, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @NtWriteFile(i32, i32*, i32*, i32*, i32, i32*, i64, i32*, i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @NtFreeVirtualMemory(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
