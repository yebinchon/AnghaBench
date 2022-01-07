; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_mimidrv.c_kkll_m_sysenvset.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_mimidrv.c_kkll_m_sysenvset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i64, i32 }

@STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i32] [i32 90, i32 119, i32 83, i32 101, i32 116, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 69, i32 110, i32 118, i32 105, i32 114, i32 111, i32 110, i32 109, i32 101, i32 110, i32 116, i32 86, i32 97, i32 108, i32 117, i32 101, i32 69, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_sysenvset(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i32*, i32*, i64, i32, i32)*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @STATUS_NOT_FOUND, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %11, align 8
  %16 = call i32 @RtlInitUnicodeString(i32* %8, i8* bitcast ([30 x i32]* @.str to i8*))
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @RtlInitUnicodeString(i32* %9, i8* %19)
  %21 = call i64 @MmGetSystemRoutineAddress(i32* %8)
  %22 = inttoptr i64 %21 to i32 (i32*, i32*, i64, i32, i32)*
  store i32 (i32*, i32*, i64, i32, i32)* %22, i32 (i32*, i32*, i64, i32, i32)** %10, align 8
  %23 = icmp ne i32 (i32*, i32*, i64, i32, i32)* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %3
  %25 = load i32 (i32*, i32*, i64, i32, i32)*, i32 (i32*, i32*, i64, i32, i32)** %10, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %29 = ptrtoint %struct.TYPE_2__* %28 to i64
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %25(i32* %9, i32* %27, i64 %33, i32 %36, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %24, %3
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i8*) #1

declare dso_local i64 @MmGetSystemRoutineAddress(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
