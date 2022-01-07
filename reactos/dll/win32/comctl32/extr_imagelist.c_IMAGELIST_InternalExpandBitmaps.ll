; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_imagelist.c_IMAGELIST_InternalExpandBitmaps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_imagelist.c_IMAGELIST_InternalExpandBitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i8*, i64, i32, i64, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"%p has allocated %d, max %d, grow %d images\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Create expanded bitmaps : himl=%p x=%d y=%d count=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"creating new image bitmap (x=%d y=%d)!\0A\00", align 1
@SRCCOPY = common dso_local global i32 0, align 4
@ILC_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"creating new mask bitmap!\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64)* @IMAGELIST_InternalExpandBitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IMAGELIST_InternalExpandBitmaps(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %11, i64 %14, i64 %17, i64 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %185

32:                                               ; preds = %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @max(i64 %36, i64 %39)
  %41 = add nsw i64 %35, %40
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %8, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @imagelist_get_bitmap_size(%struct.TYPE_9__* %43, i64 %44, %struct.TYPE_8__* %9)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %46, i64 %48, i64 %50, i64 %51)
  %53 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @ImageList_CreateImage(i32 %54, %struct.TYPE_9__* %55, i64 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %32
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %62, i64 %64)
  br label %66

66:                                               ; preds = %60, %32
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @SelectObject(i32 %72, i64 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i32, i32* %5, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SRCCOPY, align 4
  %84 = call i32 @BitBlt(i32 %75, i32 0, i32 0, i64 %77, i64 %79, i32 %82, i32 0, i32 0, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @SelectObject(i32 %85, i64 %86)
  br label %88

88:                                               ; preds = %71, %66
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @SelectObject(i32 %91, i64 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @DeleteObject(i64 %96)
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 7
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ILC_MASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %152

107:                                              ; preds = %88
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @CreateBitmap(i64 %109, i64 %111, i32 1, i32 1, i32* null)
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* %6, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %107
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  %124 = load i64, i64* %6, align 8
  %125 = call i64 @SelectObject(i32 %123, i64 %124)
  store i64 %125, i64* %7, align 8
  %126 = load i32, i32* %5, align 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SRCCOPY, align 4
  %135 = call i32 @BitBlt(i32 %126, i32 0, i32 0, i64 %128, i64 %130, i32 %133, i32 0, i32 0, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = load i64, i64* %7, align 8
  %138 = call i64 @SelectObject(i32 %136, i64 %137)
  br label %139

139:                                              ; preds = %122, %117
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = call i64 @SelectObject(i32 %142, i64 %143)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @DeleteObject(i64 %147)
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %139, %88
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %179

157:                                              ; preds = %152
  %158 = call i32 (...) @GetProcessHeap()
  %159 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = load i64, i64* %8, align 8
  %164 = call i8* @HeapReAlloc(i32 %158, i32 %159, i8* %162, i64 %163)
  store i8* %164, i8** %10, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = load i8*, i8** %10, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  br label %178

171:                                              ; preds = %157
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @heap_free(i8* %174)
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 4
  store i8* null, i8** %177, align 8
  br label %178

178:                                              ; preds = %171, %167
  br label %179

179:                                              ; preds = %178, %152
  %180 = load i64, i64* %8, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @DeleteDC(i32 %183)
  br label %185

185:                                              ; preds = %179, %31
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_9__*, i64, i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @imagelist_get_bitmap_size(%struct.TYPE_9__*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i64 @ImageList_CreateImage(i32, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i64 @CreateBitmap(i64, i64, i32, i32, i32*) #1

declare dso_local i8* @HeapReAlloc(i32, i32, i8*, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
