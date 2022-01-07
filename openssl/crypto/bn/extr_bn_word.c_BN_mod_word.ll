; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_word.c_BN_mod_word.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_word.c_BN_mod_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64* }

@BN_BITS4 = common dso_local global i64 0, align 8
@BN_MASK2 = common dso_local global i64 0, align 8
@BN_MASK2l = common dso_local global i64 0, align 8
@BN_BITS2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BN_mod_word(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %81

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @BN_BITS4, align 8
  %15 = shl i64 1, %14
  %16 = icmp sgt i64 %13, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call %struct.TYPE_8__* @BN_dup(%struct.TYPE_8__* %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i64 -1, i64* %3, align 8
  br label %81

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @BN_div_word(%struct.TYPE_8__* %24, i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = call i32 @BN_free(%struct.TYPE_8__* %27)
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %81

30:                                               ; preds = %12
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @bn_check_top(%struct.TYPE_8__* %31)
  %33 = load i64, i64* @BN_MASK2, align 8
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %76, %30
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %40
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @BN_BITS4, align 8
  %46 = shl i64 %44, %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BN_BITS4, align 8
  %55 = ashr i64 %53, %54
  %56 = load i64, i64* @BN_MASK2l, align 8
  %57 = and i64 %55, %56
  %58 = or i64 %46, %57
  %59 = load i64, i64* %5, align 8
  %60 = srem i64 %58, %59
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @BN_BITS4, align 8
  %63 = shl i64 %61, %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BN_MASK2l, align 8
  %72 = and i64 %70, %71
  %73 = or i64 %63, %72
  %74 = load i64, i64* %5, align 8
  %75 = srem i64 %73, %74
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %43
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %7, align 4
  br label %40

79:                                               ; preds = %40
  %80 = load i64, i64* %6, align 8
  store i64 %80, i64* %3, align 8
  br label %81

81:                                               ; preds = %79, %23, %22, %11
  %82 = load i64, i64* %3, align 8
  ret i64 %82
}

declare dso_local %struct.TYPE_8__* @BN_dup(%struct.TYPE_8__*) #1

declare dso_local i64 @BN_div_word(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @BN_free(%struct.TYPE_8__*) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
