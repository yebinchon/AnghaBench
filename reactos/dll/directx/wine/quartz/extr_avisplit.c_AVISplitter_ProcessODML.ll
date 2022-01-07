; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_ProcessODML.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_ProcessODML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"processing extension header\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Size: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"dwGrandFrames: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"dwFuture[%i] = %u (0x%08x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"unknown chunk type \22%.04s\22 ignored\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @AVISplitter_ProcessODML to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVISplitter_ProcessODML(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %7, align 8
  br label %12

12:                                               ; preds = %101, %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = bitcast %struct.TYPE_5__* %13 to i32*
  %15 = load i32*, i32** %5, align 8
  %16 = icmp uge i32* %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = bitcast %struct.TYPE_5__* %18 to i32*
  %20 = getelementptr inbounds i32, i32* %19, i64 16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = icmp ult i32* %20, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br label %31

31:                                               ; preds = %26, %17, %12
  %32 = phi i1 [ false, %17 ], [ false, %12 ], [ %30, %26 ]
  br i1 %32, label %33, label %110

33:                                               ; preds = %31
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %95 [
    i32 128, label %37
  ]

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = bitcast %struct.TYPE_5__* %38 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %9, align 8
  %40 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 8
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %100

51:                                               ; preds = %37
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %86, %51
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 61
  br i1 %58, label %59, label %89

59:                                               ; preds = %56
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %76, i32 %83)
  br label %85

85:                                               ; preds = %68, %59
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %56

89:                                               ; preds = %56
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = bitcast %struct.TYPE_7__* %91 to i8*
  %94 = bitcast %struct.TYPE_7__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false)
  br label %100

95:                                               ; preds = %33
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = ptrtoint i32* %97 to i32
  %99 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %89, %46
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = bitcast %struct.TYPE_5__* %102 to i32*
  %104 = getelementptr inbounds i32, i32* %103, i64 16
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = bitcast i32* %108 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %7, align 8
  br label %12

110:                                              ; preds = %31
  %111 = load i32, i32* @S_OK, align 4
  ret i32 %111
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @FIXME(i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
