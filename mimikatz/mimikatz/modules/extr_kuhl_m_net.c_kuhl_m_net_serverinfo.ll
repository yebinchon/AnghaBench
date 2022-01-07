; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_net.c_kuhl_m_net_serverinfo.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_net.c_kuhl_m_net_serverinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@NERR_Success = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i32] [i32 112, i32 108, i32 97, i32 116, i32 102, i32 111, i32 114, i32 109, i32 95, i32 105, i32 100, i32 58, i32 32, i32 37, i32 117, i32 10, i32 110, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 46, i32 37, i32 117, i32 10, i32 99, i32 111, i32 109, i32 109, i32 101, i32 110, i32 116, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 116, i32 121, i32 112, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 0], align 4
@SV_TYPES = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 32, i32 59, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [24 x i32] [i32 78, i32 101, i32 116, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 71, i32 101, i32 116, i32 73, i32 110, i32 102, i32 111, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_net_serverinfo(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32**, i32*** %4, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32* [ %13, %10 ], [ null, %14 ]
  %17 = bitcast %struct.TYPE_3__** %5 to i32*
  %18 = call i64 @NetServerGetInfo(i32* %16, i32 102, i32* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @NERR_Success, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %15
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([88 x i32]* @.str to i8*), i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %63, %22
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** @SV_TYPES, align 8
  %45 = call i32 @ARRAYSIZE(i32* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i32*, i32** @SV_TYPES, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.1 to i8*), i32 %60)
  br label %62

62:                                               ; preds = %55, %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %42

66:                                               ; preds = %42
  %67 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = call i32 @NetApiBufferFree(%struct.TYPE_3__* %68)
  br label %73

70:                                               ; preds = %15
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str.3 to i8*), i64 %71)
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %74
}

declare dso_local i64 @NetServerGetInfo(i32*, i32, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_3__*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
