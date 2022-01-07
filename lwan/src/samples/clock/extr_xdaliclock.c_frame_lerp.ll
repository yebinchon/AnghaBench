; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_frame_lerp.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_frame_lerp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { %struct.scanline* }
%struct.scanline = type { i8**, i8** }
%struct.xdaliclock = type { i32*, i32*, %struct.frame*, %struct.frame* }

@base_frames = common dso_local global %struct.frame** null, align 8
@char_height = common dso_local global i32 0, align 4
@MAX_SEGS_PER_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame* (%struct.xdaliclock*, i32, i32)* @frame_lerp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame* @frame_lerp(%struct.xdaliclock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.frame*, align 8
  %5 = alloca %struct.xdaliclock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.frame*, align 8
  %11 = alloca %struct.frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scanline*, align 8
  %15 = alloca %struct.scanline*, align 8
  %16 = alloca %struct.scanline*, align 8
  store %struct.xdaliclock* %0, %struct.xdaliclock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.xdaliclock*, %struct.xdaliclock** %5, align 8
  %18 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.xdaliclock*, %struct.xdaliclock** %5, align 8
  %25 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.frame**, %struct.frame*** @base_frames, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.frame*, %struct.frame** %34, i64 %36
  %38 = load %struct.frame*, %struct.frame** %37, align 8
  br label %43

39:                                               ; preds = %3
  %40 = load %struct.xdaliclock*, %struct.xdaliclock** %5, align 8
  %41 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %40, i32 0, i32 3
  %42 = load %struct.frame*, %struct.frame** %41, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi %struct.frame* [ %38, %33 ], [ %42, %39 ]
  store %struct.frame* %44, %struct.frame** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load %struct.frame*, %struct.frame** %10, align 8
  store %struct.frame* %49, %struct.frame** %4, align 8
  br label %150

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.frame**, %struct.frame*** @base_frames, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.frame*, %struct.frame** %54, i64 %56
  %58 = load %struct.frame*, %struct.frame** %57, align 8
  br label %63

59:                                               ; preds = %50
  %60 = load %struct.xdaliclock*, %struct.xdaliclock** %5, align 8
  %61 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %60, i32 0, i32 3
  %62 = load %struct.frame*, %struct.frame** %61, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = phi %struct.frame* [ %58, %53 ], [ %62, %59 ]
  store %struct.frame* %64, %struct.frame** %11, align 8
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %143, %63
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @char_height, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %146

69:                                               ; preds = %65
  %70 = load %struct.xdaliclock*, %struct.xdaliclock** %5, align 8
  %71 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %70, i32 0, i32 2
  %72 = load %struct.frame*, %struct.frame** %71, align 8
  %73 = getelementptr inbounds %struct.frame, %struct.frame* %72, i32 0, i32 0
  %74 = load %struct.scanline*, %struct.scanline** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.scanline, %struct.scanline* %74, i64 %76
  store %struct.scanline* %77, %struct.scanline** %14, align 8
  %78 = load %struct.frame*, %struct.frame** %10, align 8
  %79 = getelementptr inbounds %struct.frame, %struct.frame* %78, i32 0, i32 0
  %80 = load %struct.scanline*, %struct.scanline** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.scanline, %struct.scanline* %80, i64 %82
  store %struct.scanline* %83, %struct.scanline** %15, align 8
  %84 = load %struct.frame*, %struct.frame** %11, align 8
  %85 = getelementptr inbounds %struct.frame, %struct.frame* %84, i32 0, i32 0
  %86 = load %struct.scanline*, %struct.scanline** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.scanline, %struct.scanline* %86, i64 %88
  store %struct.scanline* %89, %struct.scanline** %16, align 8
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %139, %69
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @MAX_SEGS_PER_LINE, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = load %struct.scanline*, %struct.scanline** %16, align 8
  %96 = getelementptr inbounds %struct.scanline, %struct.scanline* %95, i32 0, i32 1
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.scanline*, %struct.scanline** %15, align 8
  %103 = getelementptr inbounds %struct.scanline, %struct.scanline* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i8* @lerp(i8* %101, i8* %108, i32 %109)
  %111 = load %struct.scanline*, %struct.scanline** %14, align 8
  %112 = getelementptr inbounds %struct.scanline, %struct.scanline* %111, i32 0, i32 1
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* %110, i8** %116, align 8
  %117 = load %struct.scanline*, %struct.scanline** %16, align 8
  %118 = getelementptr inbounds %struct.scanline, %struct.scanline* %117, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.scanline*, %struct.scanline** %15, align 8
  %125 = getelementptr inbounds %struct.scanline, %struct.scanline* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i8* @lerp(i8* %123, i8* %130, i32 %131)
  %133 = load %struct.scanline*, %struct.scanline** %14, align 8
  %134 = getelementptr inbounds %struct.scanline, %struct.scanline* %133, i32 0, i32 0
  %135 = load i8**, i8*** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  store i8* %132, i8** %138, align 8
  br label %139

139:                                              ; preds = %94
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %90

142:                                              ; preds = %90
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %65

146:                                              ; preds = %65
  %147 = load %struct.xdaliclock*, %struct.xdaliclock** %5, align 8
  %148 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %147, i32 0, i32 2
  %149 = load %struct.frame*, %struct.frame** %148, align 8
  store %struct.frame* %149, %struct.frame** %4, align 8
  br label %150

150:                                              ; preds = %146, %48
  %151 = load %struct.frame*, %struct.frame** %4, align 8
  ret %struct.frame* %151
}

declare dso_local i8* @lerp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
