; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmWriteDependencies.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmWriteDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i32] [i32 68, i32 101, i32 112, i32 101, i32 110, i32 100, i32 79, i32 110, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [14 x i32] [i32 68, i32 101, i32 112, i32 101, i32 110, i32 100, i32 79, i32 110, i32 71, i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@SC_GROUP_IDENTIFIERW = common dso_local global i64 0, align 8
@REG_MULTI_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScmWriteDependencies(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @RegDeleteValueW(i32 %21, i8* bitcast ([16 x i32]* @.str to i8*))
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RegDeleteValueW(i32 %23, i8* bitcast ([14 x i32]* @.str.1 to i8*))
  br label %153

25:                                               ; preds = %3
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i64* @HeapAlloc(i32 %26, i32 %27, i32 %32)
  store i64* %33, i64** %12, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %37, i32* %4, align 4
  br label %155

38:                                               ; preds = %25
  %39 = load i64*, i64** %6, align 8
  store i64* %39, i64** %14, align 8
  %40 = load i64*, i64** %12, align 8
  store i64* %40, i64** %15, align 8
  br label %41

41:                                               ; preds = %68, %38
  %42 = load i64*, i64** %14, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load i64*, i64** %14, align 8
  %47 = call i32 @wcslen(i64* %46)
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load i64*, i64** %14, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SC_GROUP_IDENTIFIERW, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %45
  %54 = load i64*, i64** %14, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %14, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i64*, i64** %15, align 8
  %62 = load i64*, i64** %14, align 8
  %63 = call i32 @wcscpy(i64* %61, i64* %62)
  %64 = load i64*, i64** %15, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64* %67, i64** %15, align 8
  br label %68

68:                                               ; preds = %53, %45
  %69 = load i64*, i64** %14, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64* %72, i64** %14, align 8
  br label %41

73:                                               ; preds = %41
  %74 = load i64*, i64** %15, align 8
  store i64 0, i64* %74, align 8
  %75 = load i64*, i64** %15, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %15, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i64*, i64** %6, align 8
  store i64* %79, i64** %14, align 8
  %80 = load i64*, i64** %15, align 8
  store i64* %80, i64** %13, align 8
  br label %81

81:                                               ; preds = %104, %73
  %82 = load i64*, i64** %14, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %81
  %86 = load i64*, i64** %14, align 8
  %87 = call i32 @wcslen(i64* %86)
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = load i64*, i64** %14, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SC_GROUP_IDENTIFIERW, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %85
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i64*, i64** %15, align 8
  %98 = load i64*, i64** %14, align 8
  %99 = call i32 @wcscpy(i64* %97, i64* %98)
  %100 = load i64*, i64** %15, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64* %103, i64** %15, align 8
  br label %104

104:                                              ; preds = %93, %85
  %105 = load i64*, i64** %14, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64* %108, i64** %14, align 8
  br label %81

109:                                              ; preds = %81
  %110 = load i64*, i64** %15, align 8
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @REG_MULTI_SZ, align 4
  %118 = load i64*, i64** %12, align 8
  %119 = ptrtoint i64* %118 to i32
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @RegSetValueExW(i32 %116, i8* bitcast ([14 x i32]* @.str.1 to i8*), i32 0, i32 %117, i32 %119, i32 %123)
  store i32 %124, i32* %8, align 4
  br label %128

125:                                              ; preds = %109
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @RegDeleteValueW(i32 %126, i8* bitcast ([14 x i32]* @.str.1 to i8*))
  br label %128

128:                                              ; preds = %125, %115
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @ERROR_SUCCESS, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load i32, i32* %10, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @REG_MULTI_SZ, align 4
  %138 = load i64*, i64** %13, align 8
  %139 = ptrtoint i64* %138 to i32
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = call i32 @RegSetValueExW(i32 %136, i8* bitcast ([16 x i32]* @.str to i8*), i32 0, i32 %137, i32 %139, i32 %143)
  store i32 %144, i32* %8, align 4
  br label %148

145:                                              ; preds = %132
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @RegDeleteValueW(i32 %146, i8* bitcast ([16 x i32]* @.str to i8*))
  br label %148

148:                                              ; preds = %145, %135
  br label %149

149:                                              ; preds = %148, %128
  %150 = call i32 (...) @GetProcessHeap()
  %151 = load i64*, i64** %12, align 8
  %152 = call i32 @HeapFree(i32 %150, i32 0, i64* %151)
  br label %153

153:                                              ; preds = %149, %20
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %36
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @RegDeleteValueW(i32, i8*) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wcslen(i64*) #1

declare dso_local i32 @wcscpy(i64*, i64*) #1

declare dso_local i32 @RegSetValueExW(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
