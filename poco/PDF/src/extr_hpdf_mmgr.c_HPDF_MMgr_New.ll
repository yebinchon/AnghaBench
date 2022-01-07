; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_mmgr.c_HPDF_MMgr_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_mmgr.c_HPDF_MMgr_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, %struct.TYPE_8__*, i32 (%struct.TYPE_9__*)*, i64 (i8*)*, i64, i32 }
%struct.TYPE_8__ = type { i32*, i64, i8*, i32* }

@.str = private unnamed_addr constant [16 x i8] c" HPDF_MMgr_New\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"+%p mmgr-new\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"+%p mmgr-node-new\0A\00", align 1
@HPDF_FAILD_TO_ALLOC_MEM = common dso_local global i32 0, align 4
@HPDF_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @HPDF_MMgr_New(i32 %0, i8* %1, i64 (i32)* %2, i32 (%struct.TYPE_9__*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i32)*, align 8
  %8 = alloca i32 (%struct.TYPE_9__*)*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 (i32)* %2, i64 (i32)** %7, align 8
  store i32 (%struct.TYPE_9__*)* %3, i32 (%struct.TYPE_9__*)** %8, align 8
  %11 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load i64 (i32)*, i64 (i32)** %7, align 8
  %13 = icmp ne i64 (i32)* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i64 (i32)*, i64 (i32)** %7, align 8
  %16 = call i64 %15(i32 4)
  %17 = inttoptr i64 %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %9, align 8
  br label %21

18:                                               ; preds = %4
  %19 = call i64 @InternalGetMem(i32 4)
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %9, align 8
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = bitcast %struct.TYPE_9__* %22 to i8*
  %24 = call i32 @HPDF_PTRACE(i8* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %103

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load i64 (i32)*, i64 (i32)** %7, align 8
  %32 = icmp ne i64 (i32)* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %8, align 8
  %35 = icmp ne i32 (%struct.TYPE_9__*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i64 (i32)*, i64 (i32)** %7, align 8
  %38 = bitcast i64 (i32)* %37 to i64 (i8*)*
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  store i64 (i8*)* %38, i64 (i8*)** %40, align 8
  %41 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  store i32 (%struct.TYPE_9__*)* %41, i32 (%struct.TYPE_9__*)** %43, align 8
  br label %49

44:                                               ; preds = %33, %27
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  store i64 (i8*)* bitcast (i64 (i32)* @InternalGetMem to i64 (i8*)*), i64 (i8*)** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  store i32 (%struct.TYPE_9__*)* @InternalFreeMem, i32 (%struct.TYPE_9__*)** %48, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %54, align 8
  br label %95

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = load i64 (i8*)*, i64 (i8*)** %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr i8, i8* %59, i64 4
  %61 = call i64 %58(i8* %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %10, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = bitcast %struct.TYPE_8__* %63 to i8*
  %65 = call i32 @HPDF_PTRACE(i8* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = icmp eq %struct.TYPE_8__* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %55
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @HPDF_FAILD_TO_ALLOC_MEM, align 4
  %71 = load i32, i32* @HPDF_NOERROR, align 4
  %72 = call i32 @HPDF_SetError(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = call i32 %75(%struct.TYPE_9__* %76)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  br label %94

78:                                               ; preds = %55
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = bitcast %struct.TYPE_8__* %82 to i32*
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32* %84, i32** %86, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %78, %68
  br label %95

95:                                               ; preds = %94, %52
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = icmp ne %struct.TYPE_9__* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %95
  br label %108

103:                                              ; preds = %21
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @HPDF_FAILD_TO_ALLOC_MEM, align 4
  %106 = load i32, i32* @HPDF_NOERROR, align 4
  %107 = call i32 @HPDF_SetError(i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %102
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  ret %struct.TYPE_9__* %109
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @InternalGetMem(i32) #1

declare dso_local i32 @InternalFreeMem(%struct.TYPE_9__*) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
