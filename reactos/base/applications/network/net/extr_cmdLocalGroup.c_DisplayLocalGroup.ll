; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdLocalGroup.c_DisplayLocalGroup.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdLocalGroup.c_DisplayLocalGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32 }

@NERR_Success = common dso_local global i64 0, align 8
@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @DisplayLocalGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DisplayLocalGroup(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store i32** null, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 18, i32* %13, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast %struct.TYPE_5__** %4 to i32*
  %17 = call i64 @NetLocalGroupGetInfo(i32* null, i32* %15, i32 1, i32* %16)
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @NERR_Success, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* %14, align 8
  store i64 %22, i64* %2, align 8
  br label %177

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = bitcast %struct.TYPE_5__** %5 to i32*
  %26 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %27 = call i64 @NetLocalGroupGetMembers(i32* null, i32* %24, i32 3, i32* %25, i32 %26, i32* %8, i32* %9, i32* %10)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @NERR_Success, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %150

32:                                               ; preds = %23
  %33 = bitcast %struct.TYPE_5__** %6 to i32*
  %34 = call i64 @NetServerGetInfo(i32* null, i32 100, i32* %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @NERR_Success, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %150

39:                                               ; preds = %32
  %40 = call i32 (...) @RtlGetProcessHeap()
  %41 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i32** @RtlAllocateHeap(i32 %40, i32 %41, i32 %45)
  store i32** %46, i32*** %7, align 8
  %47 = load i32**, i32*** %7, align 8
  %48 = icmp eq i32** %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %50, i64* %14, align 8
  br label %150

51:                                               ; preds = %39
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @wcslen(i32 %54)
  store i32 %55, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %100, %51
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %103

60:                                               ; preds = %56
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @wcsncmp(i32* %66, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %60
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32**, i32*** %7, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  store i32* %83, i32** %87, align 8
  br label %99

88:                                               ; preds = %60
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32**, i32*** %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  store i32* %94, i32** %98, align 8
  br label %99

99:                                               ; preds = %88, %73
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %56

103:                                              ; preds = %56
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @PrintPaddedMessageString(i32 4406, i32 %104)
  %106 = load i32, i32* @StdOut, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @ConPrintf(i32 %106, i8* bitcast ([4 x i32]* @.str to i8*), i32* %109)
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @PrintPaddedMessageString(i32 4407, i32 %111)
  %113 = load i32, i32* @StdOut, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @ConPrintf(i32 %113, i8* bitcast ([4 x i32]* @.str to i8*), i32* %116)
  %118 = load i32, i32* @StdOut, align 4
  %119 = call i32 @ConPuts(i32 %118, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %120 = call i32 @PrintMessageString(i32 4408)
  %121 = load i32, i32* @StdOut, align 4
  %122 = call i32 @ConPuts(i32 %121, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %123 = call i32 @PrintPadding(i32 45, i32 79)
  %124 = load i32, i32* @StdOut, align 4
  %125 = call i32 @ConPuts(i32 %124, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %146, %103
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %126
  %131 = load i32**, i32*** %7, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load i32, i32* @StdOut, align 4
  %139 = load i32**, i32*** %7, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @ConPrintf(i32 %138, i8* bitcast ([4 x i32]* @.str to i8*), i32* %143)
  br label %145

145:                                              ; preds = %137, %130
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %126

149:                                              ; preds = %126
  br label %150

150:                                              ; preds = %149, %49, %38, %31
  %151 = load i32**, i32*** %7, align 8
  %152 = icmp ne i32** %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = call i32 (...) @RtlGetProcessHeap()
  %155 = load i32**, i32*** %7, align 8
  %156 = call i32 @RtlFreeHeap(i32 %154, i32 0, i32** %155)
  br label %157

157:                                              ; preds = %153, %150
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = icmp ne %struct.TYPE_5__* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %162 = call i32 @NetApiBufferFree(%struct.TYPE_5__* %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %165 = icmp ne %struct.TYPE_5__* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = call i32 @NetApiBufferFree(%struct.TYPE_5__* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = icmp ne %struct.TYPE_5__* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = call i32 @NetApiBufferFree(%struct.TYPE_5__* %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i64, i64* %14, align 8
  store i64 %176, i64* %2, align 8
  br label %177

177:                                              ; preds = %175, %21
  %178 = load i64, i64* %2, align 8
  ret i64 %178
}

declare dso_local i64 @NetLocalGroupGetInfo(i32*, i32*, i32, i32*) #1

declare dso_local i64 @NetLocalGroupGetMembers(i32*, i32*, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @NetServerGetInfo(i32*, i32, i32*) #1

declare dso_local i32** @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @wcsncmp(i32*, i32, i32) #1

declare dso_local i32 @PrintPaddedMessageString(i32, i32) #1

declare dso_local i32 @ConPrintf(i32, i8*, i32*) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @PrintPadding(i32, i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32**) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
