; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_acr.c_kull_m_acr_sendrecv_ins.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_acr.c_kull_m_acr_sendrecv_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ACR_MAX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_acr_sendrecv_ins(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6, i32* %7, i64* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i64* %8, i64** %19, align 8
  store i32 %9, i32* %20, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* @ACR_MAX_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %22, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %23, align 8
  store i32 4, i32* %24, align 4
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load i32, i32* %13, align 4
  %33 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %14, align 4
  %35 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %15, align 4
  %37 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 %36, i32* %37, align 4
  %38 = load i64, i64* %17, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %10
  %41 = load i64, i64* %17, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %24, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %24, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %29, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %24, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %29, i64 %48
  %50 = load i32*, i32** %16, align 8
  %51 = load i64, i64* %17, align 8
  %52 = call i32 @RtlCopyMemory(i32* %49, i32* %50, i64 %51)
  %53 = load i64, i64* %17, align 8
  %54 = load i32, i32* %24, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %24, align 4
  br label %58

58:                                               ; preds = %40, %10
  %59 = load i32, i32* %20, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = load i64*, i64** %19, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i64*, i64** %19, align 8
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %24, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %24, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %29, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %61, %58
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %24, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = load i64*, i64** %19, align 8
  %78 = call i32 @kull_m_arc_sendrecv(i32 %74, i32* %29, i32 %75, i32* %76, i64* %77)
  %79 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i64) #2

declare dso_local i32 @kull_m_arc_sendrecv(i32, i32*, i32, i32*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
