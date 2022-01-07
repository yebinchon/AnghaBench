; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_convert_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_convert_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32* }

@BN_F_BN_BLINDING_CONVERT_EX = common dso_local global i32 0, align 4
@BN_R_NOT_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_BLINDING_convert_ex(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @bn_check_top(i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @BN_F_BN_BLINDING_CONVERT_EX, align 4
  %24 = load i32, i32* @BN_R_NOT_INITIALIZED, align 4
  %25 = call i32 @BNerr(i32 %23, i32 %24)
  store i32 0, i32* %5, align 4
  br label %81

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %41

34:                                               ; preds = %26
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @BN_BLINDING_update(%struct.TYPE_4__* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %81

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* @BN_copy(i32* %45, i32* %48)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %81

52:                                               ; preds = %44, %41
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @BN_mod_mul_montgomery(i32* %58, i32* %59, i32* %62, i32* %65, i32* %66)
  store i32 %67, i32* %10, align 4
  br label %79

68:                                               ; preds = %52
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @BN_mod_mul(i32* %69, i32* %70, i32* %73, i32 %76, i32* %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %68, %57
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %51, %39, %22
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_BLINDING_update(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_mod_mul_montgomery(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
