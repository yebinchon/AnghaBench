; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_invert_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_invert_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64*, i64 }
%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_14__* }

@BN_F_BN_BLINDING_INVERT_EX = common dso_local global i32 0, align 4
@BN_R_NOT_INITIALIZED = common dso_local global i32 0, align 4
@BN_FLG_FIXED_TOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_BLINDING_invert_ex(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = call i32 @bn_check_top(%struct.TYPE_14__* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = icmp eq %struct.TYPE_14__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %7, align 8
  %23 = icmp eq %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @BN_F_BN_BLINDING_INVERT_EX, align 4
  %26 = load i32, i32* @BN_R_NOT_INITIALIZED, align 4
  %27 = call i32 @BNerr(i32 %25, i32 %26)
  store i32 0, i32* %5, align 4
  br label %117

28:                                               ; preds = %19, %4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %104

33:                                               ; preds = %28
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %95

41:                                               ; preds = %33
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %66, %41
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %13, align 8
  %55 = sub i64 %53, %54
  %56 = lshr i64 %55, 63
  %57 = sub i64 0, %56
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, %58
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %52
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %48

69:                                               ; preds = %48
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = sub i64 %70, %71
  %73 = lshr i64 %72, 63
  %74 = sub i64 0, %73
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %14, align 8
  %77 = xor i64 %76, -1
  %78 = and i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = and i64 %81, %82
  %84 = or i64 %80, %83
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* @BN_FLG_FIXED_TOP, align 8
  %88 = load i64, i64* %14, align 8
  %89 = xor i64 %88, -1
  %90 = and i64 %87, %89
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = or i64 %93, %90
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %69, %33
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_14__* %96, %struct.TYPE_14__* %97, %struct.TYPE_14__* %98, i32* %101, i32* %102)
  store i32 %103, i32* %10, align 4
  br label %113

104:                                              ; preds = %28
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @BN_mod_mul(%struct.TYPE_14__* %105, %struct.TYPE_14__* %106, %struct.TYPE_14__* %107, i32 %110, i32* %111)
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %104, %95
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = call i32 @bn_check_top(%struct.TYPE_14__* %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %24
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @bn_check_top(%struct.TYPE_14__*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_mod_mul_montgomery(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
