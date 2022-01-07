; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/shutdown/extr_misc.c_ParseReasonCode.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/shutdown/extr_misc.c_ParseReasonCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@defaultReason = common dso_local global i32 0, align 4
@shutdownReason = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseReasonCode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @defaultReason, align 4
  store i32 %12, i32* %2, align 4
  br label %87

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @wcslen(i32* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 58
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %13
  %27 = load i32, i32* @defaultReason, align 4
  store i32 %27, i32* %2, align 4
  br label %87

28:                                               ; preds = %20
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %29, 5
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %32, 7
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @defaultReason, align 4
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 7
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 20
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %42, %39, %36
  %49 = load i32, i32* @defaultReason, align 4
  store i32 %49, i32* %2, align 4
  br label %87

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shutdownReason, align 8
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %4, align 8
  br label %52

52:                                               ; preds = %81, %50
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @_wcsicmp(i32* %70, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %2, align 4
  br label %87

80:                                               ; preds = %69, %63, %57
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 1
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %4, align 8
  br label %52

84:                                               ; preds = %52
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* @defaultReason, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %76, %48, %34, %26, %11
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i64 @_wcsicmp(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
