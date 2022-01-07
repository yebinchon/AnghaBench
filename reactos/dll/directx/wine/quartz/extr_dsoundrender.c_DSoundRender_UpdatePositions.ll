; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_dsoundrender.c_DSoundRender_UpdatePositions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_dsoundrender.c_DSoundRender_UpdatePositions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Moving from %u to %u: clearing %u bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Underrun of data occurred!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i64*, i64*)* @DSoundRender_UpdatePositions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DSoundRender_UpdatePositions(%struct.TYPE_14__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %7, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %17, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %15, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %3
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %14, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %14, align 8
  br label %50

50:                                               ; preds = %44, %3
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @IDirectSoundBuffer_GetCurrentPosition(i32 %53, i64* %12, i64* %13)
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %50
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i64, i64* %15, align 8
  %65 = sub nsw i64 %63, %64
  store i64 %65, i64* %16, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @time_from_pos(%struct.TYPE_14__* %66, i64 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  br label %81

77:                                               ; preds = %50
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %15, align 8
  %80 = sub nsw i64 %78, %79
  store i64 %80, i64* %16, align 8
  br label %81

81:                                               ; preds = %77, %58
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %126

87:                                               ; preds = %81
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %16, align 8
  %91 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %88, i64 %89, i64 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %16, align 8
  %97 = bitcast i32** %8 to i8**
  %98 = bitcast i32** %9 to i8**
  %99 = call i32 @IDirectSoundBuffer_Lock(i32 %94, i64 %95, i64 %96, i8** %97, i64* %10, i8** %98, i64* %11, i32 0)
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 8
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 128, i32 0
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @memset(i32* %100, i32 %106, i64 %107)
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 8
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 128, i32 0
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @memset(i32* %109, i32 %115, i64 %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @IDirectSoundBuffer_Unlock(i32 %120, i32* %121, i64 %122, i32* %123, i64 %124)
  br label %126

126:                                              ; preds = %87, %81
  %127 = load i64, i64* %13, align 8
  %128 = load i64*, i64** %6, align 8
  store i64 %127, i64* %128, align 8
  %129 = load i32, i32* %17, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %13, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %145

145:                                              ; preds = %138, %135
  %146 = load i64, i64* %13, align 8
  %147 = load i64*, i64** %5, align 8
  store i64 %146, i64* %147, align 8
  br label %153

148:                                              ; preds = %131
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %5, align 8
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %148, %145
  ret void
}

declare dso_local i32 @IDirectSoundBuffer_GetCurrentPosition(i32, i64*, i64*) #1

declare dso_local i64 @time_from_pos(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @TRACE(i8*, i64, i64, i64) #1

declare dso_local i32 @IDirectSoundBuffer_Lock(i32, i64, i64, i8**, i64*, i8**, i64*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @IDirectSoundBuffer_Unlock(i32, i32*, i64, i32*, i64) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
