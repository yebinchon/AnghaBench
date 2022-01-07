; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_UncompressLZ77_Phrases.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_UncompressLZ77_Phrases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"|Phrases\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"1a\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @HLPFILE_UncompressLZ77_Phrases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_UncompressLZ77_Phrases(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = call i32 @HLPFILE_FindSubFile(%struct.TYPE_4__* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32** %8, i32** %9)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %162

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 13, i32* %7, align 4
  br label %22

21:                                               ; preds = %15
  store i32 17, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @GET_USHORT(i32* %23, i32 9)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 %24, i32* %5, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 19
  %33 = load i32*, i32** %9, align 8
  %34 = icmp uge i32* %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = call i32 @WINE_WARN(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %162

38:                                               ; preds = %22
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sle i32 %41, 16
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = ptrtoint i32* %44 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = sub nsw i64 %49, 15
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 2, %51
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %50, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %65

56:                                               ; preds = %38
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 19
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 2, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @HLPFILE_UncompressedLZ77_Size(i32* %62, i32* %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %56, %43
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = call i8* @HeapAlloc(i32 %66, i32 0, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i32, i32* %6, align 4
  %78 = call i8* @HeapAlloc(i32 %76, i32 0, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %65
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %86, %65
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @HeapFree(i32 %92, i32 0, i32* %95)
  %97 = call i32 (...) @GetProcessHeap()
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @HeapFree(i32 %97, i32 0, i32* %100)
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %2, align 4
  br label %162

103:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %125, %103
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %104
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %4, align 4
  %112 = mul nsw i32 2, %111
  %113 = add nsw i32 %110, %112
  %114 = call i32 @GET_USHORT(i32* %109, i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = mul nsw i32 2, %115
  %117 = sub nsw i32 %114, %116
  %118 = sub nsw i32 %117, 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %108
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %104

128:                                              ; preds = %104
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sle i32 %131, 16
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 15
  %139 = load i32, i32* %5, align 4
  %140 = mul nsw i32 2, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @memcpy(i32* %136, i32* %142, i32 %143)
  br label %157

145:                                              ; preds = %128
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 19
  %148 = load i32, i32* %5, align 4
  %149 = mul nsw i32 2, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32*, i32** %9, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @HLPFILE_UncompressLZ77(i32* %151, i32* %152, i32* %155)
  br label %157

157:                                              ; preds = %145, %133
  %158 = load i32, i32* @TRUE, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %157, %91, %35, %13
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @HLPFILE_FindSubFile(%struct.TYPE_4__*, i8*, i32**, i32**) #1

declare dso_local i32 @GET_USHORT(i32*, i32) #1

declare dso_local i32 @WINE_WARN(i8*) #1

declare dso_local i32 @HLPFILE_UncompressedLZ77_Size(i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @HLPFILE_UncompressLZ77(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
