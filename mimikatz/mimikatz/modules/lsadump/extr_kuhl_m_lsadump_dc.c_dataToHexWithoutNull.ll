; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_dataToHexWithoutNull.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_dataToHexWithoutNull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dataToHexWithoutNull(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 2
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 2
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %4
  %22 = load i32, i32* @LPTR, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @LocalAlloc(i32 %22, i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sub nsw i32 %37, %39
  %41 = load i64, i64* %5, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sprintf_s(i64 %36, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %54

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %27

54:                                               ; preds = %49, %27
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %9, align 4
  br i1 %57, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @RtlCopyMemory(i32 %60, i64 %61, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @LocalFree(i64 %66)
  br label %68

68:                                               ; preds = %65, %21
  br label %69

69:                                               ; preds = %68, %4
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @sprintf_s(i64, i32, i8*, i32) #1

declare dso_local i32 @RtlCopyMemory(i32, i64, i32) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
