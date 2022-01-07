; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_csum_update.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_csum_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csum_state = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csum_update(i32* %0, i32 %1, %struct.csum_state* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csum_state*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.csum_state* %2, %struct.csum_state** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %95

10:                                               ; preds = %3
  %11 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %12 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %10
  %16 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %17 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %25 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %29 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 65535
  br i1 %31, label %32, label %41

32:                                               ; preds = %15
  %33 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %34 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %38 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 65535
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %15
  %42 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %43 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %41, %10
  br label %49

49:                                               ; preds = %79, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %84

52:                                               ; preds = %49
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %62 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %66 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 65535
  br i1 %68, label %69, label %78

69:                                               ; preds = %52
  %70 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %71 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %75 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 65535
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %69, %52
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 2
  store i32 %81, i32* %5, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32* %83, i32** %4, align 8
  br label %49

84:                                               ; preds = %49
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %92 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %94 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %9, %87, %84
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
