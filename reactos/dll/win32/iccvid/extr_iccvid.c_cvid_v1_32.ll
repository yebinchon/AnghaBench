; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_cvid_v1_32.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_cvid_v1_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, %struct.TYPE_3__*)* @cvid_v1_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvid_v1_32(i8* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 0, %20
  %22 = sdiv i32 %21, 4
  store i32 %22, i32* %12, align 4
  br label %26

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %23, %19
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %96, %26
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %99

30:                                               ; preds = %27
  %31 = load i64*, i64** %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to i64*
  %39 = icmp ult i64* %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %99

41:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %92, %41
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %95

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sdiv i32 %49, 2
  %51 = load i32, i32* %14, align 4
  %52 = sdiv i32 %51, 2
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %48, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sdiv i32 %61, 2
  %63 = load i32, i32* %14, align 4
  %64 = sdiv i32 %63, 2
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %60, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sdiv i32 %73, 2
  %75 = load i32, i32* %14, align 4
  %76 = sdiv i32 %75, 2
  %77 = mul nsw i32 %76, 2
  %78 = add nsw i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %72, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @MAKECOLOUR32(i32 %57, i32 %69, i32 %81)
  %83 = sext i32 %82 to i64
  %84 = load i64*, i64** %11, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %84, i64 %90
  store i64 %83, i64* %91, align 8
  br label %92

92:                                               ; preds = %45
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %42

95:                                               ; preds = %42
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %27

99:                                               ; preds = %40, %27
  ret void
}

declare dso_local i32 @MAKECOLOUR32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
