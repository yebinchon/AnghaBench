; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_dibitmap.c_DibLoadImage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_dibitmap.c_DibLoadImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, %struct.TYPE_10__*, i32 }

@Ok = common dso_local global i64 0, align 8
@BI_RGB = common dso_local global i32 0, align 4
@PixelFormat32bppPARGB = common dso_local global i32 0, align 4
@ImageLockModeRead = common dso_local global i32 0, align 4
@ImageLockModeUserInputBuf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @DibLoadImage(i32 %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @GdipCreateBitmapFromFile(i32 %7, i32** %5)
  %9 = load i64, i64* @Ok, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %197

12:                                               ; preds = %1
  %13 = call i32 (...) @GetProcessHeap()
  %14 = call i8* @HeapAlloc(i32 %13, i32 0, i32 4)
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @GdipDisposeImage(i32* %19)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %197

21:                                               ; preds = %12
  %22 = call i32 (...) @GetProcessHeap()
  %23 = call i8* @HeapAlloc(i32 %22, i32 0, i32 4)
  %24 = bitcast i8* %23 to %struct.TYPE_10__*
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = call i32 @HeapFree(i32 %32, i32 0, %struct.TYPE_10__* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @GdipDisposeImage(i32* %35)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %197

37:                                               ; preds = %21
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = call i64 @GdipGetImageWidth(i32* %38, i32* %40)
  %42 = load i64, i64* @Ok, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = call i64 @GdipGetImageHeight(i32* %45, i32* %47)
  %49 = load i64, i64* @Ok, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %44, %37
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = call i32 @HeapFree(i32 %52, i32 0, %struct.TYPE_10__* %55)
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @HeapFree(i32 %57, i32 0, %struct.TYPE_10__* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @GdipDisposeImage(i32* %60)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %197

62:                                               ; preds = %44
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = mul nsw i32 %70, 4
  %72 = call i8* @HeapAlloc(i32 %63, i32 0, i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_10__*
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %62
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = call i32 @HeapFree(i32 %81, i32 0, %struct.TYPE_10__* %84)
  %86 = call i32 (...) @GetProcessHeap()
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = call i32 @HeapFree(i32 %86, i32 0, %struct.TYPE_10__* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @GdipDisposeImage(i32* %89)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %197

91:                                               ; preds = %62
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = call i32 @ZeroMemory(%struct.TYPE_10__* %94, i32 4)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 4, i32* %100, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 %103, i32* %108, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 0, %111
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 6
  store i32 %112, i32* %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  store i32 32, i32* %127, align 4
  %128 = load i32, i32* @BI_RGB, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 5
  store i32 %128, i32* %133, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = mul nsw i32 %140, 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  store i32 %141, i32* %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 %149, i32* %150, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i32 %153, i32* %154, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %157, 4
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  store i32 %158, i32* %159, align 8
  %160 = load i32, i32* @PixelFormat32bppPARGB, align 4
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 5
  store i32 %160, i32* %161, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  store %struct.TYPE_10__* %164, %struct.TYPE_10__** %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store i64 0, i64* %166, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* @ImageLockModeRead, align 4
  %169 = load i32, i32* @ImageLockModeUserInputBuf, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @PixelFormat32bppPARGB, align 4
  %172 = call i64 @GdipBitmapLockBits(i32* %167, i32* null, i32 %170, i32 %171, %struct.TYPE_11__* %6)
  %173 = load i64, i64* @Ok, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %91
  %176 = call i32 (...) @GetProcessHeap()
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = call i32 @HeapFree(i32 %176, i32 0, %struct.TYPE_10__* %179)
  %181 = call i32 (...) @GetProcessHeap()
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = call i32 @HeapFree(i32 %181, i32 0, %struct.TYPE_10__* %184)
  %186 = call i32 (...) @GetProcessHeap()
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = call i32 @HeapFree(i32 %186, i32 0, %struct.TYPE_10__* %187)
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @GdipDisposeImage(i32* %189)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %197

191:                                              ; preds = %91
  %192 = load i32*, i32** %5, align 8
  %193 = call i32 @GdipBitmapUnlockBits(i32* %192, %struct.TYPE_11__* %6)
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @GdipDisposeImage(i32* %194)
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %196, %struct.TYPE_10__** %2, align 8
  br label %197

197:                                              ; preds = %191, %175, %80, %51, %31, %18, %11
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %198
}

declare dso_local i64 @GdipCreateBitmapFromFile(i32, i32**) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @GdipGetImageWidth(i32*, i32*) #1

declare dso_local i64 @GdipGetImageHeight(i32*, i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @GdipBitmapLockBits(i32*, i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GdipBitmapUnlockBits(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
