; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_select_proxy.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_select_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@PLAY_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, %struct.TYPE_4__*, i32, i32*)* @select_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @select_proxy(i32 %0, %struct.TYPE_4__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %90

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %67 [
    i32 128, label %19
    i32 129, label %43
  ]

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %11, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = call i32 (...) @rand()
  %24 = load i32, i32* %8, align 4
  %25 = urem i32 %23, %24
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PLAY_STATE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul i32 %37, 100
  %39 = icmp ult i32 %36, %38
  br label %40

40:                                               ; preds = %35, %26
  %41 = phi i1 [ false, %26 ], [ %39, %35 ]
  br i1 %41, label %20, label %42

42:                                               ; preds = %40
  br label %68

43:                                               ; preds = %17
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %63, %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PLAY_STATE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %66

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %46

66:                                               ; preds = %59, %46
  br label %67

67:                                               ; preds = %17, %66
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp uge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PLAY_STATE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  br label %88

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %82
  %89 = phi %struct.TYPE_4__* [ %86, %82 ], [ null, %87 ]
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %5, align 8
  br label %90

90:                                               ; preds = %88, %16
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %91
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
