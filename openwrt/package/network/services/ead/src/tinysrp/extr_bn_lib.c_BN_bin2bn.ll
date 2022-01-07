; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_lib.c_BN_bin2bn.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_lib.c_BN_bin2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64* }

@BN_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @BN_bin2bn(i8* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call %struct.TYPE_7__* (...) @BN_new()
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %80

20:                                               ; preds = %16
  store i64 0, i64* %11, align 8
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %4, align 8
  br label %80

28:                                               ; preds = %20
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 2
  %32 = mul nsw i32 %31, 8
  %33 = call i32* @bn_expand(%struct.TYPE_7__* %29, i32 %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %80

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = sub i32 %37, 1
  %39 = load i32, i32* @BN_BYTES, align 4
  %40 = udiv i32 %38, %39
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 %42, 1
  %44 = load i32, i32* @BN_BYTES, align 4
  %45 = urem i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %75, %36
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %10, align 4
  %52 = icmp ugt i32 %50, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = load i64, i64* %11, align 8
  %55 = shl i64 %54, 8
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i64
  %60 = or i64 %55, %59
  store i64 %60, i64* %11, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %53
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, -1
  store i32 %70, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 %65, i64* %72, align 8
  store i64 0, i64* %11, align 8
  %73 = load i32, i32* @BN_BYTES, align 4
  %74 = sub i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %64, %53
  br label %49

76:                                               ; preds = %49
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = call i32 @bn_fix_top(%struct.TYPE_7__* %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %4, align 8
  br label %80

80:                                               ; preds = %76, %35, %24, %19
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %81
}

declare dso_local %struct.TYPE_7__* @BN_new(...) #1

declare dso_local i32* @bn_expand(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bn_fix_top(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
