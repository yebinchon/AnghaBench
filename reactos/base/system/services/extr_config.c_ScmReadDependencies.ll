; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmReadDependencies.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmReadDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i32] [i32 68, i32 101, i32 112, i32 101, i32 110, i32 100, i32 79, i32 110, i32 71, i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@.str.1 = private unnamed_addr constant [16 x i32] [i32 68, i32 101, i32 112, i32 101, i32 110, i32 100, i32 79, i32 110, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"Groups:\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"  %S\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Services:\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"cchTotalLength: %lu\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@SC_GROUP_IDENTIFIERW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmReadDependencies(i32 %0, i64** %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* null, i64** %8, align 8
  store i64* null, i64** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i64**, i64*** %6, align 8
  store i64* null, i64** %16, align 8
  %17 = load i64*, i64** %7, align 8
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ScmReadString(i32 %18, i8* bitcast ([14 x i32]* @.str to i8*), i64** %8)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ScmReadString(i32 %20, i8* bitcast ([16 x i32]* @.str.1 to i8*), i64** %9)
  %22 = load i64*, i64** %8, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i64*, i64** %9, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %28, i64* %4, align 8
  br label %177

29:                                               ; preds = %24, %3
  %30 = load i64*, i64** %8, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i64*, i64** %8, align 8
  store i64* %34, i64** %12, align 8
  br label %35

35:                                               ; preds = %39, %32
  %36 = load i64*, i64** %12, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i64*, i64** %12, align 8
  %41 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64* %40)
  %42 = load i64*, i64** %12, align 8
  %43 = call i32 @wcslen(i64* %42)
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i64*, i64** %12, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64* %52, i64** %12, align 8
  br label %35

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i64*, i64** %9, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i64*, i64** %9, align 8
  store i64* %59, i64** %12, align 8
  br label %60

60:                                               ; preds = %64, %57
  %61 = load i64*, i64** %12, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i64*, i64** %12, align 8
  %66 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64* %65)
  %67 = load i64*, i64** %12, align 8
  %68 = call i32 @wcslen(i64* %67)
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i64*, i64** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64* %76, i64** %12, align 8
  br label %60

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %79, %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = call i32 (...) @GetProcessHeap()
  %86 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i64* @HeapAlloc(i32 %85, i32 %86, i32 %90)
  %92 = load i64**, i64*** %6, align 8
  store i64* %91, i64** %92, align 8
  %93 = load i64**, i64*** %6, align 8
  %94 = load i64*, i64** %93, align 8
  %95 = icmp eq i64* %94, null
  br i1 %95, label %96, label %112

96:                                               ; preds = %78
  %97 = load i64*, i64** %8, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = call i32 (...) @GetProcessHeap()
  %101 = load i64*, i64** %8, align 8
  %102 = call i32 @HeapFree(i32 %100, i32 0, i64* %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i64*, i64** %9, align 8
  %105 = icmp ne i64* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = call i32 (...) @GetProcessHeap()
  %108 = load i64*, i64** %9, align 8
  %109 = call i32 @HeapFree(i32 %107, i32 0, i64* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %111, i64* %4, align 8
  br label %177

112:                                              ; preds = %78
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64*, i64** %7, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i64**, i64*** %6, align 8
  %117 = load i64*, i64** %116, align 8
  store i64* %117, i64** %13, align 8
  %118 = load i64*, i64** %9, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %112
  %121 = load i64*, i64** %13, align 8
  %122 = load i64*, i64** %9, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memcpy(i64* %121, i64* %122, i32 %126)
  %128 = load i64*, i64** %13, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64* %131, i64** %13, align 8
  br label %132

132:                                              ; preds = %120, %112
  %133 = load i64*, i64** %8, align 8
  %134 = icmp ne i64* %133, null
  br i1 %134, label %135, label %161

135:                                              ; preds = %132
  %136 = load i64*, i64** %8, align 8
  store i64* %136, i64** %12, align 8
  br label %137

137:                                              ; preds = %141, %135
  %138 = load i64*, i64** %12, align 8
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %137
  %142 = load i64*, i64** %12, align 8
  %143 = call i32 @wcslen(i64* %142)
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  %145 = load i64, i64* @SC_GROUP_IDENTIFIERW, align 8
  %146 = load i64*, i64** %13, align 8
  store i64 %145, i64* %146, align 8
  %147 = load i64*, i64** %13, align 8
  %148 = getelementptr inbounds i64, i64* %147, i32 1
  store i64* %148, i64** %13, align 8
  %149 = load i64*, i64** %13, align 8
  %150 = load i64*, i64** %12, align 8
  %151 = call i32 @wcscpy(i64* %149, i64* %150)
  %152 = load i64*, i64** %13, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  store i64* %155, i64** %13, align 8
  %156 = load i64*, i64** %12, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  store i64* %159, i64** %12, align 8
  br label %137

160:                                              ; preds = %137
  br label %161

161:                                              ; preds = %160, %132
  %162 = load i64*, i64** %8, align 8
  %163 = icmp ne i64* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = call i32 (...) @GetProcessHeap()
  %166 = load i64*, i64** %8, align 8
  %167 = call i32 @HeapFree(i32 %165, i32 0, i64* %166)
  br label %168

168:                                              ; preds = %164, %161
  %169 = load i64*, i64** %9, align 8
  %170 = icmp ne i64* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = call i32 (...) @GetProcessHeap()
  %173 = load i64*, i64** %9, align 8
  %174 = call i32 @HeapFree(i32 %172, i32 0, i64* %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %176, i64* %4, align 8
  br label %177

177:                                              ; preds = %175, %110, %27
  %178 = load i64, i64* %4, align 8
  ret i64 %178
}

declare dso_local i32 @ScmReadString(i32, i8*, i64**) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @wcslen(i64*) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @wcscpy(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
