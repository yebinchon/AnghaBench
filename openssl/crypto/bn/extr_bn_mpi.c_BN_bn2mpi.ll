; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mpi.c_BN_bn2mpi.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mpi.c_BN_bn2mpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_bn2mpi(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = call i32 @BN_num_bits(%struct.TYPE_5__* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 7
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 7
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %95

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = ashr i64 %35, 24
  %37 = trunc i64 %36 to i8
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %40, i8* %42, align 1
  %43 = load i64, i64* %9, align 8
  %44 = ashr i64 %43, 16
  %45 = trunc i64 %44 to i8
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 %48, i8* %50, align 1
  %51 = load i64, i64* %9, align 8
  %52 = ashr i64 %51, 8
  %53 = trunc i64 %52 to i8
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8 %56, i8* %58, align 1
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i8
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  store i8 %63, i8* %65, align 1
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %30
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %68, %30
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 4, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = call i32 @BN_bn2bin(%struct.TYPE_5__* %72, i8* %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %71
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %87, 128
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  br label %90

90:                                               ; preds = %83, %71
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %25
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @BN_num_bits(%struct.TYPE_5__*) #1

declare dso_local i32 @BN_bn2bin(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
