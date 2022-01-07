; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_findPair.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_findPair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"{}[]()<>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @findPair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findPair(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %21, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %11, align 1
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %11, align 1
  %32 = call i64 @strchr(i8* %30, i8 signext %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %1
  store i8 0, i8* %12, align 1
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ugt i8* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -1
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %12, align 1
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = srem i32 %51, 2
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8, i8* %12, align 1
  %60 = sext i8 %59 to i32
  br label %66

61:                                               ; preds = %54, %44
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %60, %58 ], [ %65, %61 ]
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %11, align 1
  br label %69

69:                                               ; preds = %66, %1
  store i32 1, i32* %5, align 4
  %70 = load i8, i8* %11, align 1
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  store i8 %70, i8* %71, align 16
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %108

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = srem i32 %75, 2
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %104, %78
  %82 = load i32, i32* %4, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* %11, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %84
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8* %102, i8** %9, align 8
  br label %107

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %4, align 4
  br label %81

107:                                              ; preds = %96, %81
  br label %139

108:                                              ; preds = %74, %69
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %117, %119
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %122 = load i32, i32* %5, align 4
  %123 = call i8* @r_mem_mem(i8* %114, i64 %120, i8* %121, i32 %122)
  store i8* %123, i8** %9, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %138, label %126

126:                                              ; preds = %108
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i64 @R_MIN(i64 %132, i32 %133)
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %136 = load i32, i32* %5, align 4
  %137 = call i8* @r_mem_mem(i8* %129, i64 %134, i8* %135, i32 %136)
  store i8* %137, i8** %9, align 8
  br label %138

138:                                              ; preds = %126, %108
  br label %139

139:                                              ; preds = %138, %107
  %140 = load i8*, i8** %9, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %161

142:                                              ; preds = %139
  %143 = load i8*, i8** %9, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = ptrtoint i8* %143 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  store i32 -1, i32* %158, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %160 = call i32 @r_core_visual_showcursor(%struct.TYPE_6__* %159, i32 1)
  br label %161

161:                                              ; preds = %142, %139
  ret void
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_mem_mem(i8*, i64, i8*, i32) #1

declare dso_local i64 @R_MIN(i64, i32) #1

declare dso_local i32 @r_core_visual_showcursor(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
