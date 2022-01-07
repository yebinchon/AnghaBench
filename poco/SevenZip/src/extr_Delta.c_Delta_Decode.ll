; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_Delta.c_Delta_Decode.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_Delta.c_Delta_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DELTA_STATE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Delta_Decode(i64* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @DELTA_STATE_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i64*, i64** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @MyMemCpy(i64* %16, i64* %17, i32 %18)
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %56, %4
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %56

35:                                               ; preds = %33
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %16, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %39, %43
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %16, i64 %49
  store i64 %44, i64* %50, align 8
  br label %51

51:                                               ; preds = %35
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %25

56:                                               ; preds = %33
  br label %20

57:                                               ; preds = %20
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i64*, i64** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %16, i64 %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sub i32 %67, %68
  %70 = call i32 @MyMemCpy(i64* %63, i64* %66, i32 %69)
  %71 = load i64*, i64** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @MyMemCpy(i64* %78, i64* %16, i32 %79)
  %81 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MyMemCpy(i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
