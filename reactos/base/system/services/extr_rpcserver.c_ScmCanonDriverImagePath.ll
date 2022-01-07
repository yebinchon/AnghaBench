; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_rpcserver.c_ScmCanonDriverImagePath.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_rpcserver.c_ScmCanonDriverImagePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i32] [i32 92, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 82, i32 111, i32 111, i32 116, i32 92, i32 0], align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Error allocating memory for canonized service name!\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@SERVICE_BOOT_START = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Canonicalized name %S\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i32] [i32 37, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 82, i32 111, i32 111, i32 116, i32 37, i32 92, i32 0], align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"RtlDosPathNameToNtPathName_U() failed!\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Error converting named!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmCanonDriverImagePath(i64 %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %12, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @wcslen(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 12
  br i1 %17, label %18, label %54

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @_wcsnicmp(i8* bitcast ([13 x i32]* @.str to i8*), i32* %19, i32 12)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %18
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32* @HeapAlloc(i32 %23, i32 %24, i32 %29)
  %31 = load i32**, i32*** %7, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %37, i64* %4, align 8
  br label %199

38:                                               ; preds = %22
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @SERVICE_BOOT_START, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 12
  store i32* %44, i32** %12, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32**, i32*** %7, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 (i32*, ...) @wcscpy(i32* %47, i32* %48)
  %50 = load i32**, i32*** %7, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  %53 = load i64, i64* @NO_ERROR, align 8
  store i64 %53, i64* %4, align 8
  br label %199

54:                                               ; preds = %18, %3
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 13
  br i1 %56, label %57, label %95

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @_wcsnicmp(i8* bitcast ([14 x i32]* @.str.3 to i8*), i32* %58, i32 13)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %57
  %62 = call i32 (...) @GetProcessHeap()
  %63 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32* @HeapAlloc(i32 %62, i32 %63, i32 %68)
  %70 = load i32**, i32*** %7, align 8
  store i32* %69, i32** %70, align 8
  %71 = load i32**, i32*** %7, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %76, i64* %4, align 8
  br label %199

77:                                               ; preds = %61
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @SERVICE_BOOT_START, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32**, i32*** %7, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 (i32*, ...) @wcscpy(i32* %83, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32**, i32*** %7, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 13
  %90 = call i32 @wcscat(i32* %87, i32* %89)
  %91 = load i32**, i32*** %7, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %92)
  %94 = load i64, i64* @NO_ERROR, align 8
  store i64 %94, i64* %4, align 8
  br label %199

95:                                               ; preds = %57, %54
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 92
  br i1 %99, label %100, label %127

100:                                              ; preds = %95
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 58
  br i1 %104, label %105, label %127

105:                                              ; preds = %100
  %106 = call i32 (...) @GetProcessHeap()
  %107 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i32* @HeapAlloc(i32 %106, i32 %107, i32 %112)
  %114 = load i32**, i32*** %7, align 8
  store i32* %113, i32** %114, align 8
  %115 = load i32**, i32*** %7, align 8
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %120, i64* %4, align 8
  br label %199

121:                                              ; preds = %105
  %122 = load i32**, i32*** %7, align 8
  %123 = load i32*, i32** %122, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 (i32*, ...) @wcscpy(i32* %123, i32* %124)
  %126 = load i64, i64* @NO_ERROR, align 8
  store i64 %126, i64* %4, align 8
  br label %199

127:                                              ; preds = %100, %95
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @RtlDosPathNameToNtPathName_U(i32* %128, %struct.TYPE_4__* %10, i32* null, i32* null)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %133, i64* %4, align 8
  br label %199

134:                                              ; preds = %127
  %135 = call i32 (...) @GetProcessHeap()
  %136 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i32* @HeapAlloc(i32 %135, i32 %136, i32 %141)
  %143 = load i32**, i32*** %7, align 8
  store i32* %142, i32** %143, align 8
  %144 = load i32**, i32*** %7, align 8
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %134
  %148 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %149 = call i32 @RtlFreeUnicodeString(%struct.TYPE_4__* %10)
  %150 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %150, i64* %4, align 8
  br label %199

151:                                              ; preds = %134
  %152 = load i32**, i32*** %7, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = udiv i64 %158, 4
  %160 = trunc i64 %159 to i32
  %161 = call i32 @wcsncpy(i32* %153, i32 %155, i32 %160)
  %162 = call i32 @RtlFreeUnicodeString(%struct.TYPE_4__* %10)
  %163 = load i64, i64* %5, align 8
  %164 = load i64, i64* @SERVICE_BOOT_START, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %151
  %167 = load i32**, i32*** %7, align 8
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %168)
  %170 = load i64, i64* @NO_ERROR, align 8
  store i64 %170, i64* %4, align 8
  br label %199

171:                                              ; preds = %151
  %172 = load i32**, i32*** %7, align 8
  %173 = load i32*, i32** %172, align 8
  %174 = call i64 @ScmConvertToBootPathName(i32* %173, i32** %11)
  store i64 %174, i64* %8, align 8
  %175 = load i64, i64* %8, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %171
  %178 = call i32 (...) @GetProcessHeap()
  %179 = load i32**, i32*** %7, align 8
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @HeapFree(i32 %178, i32 0, i32* %180)
  %182 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %183 = load i64, i64* %8, align 8
  store i64 %183, i64* %4, align 8
  br label %199

184:                                              ; preds = %171
  %185 = load i32*, i32** %11, align 8
  %186 = call i32 @ASSERT(i32* %185)
  %187 = load i32**, i32*** %7, align 8
  %188 = load i32*, i32** %187, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 12
  %191 = call i32 (i32*, ...) @wcscpy(i32* %188, i32* %190)
  %192 = call i32 (...) @GetProcessHeap()
  %193 = load i32*, i32** %11, align 8
  %194 = call i32 @HeapFree(i32 %192, i32 0, i32* %193)
  %195 = load i32**, i32*** %7, align 8
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %196)
  %198 = load i64, i64* @NO_ERROR, align 8
  store i64 %198, i64* %4, align 8
  br label %199

199:                                              ; preds = %184, %177, %166, %147, %131, %121, %118, %85, %74, %45, %35
  %200 = load i64, i64* %4, align 8
  ret i64 %200
}

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @_wcsnicmp(i8*, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @wcscpy(i32*, ...) #1

declare dso_local i32 @wcscat(i32*, i32*) #1

declare dso_local i32 @RtlDosPathNameToNtPathName_U(i32*, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_4__*) #1

declare dso_local i32 @wcsncpy(i32*, i32, i32) #1

declare dso_local i64 @ScmConvertToBootPathName(i32*, i32**) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
