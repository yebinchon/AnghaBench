; ModuleID = '/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_tool.c_inner_int_inter.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_tool.c_inner_int_inter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @inner_int_inter(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @ARRISEMPTY(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @ARRISEMPTY(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %2
  %23 = call i32* @new_intArrayType(i32 0)
  store i32* %23, i32** %3, align 8
  br label %124

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @ARRNELEMS(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ARRNELEMS(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @ARRPTR(i32* %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @ARRPTR(i32* %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @Min(i32 %33, i32 %34)
  %36 = call i32* @new_intArrayType(i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @ARRPTR(i32* %37)
  store i32* %38, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %112, %24
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %113

49:                                               ; preds = %47
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %112

64:                                               ; preds = %49
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %69, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %64
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %76
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %85, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %79, %76
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %92, %79
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %111

108:                                              ; preds = %64
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %108, %103
  br label %112

112:                                              ; preds = %111, %61
  br label %39

113:                                              ; preds = %47
  %114 = load i32, i32* %14, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @pfree(i32* %117)
  %119 = call i32* @new_intArrayType(i32 0)
  store i32* %119, i32** %3, align 8
  br label %124

120:                                              ; preds = %113
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call i32* @resize_intArrayType(i32* %121, i32 %122)
  store i32* %123, i32** %3, align 8
  br label %124

124:                                              ; preds = %120, %116, %22
  %125 = load i32*, i32** %3, align 8
  ret i32* %125
}

declare dso_local i64 @ARRISEMPTY(i32*) #1

declare dso_local i32* @new_intArrayType(i32) #1

declare dso_local i32 @ARRNELEMS(i32*) #1

declare dso_local i32* @ARRPTR(i32*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32* @resize_intArrayType(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
