; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_mule2wchar_with_len.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_mule2wchar_with_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @pg_mule2wchar_with_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_mule2wchar_with_len(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %145, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %150

18:                                               ; preds = %16
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @IS_LC1(i8 zeroext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 16
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  %35 = load i8, i8* %33, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %6, align 4
  br label %145

42:                                               ; preds = %23, %18
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @IS_LCPRV1(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 3
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  %55 = load i8, i8* %53, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 16
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 3
  store i32 %67, i32* %6, align 4
  br label %144

68:                                               ; preds = %47, %42
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @IS_LC2(i8 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp sge i32 %74, 3
  br i1 %75, label %76, label %100

76:                                               ; preds = %73
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  %79 = load i8, i8* %77, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 16
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  %85 = load i8, i8* %83, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %4, align 8
  %93 = load i8, i8* %91, align 1
  %94 = zext i8 %93 to i32
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 3
  store i32 %99, i32* %6, align 4
  br label %143

100:                                              ; preds = %73, %68
  %101 = load i8*, i8** %4, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @IS_LCPRV2(i8 zeroext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  %107 = icmp sge i32 %106, 4
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %4, align 8
  %113 = load i8, i8* %111, align 1
  %114 = zext i8 %113 to i32
  %115 = shl i32 %114, 16
  %116 = load i32*, i32** %5, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %4, align 8
  %119 = load i8, i8* %117, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 8
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %4, align 8
  %127 = load i8, i8* %125, align 1
  %128 = zext i8 %127 to i32
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %6, align 4
  %133 = sub nsw i32 %132, 4
  store i32 %133, i32* %6, align 4
  br label %142

134:                                              ; preds = %105, %100
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %4, align 8
  %137 = load i8, i8* %135, align 1
  %138 = zext i8 %137 to i32
  %139 = load i32*, i32** %5, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %134, %108
  br label %143

143:                                              ; preds = %142, %76
  br label %144

144:                                              ; preds = %143, %50
  br label %145

145:                                              ; preds = %144, %26
  %146 = load i32*, i32** %5, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %8

150:                                              ; preds = %16
  %151 = load i32*, i32** %5, align 8
  store i32 0, i32* %151, align 4
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i64 @IS_LC1(i8 zeroext) #1

declare dso_local i64 @IS_LCPRV1(i8 zeroext) #1

declare dso_local i64 @IS_LC2(i8 zeroext) #1

declare dso_local i64 @IS_LCPRV2(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
