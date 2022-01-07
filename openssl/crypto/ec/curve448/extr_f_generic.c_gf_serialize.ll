; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_f_generic.c_gf_serialize.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_f_generic.c_gf_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64* }

@SER_BYTES = common dso_local global i32 0, align 4
@X_SER_BYTES = common dso_local global i32 0, align 4
@NLIMBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf_serialize(i64* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @SER_BYTES, align 4
  %13 = zext i32 %12 to i64
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = call i32 @gf_copy(%struct.TYPE_7__* %14, %struct.TYPE_7__* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %18 = call i32 @gf_strong_reduce(%struct.TYPE_7__* %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %23 = call i64 @gf_hibit(%struct.TYPE_7__* %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %21, %3
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %79, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @X_SER_BYTES, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @SER_BYTES, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = icmp slt i32 %29, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %40, 8
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @NLIMBS, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @LIMBPERM(i32 %50)
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @LIMBPERM(i32 %59)
  %61 = call i64 @LIMB_PLACE_VALUE(i64 %60)
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %46, %42, %39
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64*, i64** %4, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %70, i64* %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sub i32 %75, 8
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 8
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %28

82:                                               ; preds = %36
  ret void
}

declare dso_local i32 @gf_copy(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @gf_strong_reduce(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @gf_hibit(%struct.TYPE_7__*) #1

declare dso_local i64 @LIMBPERM(i32) #1

declare dso_local i64 @LIMB_PLACE_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
