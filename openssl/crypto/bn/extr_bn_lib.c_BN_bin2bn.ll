; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_bin2bn.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_bin2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64*, i64 }

@BN_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @BN_bin2bn(i8* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call %struct.TYPE_9__* (...) @BN_new()
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %7, align 8
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %102

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = call i32 @bn_check_top(%struct.TYPE_9__* %22)
  br label %24

24:                                               ; preds = %35, %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ]
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %24

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %4, align 8
  br label %102

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = sub i32 %49, 1
  %51 = load i32, i32* @BN_BYTES, align 4
  %52 = udiv i32 %50, %51
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub i32 %54, 1
  %56 = load i32, i32* @BN_BYTES, align 4
  %57 = urem i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32* @bn_wexpand(%struct.TYPE_9__* %58, i32 %59)
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %64 = call i32 @BN_free(%struct.TYPE_9__* %63)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %102

65:                                               ; preds = %48
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  store i64 0, i64* %11, align 8
  br label %71

71:                                               ; preds = %97, %65
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %10, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %71
  %76 = load i64, i64* %11, align 8
  %77 = shl i64 %76, 8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i64
  %82 = or i64 %77, %81
  store i64 %82, i64* %11, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, -1
  store i32 %84, i32* %9, align 4
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %75
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %91, -1
  store i32 %92, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  store i64 %87, i64* %94, align 8
  store i64 0, i64* %11, align 8
  %95 = load i32, i32* @BN_BYTES, align 4
  %96 = sub i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %86, %75
  br label %71

98:                                               ; preds = %71
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = call i32 @bn_correct_top(%struct.TYPE_9__* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %4, align 8
  br label %102

102:                                              ; preds = %98, %62, %44, %20
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %103
}

declare dso_local %struct.TYPE_9__* @BN_new(...) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_9__*) #1

declare dso_local i32* @bn_wexpand(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @BN_free(%struct.TYPE_9__*) #1

declare dso_local i32 @bn_correct_top(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
