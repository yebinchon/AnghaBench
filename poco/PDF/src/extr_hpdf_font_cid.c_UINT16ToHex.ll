; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_UINT16ToHex.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_UINT16ToHex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*, i32)* @UINT16ToHex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @UINT16ToHex(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp slt i64 %17, 7
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %5, align 8
  br label %126

21:                                               ; preds = %4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %23 = call i32 @HPDF_MemCpy(i32* %22, i32* %7, i32 2)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %26, %28
  store i32 %29, i32* %11, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %31 = call i32 @HPDF_MemCpy(i32* %30, i32* %11, i32 2)
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  store i8 60, i8* %32, align 1
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %79

36:                                               ; preds = %21
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 4
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %12, align 1
  %41 = load i8, i8* %12, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 9
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i8, i8* %12, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, 48
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %12, align 1
  br label %54

49:                                               ; preds = %36
  %50 = load i8, i8* %12, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, 55
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %12, align 1
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i8, i8* %12, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  store i8 %55, i8* %56, align 1
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 15
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %12, align 1
  %62 = load i8, i8* %12, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 %63, 9
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load i8, i8* %12, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, 48
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %12, align 1
  br label %75

70:                                               ; preds = %54
  %71 = load i8, i8* %12, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, 55
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %12, align 1
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i8, i8* %12, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  store i8 %76, i8* %77, align 1
  br label %79

79:                                               ; preds = %75, %21
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 4
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %12, align 1
  %84 = load i8, i8* %12, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sle i32 %85, 9
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i8, i8* %12, align 1
  %89 = sext i8 %88 to i32
  %90 = add nsw i32 %89, 48
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %12, align 1
  br label %97

92:                                               ; preds = %79
  %93 = load i8, i8* %12, align 1
  %94 = sext i8 %93 to i32
  %95 = add nsw i32 %94, 55
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %12, align 1
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i8, i8* %12, align 1
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i8 %98, i8* %99, align 1
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 15
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %12, align 1
  %105 = load i8, i8* %12, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sle i32 %106, 9
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load i8, i8* %12, align 1
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %110, 48
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %12, align 1
  br label %118

113:                                              ; preds = %97
  %114 = load i8, i8* %12, align 1
  %115 = sext i8 %114 to i32
  %116 = add nsw i32 %115, 55
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %12, align 1
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i8, i8* %12, align 1
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %6, align 8
  store i8 %119, i8* %120, align 1
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  store i8 62, i8* %122, align 1
  %124 = load i8*, i8** %6, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %6, align 8
  store i8* %125, i8** %5, align 8
  br label %126

126:                                              ; preds = %118, %19
  %127 = load i8*, i8** %5, align 8
  ret i8* %127
}

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
