; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_net.c_kuhl_m_net_wsession.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_net.c_kuhl_m_net_wsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i32] [i32 10, i32 85, i32 115, i32 101, i32 114, i32 110, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 76, i32 111, i32 103, i32 111, i32 110, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [17 x i32] [i32 79, i32 116, i32 104, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 115, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [24 x i32] [i32 78, i32 101, i32 116, i32 87, i32 107, i32 115, i32 116, i32 97, i32 85, i32 115, i32 101, i32 114, i32 69, i32 110, i32 117, i32 109, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_net_wsession(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %85, %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32**, i32*** %4, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  br label %19

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32* [ %17, %14 ], [ null, %18 ]
  %21 = bitcast %struct.TYPE_3__** %5 to i32*
  %22 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %23 = call i64 @NetWkstaUserEnum(i32* %20, i32 1, i32* %21, i32 %22, i64* %6, i64* %7, i64* %8)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @ERROR_MORE_DATA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %81

30:                                               ; preds = %26, %19
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([50 x i32]* @.str to i8*), i64 %41, i32 %46, i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %35
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @wcslen(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.1 to i8*), i64 %72)
  br label %74

74:                                               ; preds = %67, %59, %35
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %9, align 8
  br label %31

78:                                               ; preds = %31
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = call i32 @NetApiBufferFree(%struct.TYPE_3__* %79)
  br label %84

81:                                               ; preds = %26
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str.2 to i8*), i64 %82)
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @ERROR_MORE_DATA, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %11, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %90
}

declare dso_local i64 @NetWkstaUserEnum(i32*, i32, i32*, i32, i64*, i64*, i64*) #1

declare dso_local i32 @kprintf(i8*, i64, ...) #1

declare dso_local i64 @wcslen(i64) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_3__*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
