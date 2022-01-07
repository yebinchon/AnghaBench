; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_acr.c_kull_m_arc_sendrecv.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_acr.c_kull_m_arc_sendrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@ACR_MAX_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i32] [i32 65, i32 67, i32 82, i32 32, i32 32, i32 62, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@IOCTL_CCID_ESCAPE = common dso_local global i32 0, align 4
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i32] [i32 65, i32 67, i32 82, i32 32, i32 32, i32 60, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [12 x i32] [i32 37, i32 115, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [13 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 0], align 4
@.str.5 = private unnamed_addr constant [14 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 84, i32 114, i32 97, i32 110, i32 115, i32 109, i32 105, i32 116, i32 0], align 4
@.str.6 = private unnamed_addr constant [44 x i32] [i32 99, i32 98, i32 68, i32 97, i32 116, i32 97, i32 32, i32 61, i32 32, i32 37, i32 104, i32 117, i32 32, i32 47, i32 32, i32 99, i32 98, i32 82, i32 101, i32 115, i32 117, i32 108, i32 116, i32 32, i32 61, i32 32, i32 37, i32 104, i32 117, i32 32, i32 40, i32 109, i32 97, i32 120, i32 32, i32 105, i32 115, i32 32, i32 37, i32 104, i32 117, i32 41, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [19 x i32] [i32 78, i32 111, i32 32, i32 104, i32 97, i32 110, i32 100, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 67, i32 97, i32 114, i32 100, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_arc_sendrecv(%struct.TYPE_3__* %0, i32* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i64*, i64** %10, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %102

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @ACR_MAX_LEN, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %96

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = call i32 @kprintf(i8* bitcast ([8 x i32]* @.str to i8*))
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @kull_m_string_wprintf_hex(i32* %32, i64 %33, i32 1)
  %35 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @IOCTL_CCID_ESCAPE, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @SCardControl(i64 %44, i32 %45, i32* %46, i64 %47, i32* %48, i64 %50, i64* %13)
  br label %60

52:                                               ; preds = %36
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @SCardTransmit(i64 %55, i32* null, i32* %56, i64 %57, i32* null, i32* %58, i64* %13)
  br label %60

60:                                               ; preds = %52, %41
  %61 = phi i64 [ %51, %41 ], [ %59, %52 ]
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = call i32 @kprintf(i8* bitcast ([8 x i32]* @.str.2 to i8*))
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @kull_m_string_wprintf_hex(i32* %72, i64 %73, i32 1)
  %75 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i64, i64* %13, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp sle i64 %77, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %11, align 4
  br i1 %80, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64, i64* %13, align 8
  %84 = load i64*, i64** %10, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %76
  br label %95

86:                                               ; preds = %60
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([14 x i32], [14 x i32]* @.str.5, i64 0, i64 0)
  %93 = load i64, i64* %12, align 8
  %94 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([12 x i32]* @.str.3 to i8*), i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %86, %85
  br label %101

96:                                               ; preds = %21
  %97 = load i64, i64* %8, align 8
  %98 = load i64*, i64** %10, align 8
  %99 = load i64, i64* @ACR_MAX_LEN, align 8
  %100 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([44 x i32]* @.str.6 to i8*), i64 %97, i64* %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %95
  br label %104

102:                                              ; preds = %5
  %103 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([19 x i32]* @.str.7 to i8*))
  br label %104

104:                                              ; preds = %102, %101
  %105 = load i32, i32* %11, align 4
  ret i32 %105
}

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i64, i32) #1

declare dso_local i64 @SCardControl(i64, i32, i32*, i64, i32*, i64, i64*) #1

declare dso_local i64 @SCardTransmit(i64, i32*, i32*, i64, i32*, i32*, i64*) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
