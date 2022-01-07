; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_set_pixel_on.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_set_pixel_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_set_pixel_on(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %63

17:                                               ; preds = %6
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 7
  %20 = sdiv i32 %19, 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, 8
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %27, 8
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %17
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i32, i32* %14, align 4
  %39 = ashr i32 128, %38
  %40 = or i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 %41, i8* %45, align 1
  br label %62

46:                                               ; preds = %17
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* %14, align 4
  %54 = ashr i32 128, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 %57, i8* %61, align 1
  br label %62

62:                                               ; preds = %46, %31
  br label %115

63:                                               ; preds = %6
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 8
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %69, i64 %75
  store i8 %68, i8* %76, align 1
  br label %114

77:                                               ; preds = %63
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 15
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 16
  br i1 %82, label %83, label %95

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %12, align 4
  %85 = trunc i32 %84 to i16
  %86 = load i8*, i8** %7, align 8
  %87 = bitcast i8* %86 to i16*
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %87, i64 %93
  store i16 %85, i16* %94, align 2
  br label %113

95:                                               ; preds = %80
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 24
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %112

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %12, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  store i32 %102, i32* %111, align 4
  br label %112

112:                                              ; preds = %101, %98
  br label %113

113:                                              ; preds = %112, %83
  br label %114

114:                                              ; preds = %113, %66
  br label %115

115:                                              ; preds = %114, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
