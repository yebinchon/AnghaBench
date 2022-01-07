; ModuleID = '/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinflate.c_tinf_decode_trees.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinflate.c_tinf_decode_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clcidx = common dso_local global i64* null, align 8
@TINF_DATA_ERROR = common dso_local global i32 0, align 4
@TINF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @tinf_decode_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tinf_decode_trees(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [320 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @tinf_read_bits(i32* %21, i32 5, i32 257)
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @tinf_read_bits(i32* %23, i32 5, i32 1)
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @tinf_read_bits(i32* %25, i32 4, i32 4)
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %34, %3
  %28 = load i32, i32* %13, align 4
  %29 = icmp ult i32 %28, 19
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [320 x i8], [320 x i8]* %8, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %13, align 4
  br label %27

37:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @tinf_read_bits(i32* %43, i32 3, i32 0)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i64*, i64** @clcidx, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [320 x i8], [320 x i8]* %8, i64 0, i64 %51
  store i8 %46, i8* %52, align 1
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %38

56:                                               ; preds = %38
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds [320 x i8], [320 x i8]* %8, i64 0, i64 0
  %59 = call i32 @tinf_build_tree(i32* %57, i8* %58, i32 19)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %60, %61
  store i32 %62, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %122, %90, %56
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %123

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @tinf_decode_symbol(i32* %68, i32* %69)
  store i32 %70, i32* %17, align 4
  store i8 0, i8* %18, align 1
  store i32 3, i32* %20, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %4, align 4
  br label %136

75:                                               ; preds = %67
  %76 = load i32, i32* %17, align 4
  switch i32 %76, label %90 [
    i32 16, label %77
    i32 17, label %88
    i32 18, label %89
  ]

77:                                               ; preds = %75
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %81, i32* %4, align 4
  br label %136

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  %84 = sub i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [320 x i8], [320 x i8]* %8, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  store i8 %87, i8* %18, align 1
  store i32 2, i32* %19, align 4
  br label %97

88:                                               ; preds = %75
  store i32 3, i32* %19, align 4
  br label %97

89:                                               ; preds = %75
  store i32 7, i32* %19, align 4
  store i32 11, i32* %20, align 4
  br label %97

90:                                               ; preds = %75
  %91 = load i32, i32* %17, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i32, i32* %14, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %14, align 4
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds [320 x i8], [320 x i8]* %8, i64 0, i64 %95
  store i8 %92, i8* %96, align 1
  br label %63

97:                                               ; preds = %89, %88, %82
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @tinf_read_bits(i32* %98, i32 %99, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add i32 %102, %103
  %105 = load i32, i32* %12, align 4
  %106 = icmp ugt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %108, i32* %4, align 4
  br label %136

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %119, %109
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i8, i8* %18, align 1
  %115 = load i32, i32* %14, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds [320 x i8], [320 x i8]* %8, i64 0, i64 %117
  store i8 %114, i8* %118, align 1
  br label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %15, align 4
  %121 = add i32 %120, -1
  store i32 %121, i32* %15, align 4
  br label %110

122:                                              ; preds = %110
  br label %63

123:                                              ; preds = %63
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds [320 x i8], [320 x i8]* %8, i64 0, i64 0
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @tinf_build_tree(i32* %124, i8* %125, i32 %126)
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds [320 x i8], [320 x i8]* %8, i64 0, i64 0
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @tinf_build_tree(i32* %128, i8* %132, i32 %133)
  %135 = load i32, i32* @TINF_OK, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %123, %107, %80, %73
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @tinf_read_bits(i32*, i32, i32) #1

declare dso_local i32 @tinf_build_tree(i32*, i8*, i32) #1

declare dso_local i32 @tinf_decode_symbol(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
