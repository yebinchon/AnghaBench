; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_is_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_is_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Wrong guid %s (%d)\0A\00", align 1
@CLSIDFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Found guid %s (%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @is_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_guid(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca [50 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca [10 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 38
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 60
  br i1 %19, label %20, label %22

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %167

22:                                               ; preds = %13
  %23 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  store i8 60, i8* %23, align 16
  br label %24

24:                                               ; preds = %40, %22
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 48
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 62
  br label %38

38:                                               ; preds = %28, %24
  %39 = phi i1 [ false, %24 ], [ %37, %28 ]
  br i1 %39, label %40, label %53

40:                                               ; preds = %38
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 %49
  store i8 %47, i8* %50, align 1
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %24

53:                                               ; preds = %38
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 %56
  store i8 62, i8* %57, align 1
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 38
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %64, i32 %65)
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %2, align 4
  br label %167

68:                                               ; preds = %53
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = sext i32 %69 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %71, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %81 = load i32, i32* @CLSIDFMT, align 4
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  %94 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  %96 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  %100 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %101 = getelementptr inbounds i32, i32* %100, i64 9
  %102 = call i32 @sscanf(i8* %80, i32 %81, i32* %82, i32* %83, i32* %85, i32* %87, i32* %89, i32* %91, i32* %93, i32* %95, i32* %97, i32* %99, i32* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 11
  br i1 %104, label %105, label %110

105:                                              ; preds = %68
  %106 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %106, i32 %107)
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %2, align 4
  br label %167

110:                                              ; preds = %68
  %111 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %111, i32 %112)
  %114 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %115 = load i32, i32* %114, align 16
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %115, i32* %116, align 8
  %117 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %121, i32* %124, align 4
  %125 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %126, i32* %129, align 4
  %130 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 4
  %131 = load i32, i32* %130, align 16
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32 %131, i32* %134, align 4
  %135 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 5
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 %136, i32* %139, align 4
  %140 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 6
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  store i32 %141, i32* %144, align 4
  %145 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 7
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  store i32 %146, i32* %149, align 4
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 8
  %151 = load i32, i32* %150, align 16
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 6
  store i32 %151, i32* %154, align 4
  %155 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 7
  store i32 %156, i32* %159, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.TYPE_5__*
  %164 = bitcast %struct.TYPE_5__* %163 to i8*
  %165 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %164, i8* align 8 %165, i64 24, i1 false)
  %166 = load i32, i32* @TRUE, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %110, %105, %63, %20
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @TRACE(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
