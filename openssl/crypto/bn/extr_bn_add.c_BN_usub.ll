; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_add.c_BN_usub.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_add.c_BN_usub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64*, i64 }

@BN_F_BN_USUB = common dso_local global i32 0, align 4
@BN_R_ARG2_LT_ARG3 = common dso_local global i32 0, align 4
@BN_MASK2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_usub(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = call i32 @bn_check_top(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = call i32 @bn_check_top(%struct.TYPE_8__* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @BN_F_BN_USUB, align 4
  %34 = load i32, i32* @BN_R_ARG2_LT_ARG3, align 4
  %35 = call i32 @BNerr(i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %110

36:                                               ; preds = %3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32* @bn_wexpand(%struct.TYPE_8__* %37, i32 %38)
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %110

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  store i64* %45, i64** %15, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %16, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  store i64* %51, i64** %14, align 8
  %52 = load i64*, i64** %14, align 8
  %53 = load i64*, i64** %15, align 8
  %54 = load i64*, i64** %16, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @bn_sub_words(i64* %52, i64* %53, i64* %54, i32 %55)
  store i64 %56, i64* %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i64*, i64** %15, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64* %60, i64** %15, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i64*, i64** %14, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64* %64, i64** %14, align 8
  br label %65

65:                                               ; preds = %68, %42
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  %71 = load i64*, i64** %15, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %15, align 8
  %73 = load i64, i64* %71, align 8
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %13, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load i64, i64* @BN_MASK2, align 8
  %78 = and i64 %76, %77
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64*, i64** %14, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %14, align 8
  store i64 %79, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %13, align 8
  %87 = and i64 %86, %85
  store i64 %87, i64* %13, align 8
  br label %65

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %99, %88
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i64*, i64** %14, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 -1
  store i64* %94, i64** %14, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br label %97

97:                                               ; preds = %92, %89
  %98 = phi i1 [ false, %89 ], [ %96, %92 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %8, align 4
  br label %89

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = call i32 @bn_pollute(%struct.TYPE_8__* %108)
  store i32 1, i32* %4, align 4
  br label %110

110:                                              ; preds = %102, %41, %32
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @bn_check_top(%struct.TYPE_8__*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32* @bn_wexpand(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @bn_sub_words(i64*, i64*, i64*, i32) #1

declare dso_local i32 @bn_pollute(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
