; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_GetChmString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_GetChmString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32**, i32 }
%struct.TYPE_5__ = type { i32 }

@BLOCK_BITS = common dso_local global i32 0, align 4
@BLOCK_MASK = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Seek failed: %08x\0A\00", align 1
@BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Read failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"offset %#x => %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32)* @GetChmString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetChmString(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %158

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BLOCK_BITS, align 4
  %21 = ashr i32 %19, %20
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @BLOCK_BITS, align 4
  %26 = ashr i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = icmp ne i32** %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i32** @heap_realloc_zero(i32** %37, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32** %44, i32*** %46, align 8
  br label %57

47:                                               ; preds = %23
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call i32** @heap_alloc_zero(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32** %54, i32*** %56, align 8
  br label %57

57:                                               ; preds = %47, %34
  br label %58

58:                                               ; preds = %57, %15
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @BLOCK_BITS, align 4
  %64 = ashr i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %61, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %138, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @BLOCK_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @STREAM_SEEK_SET, align 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @IStream_Seek(i32 %77, i32 %80, i32 %78, i32* null)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @FAILED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %69
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %86)
  store i32* null, i32** %3, align 8
  br label %158

88:                                               ; preds = %69
  %89 = load i32, i32* @BLOCK_SIZE, align 4
  %90 = call i32* @heap_alloc(i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @BLOCK_BITS, align 4
  %96 = ashr i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %93, i64 %97
  store i32* %90, i32** %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @BLOCK_BITS, align 4
  %107 = ashr i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %104, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @BLOCK_SIZE, align 4
  %112 = call i32 @IStream_Read(i32 %101, i32* %110, i32 %111, i32* %8)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @FAILED(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %88
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @BLOCK_BITS, align 4
  %124 = ashr i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %121, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @heap_free(i32* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @BLOCK_BITS, align 4
  %134 = ashr i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %131, i64 %135
  store i32* null, i32** %136, align 8
  store i32* null, i32** %3, align 8
  br label %158

137:                                              ; preds = %88
  br label %138

138:                                              ; preds = %137, %58
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @BLOCK_BITS, align 4
  %144 = ashr i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %141, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @BLOCK_MASK, align 4
  %150 = and i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  store i32* %152, i32** %6, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @debugstr_a(i32* %154)
  %156 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %155)
  %157 = load i32*, i32** %6, align 8
  store i32* %157, i32** %3, align 8
  br label %158

158:                                              ; preds = %138, %116, %85, %14
  %159 = load i32*, i32** %3, align 8
  ret i32* %159
}

declare dso_local i32** @heap_realloc_zero(i32**, i32) #1

declare dso_local i32** @heap_alloc_zero(i32) #1

declare dso_local i32 @IStream_Seek(i32, i32, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @IStream_Read(i32, i32*, i32, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_a(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
