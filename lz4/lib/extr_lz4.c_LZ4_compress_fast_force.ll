; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4.c_LZ4_compress_fast_force.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4.c_LZ4_compress_fast_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@LZ4_64Klimit = common dso_local global i32 0, align 4
@limitedOutput = common dso_local global i32 0, align 4
@byU16 = common dso_local global i32 0, align 4
@noDict = common dso_local global i32 0, align 4
@noDictIssue = common dso_local global i32 0, align 4
@byU32 = common dso_local global i32 0, align 4
@byPtr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_compress_fast_force(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = call i32 @LZ4_initStream(%struct.TYPE_3__* %12, i32 4)
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @LZ4_64Klimit, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @limitedOutput, align 4
  %25 = load i32, i32* @byU16, align 4
  %26 = load i32, i32* @noDict, align 4
  %27 = load i32, i32* @noDictIssue, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @LZ4_compress_generic(i32* %19, i8* %20, i8* %21, i32 %22, i32* null, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %43

30:                                               ; preds = %5
  %31 = load i32, i32* @byU32, align 4
  store i32 %31, i32* %13, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @limitedOutput, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @noDict, align 4
  %40 = load i32, i32* @noDictIssue, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @LZ4_compress_generic(i32* %32, i8* %33, i8* %34, i32 %35, i32* null, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %30, %18
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @LZ4_initStream(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @LZ4_compress_generic(i32*, i8*, i8*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
