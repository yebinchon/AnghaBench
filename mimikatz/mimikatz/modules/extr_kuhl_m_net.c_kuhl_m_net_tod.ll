; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_net.c_kuhl_m_net_tod.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_net.c_kuhl_m_net_tod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@NERR_Success = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i32] [i32 82, i32 101, i32 109, i32 111, i32 116, i32 101, i32 32, i32 116, i32 105, i32 109, i32 101, i32 32, i32 40, i32 108, i32 111, i32 99, i32 97, i32 108, i32 41, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [20 x i32] [i32 78, i32 101, i32 116, i32 82, i32 101, i32 109, i32 111, i32 116, i32 101, i32 84, i32 79, i32 68, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_net_tod(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32**, i32*** %4, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32* [ %14, %11 ], [ null, %15 ]
  %18 = call i64 @NetRemoteTOD(i32* %17, %struct.TYPE_7__** %6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @NERR_Success, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = mul nsw i32 %61, 10
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 7
  store i32 %62, i32* %63, align 4
  %64 = call i32 @SystemTimeToFileTime(%struct.TYPE_6__* %7, i32* %8)
  %65 = call i32 @kprintf(i8* bitcast ([22 x i32]* @.str to i8*))
  %66 = call i32 @kull_m_string_displayLocalFileTime(i32* %8)
  %67 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = call i32 @NetApiBufferFree(%struct.TYPE_7__* %68)
  br label %73

70:                                               ; preds = %16
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @PRINT_ERROR(i8* bitcast ([20 x i32]* @.str.2 to i8*), i64 %71)
  br label %73

73:                                               ; preds = %70, %22
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %74
}

declare dso_local i64 @NetRemoteTOD(i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @SystemTimeToFileTime(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @kull_m_string_displayLocalFileTime(i32*) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_7__*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
