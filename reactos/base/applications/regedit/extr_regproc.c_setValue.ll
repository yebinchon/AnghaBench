; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_setValue.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_setValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.setValue.del = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@currentKeyHandle = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@ERROR_INVALID_DATA = common dso_local global i64 0, align 8
@REG_DWORD = common dso_local global i64 0, align 8
@REG_BINARY = common dso_local global i64 0, align 8
@REG_MULTI_SZ = common dso_local global i64 0, align 8
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%S: ERROR, unknown data format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32)* @setValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setValue(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [2 x i8], align 1
  %15 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = bitcast [2 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.setValue.del, i32 0, i32 0), i64 2, i1 false)
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %3
  %23 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %23, i64* %4, align 8
  br label %155

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %27 = call i64 @lstrcmpW(i8* %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32, i32* @currentKeyHandle, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @RegDeleteValueW(i32 %30, i8* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  br label %40

38:                                               ; preds = %29
  %39 = load i64, i64* %8, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %4, align 8
  br label %155

42:                                               ; preds = %24
  %43 = call i64 @getDataType(i8** %6, i64* %10)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @REG_SZ, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @REGPROC_unescape_string(i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @lstrlenW(i8* %50)
  store i64 %51, i64* %13, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %13, align 8
  %54 = sub nsw i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 34
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %60, i64* %4, align 8
  br label %155

61:                                               ; preds = %47
  %62 = load i64, i64* %13, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %13, align 8
  %67 = sub nsw i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 34
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i64, i64* %13, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %13, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %72, %64, %61
  %79 = load i8*, i8** %6, align 8
  %80 = bitcast i8* %79 to i32*
  store i32* %80, i32** %11, align 8
  %81 = load i64, i64* %13, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %13, align 8
  %84 = mul i64 %83, 1
  store i64 %84, i64* %13, align 8
  br label %139

85:                                               ; preds = %42
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @REG_DWORD, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @convertHexToDWord(i8* %90, i64* %12)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %94, i64* %4, align 8
  br label %155

95:                                               ; preds = %89
  %96 = bitcast i64* %12 to i32*
  store i32* %96, i32** %11, align 8
  store i64 8, i64* %13, align 8
  br label %138

97:                                               ; preds = %85
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @REG_BINARY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %132

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = call i32* @convertHexCSVToHex(i8* %102, i64* %13)
  store i32* %103, i32** %11, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %107, i64* %4, align 8
  br label %155

108:                                              ; preds = %101
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* @REG_MULTI_SZ, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* @REG_EXPAND_SZ, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %112, %108
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %116
  %120 = load i32*, i32** %11, align 8
  store i32* %120, i32** %15, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = bitcast i32* %121 to i8*
  %123 = load i64, i64* %13, align 8
  %124 = call i64 @GetWideStringN(i8* %122, i64 %123, i64* %13)
  %125 = inttoptr i64 %124 to i32*
  store i32* %125, i32** %11, align 8
  %126 = load i64, i64* %13, align 8
  %127 = mul i64 %126, 1
  store i64 %127, i64* %13, align 8
  %128 = call i32 (...) @GetProcessHeap()
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 @HeapFree(i32 %128, i32 0, i32* %129)
  br label %131

131:                                              ; preds = %119, %116, %112
  br label %137

132:                                              ; preds = %97
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 (...) @getAppName()
  %135 = call i32 @fprintf(i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %136, i64* %4, align 8
  br label %155

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %95
  br label %139

139:                                              ; preds = %138, %78
  %140 = load i32, i32* @currentKeyHandle, align 4
  %141 = load i8*, i8** %5, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load i64, i64* %13, align 8
  %145 = call i64 @RegSetValueExW(i32 %140, i8* %141, i32 0, i64 %142, i32* %143, i64 %144)
  store i64 %145, i64* %8, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @REG_BINARY, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = call i32 (...) @GetProcessHeap()
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @HeapFree(i32 %150, i32 0, i32* %151)
  br label %153

153:                                              ; preds = %149, %139
  %154 = load i64, i64* %8, align 8
  store i64 %154, i64* %4, align 8
  br label %155

155:                                              ; preds = %153, %132, %106, %93, %59, %40, %22
  %156 = load i64, i64* %4, align 8
  ret i64 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @lstrcmpW(i8*, i8*) #2

declare dso_local i64 @RegDeleteValueW(i32, i8*) #2

declare dso_local i64 @getDataType(i8**, i64*) #2

declare dso_local i32 @REGPROC_unescape_string(i8*) #2

declare dso_local i64 @lstrlenW(i8*) #2

declare dso_local i32 @convertHexToDWord(i8*, i64*) #2

declare dso_local i32* @convertHexCSVToHex(i8*, i64*) #2

declare dso_local i64 @GetWideStringN(i8*, i64, i64*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i32 @getAppName(...) #2

declare dso_local i64 @RegSetValueExW(i32, i8*, i32, i64, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
