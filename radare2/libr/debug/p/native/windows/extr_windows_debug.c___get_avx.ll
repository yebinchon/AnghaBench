; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c___get_avx.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c___get_avx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@XSTATE_MASK_AVX = common dso_local global i32 0, align 4
@CONTEXT_ALL = common dso_local global i32 0, align 4
@CONTEXT_XSTATE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@XSTATE_LEGACY_SSE = common dso_local global i32 0, align 4
@XSTATE_AVX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*, %struct.TYPE_4__*)* @__get_avx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_avx(i32 %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  store i8* null, i8** %15, align 8
  %17 = call i32 (...) @w32_GetEnabledXStateFeatures()
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @XSTATE_MASK_AVX, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %187

23:                                               ; preds = %3
  %24 = load i32, i32* @CONTEXT_ALL, align 4
  %25 = load i32, i32* @CONTEXT_XSTATE, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @w32_InitializeContext(i8* null, i32 %26, i32* null, i32* %10)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %23
  store i32 0, i32* %4, align 4
  br label %187

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @malloc(i32 %35)
  store i8* %36, i8** %15, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %187

40:                                               ; preds = %34
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* @CONTEXT_ALL, align 4
  %43 = load i32, i32* @CONTEXT_XSTATE, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @w32_InitializeContext(i8* %41, i32 %44, i32* %16, i32* %10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %183

48:                                               ; preds = %40
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* @XSTATE_MASK_AVX, align 4
  %51 = call i32 @w32_SetXStateFeaturesMask(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %183

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @GetThreadContext(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %183

60:                                               ; preds = %54
  %61 = load i32, i32* %16, align 4
  %62 = call i64 @w32_GetXStateFeaturesMask(i32 %61, i32* %12)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %183

65:                                               ; preds = %60
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @XSTATE_LEGACY_SSE, align 4
  %68 = call i64 @w32_LocateXStateFeature(i32 %66, i32 %67, i32* %11)
  %69 = inttoptr i64 %68 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 16
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %99, %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %78
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %74

102:                                              ; preds = %74
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %104 = icmp ne %struct.TYPE_4__* %103, null
  br i1 %104, label %105, label %137

105:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %133, %105
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i64 %116, i64* %121, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i64 %127, i64* %132, align 8
  br label %133

133:                                              ; preds = %110
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %106

136:                                              ; preds = %106
  br label %137

137:                                              ; preds = %136, %102
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @XSTATE_MASK_AVX, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %182

142:                                              ; preds = %137
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @XSTATE_AVX, align 4
  %145 = call i64 @w32_LocateXStateFeature(i32 %143, i32 %144, i32* null)
  %146 = inttoptr i64 %145 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %146, %struct.TYPE_4__** %14, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %148 = icmp ne %struct.TYPE_4__* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  br label %183

150:                                              ; preds = %142
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %178, %150
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %181

155:                                              ; preds = %151
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  store i64 %161, i64* %166, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i64 %172, i64* %177, align 8
  br label %178

178:                                              ; preds = %155
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %151

181:                                              ; preds = %151
  br label %182

182:                                              ; preds = %181, %137
  br label %183

183:                                              ; preds = %182, %149, %64, %59, %53, %47
  %184 = load i8*, i8** %15, align 8
  %185 = call i32 @free(i8* %184)
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %39, %33, %22
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @w32_GetEnabledXStateFeatures(...) #1

declare dso_local i64 @w32_InitializeContext(i8*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @w32_SetXStateFeaturesMask(i32, i32) #1

declare dso_local i32 @GetThreadContext(i32, i32) #1

declare dso_local i64 @w32_GetXStateFeaturesMask(i32, i32*) #1

declare dso_local i64 @w32_LocateXStateFeature(i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
