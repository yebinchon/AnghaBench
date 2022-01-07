; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_mul.c_BN_mul.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_mul.c_BN_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mul(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = call i32 @bn_check_top(%struct.TYPE_12__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = call i32 @bn_check_top(%struct.TYPE_12__* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = call i32 @bn_check_top(%struct.TYPE_12__* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = call i32 @BN_zero(%struct.TYPE_12__* %33)
  store i32 1, i32* %5, align 4
  br label %101

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @BN_CTX_start(i32* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = icmp eq %struct.TYPE_12__* %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = icmp eq %struct.TYPE_12__* %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %35
  %49 = load i32*, i32** %9, align 8
  %50 = call %struct.TYPE_12__* @BN_CTX_get(i32* %49)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %13, align 8
  %51 = icmp eq %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %97

53:                                               ; preds = %48
  br label %56

54:                                               ; preds = %44
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %13, align 8
  br label %56

56:                                               ; preds = %54, %53
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %59, %62
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32* @bn_wexpand(%struct.TYPE_12__* %66, i32 %67)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %97

71:                                               ; preds = %56
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @bn_mul_normal(i32 %77, i32 %80, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %88 = call i32 @bn_fix_top(%struct.TYPE_12__* %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %91 = icmp ne %struct.TYPE_12__* %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %71
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %95 = call i32 @BN_copy(%struct.TYPE_12__* %93, %struct.TYPE_12__* %94)
  br label %96

96:                                               ; preds = %92, %71
  store i32 1, i32* %14, align 4
  br label %97

97:                                               ; preds = %96, %70, %52
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @BN_CTX_end(i32* %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %32
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @bn_check_top(%struct.TYPE_12__*) #1

declare dso_local i32 @BN_zero(%struct.TYPE_12__*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local %struct.TYPE_12__* @BN_CTX_get(i32*) #1

declare dso_local i32* @bn_wexpand(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @bn_mul_normal(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bn_fix_top(%struct.TYPE_12__*) #1

declare dso_local i32 @BN_copy(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
