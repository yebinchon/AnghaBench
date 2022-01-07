; ModuleID = '/home/carl/AnghaBench/memcached/extr_crc32c.c_crc32c_init_sw.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crc32c.c_crc32c_init_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLY = common dso_local global i32 0, align 4
@crc32c_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @crc32c_init_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32c_init_sw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %120, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %123

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 1
  %15 = load i32, i32* @POLY, align 4
  %16 = xor i32 %14, %15
  br label %20

17:                                               ; preds = %7
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 1
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %16, %12 ], [ %19, %17 ]
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 1
  %28 = load i32, i32* @POLY, align 4
  %29 = xor i32 %27, %28
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %2, align 4
  %32 = ashr i32 %31, 1
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %29, %25 ], [ %32, %30 ]
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = ashr i32 %39, 1
  %41 = load i32, i32* @POLY, align 4
  %42 = xor i32 %40, %41
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %2, align 4
  %45 = ashr i32 %44, 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %42, %38 ], [ %45, %43 ]
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %2, align 4
  %53 = ashr i32 %52, 1
  %54 = load i32, i32* @POLY, align 4
  %55 = xor i32 %53, %54
  br label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %2, align 4
  %58 = ashr i32 %57, 1
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i32 [ %55, %51 ], [ %58, %56 ]
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %2, align 4
  %66 = ashr i32 %65, 1
  %67 = load i32, i32* @POLY, align 4
  %68 = xor i32 %66, %67
  br label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %2, align 4
  %71 = ashr i32 %70, 1
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %68, %64 ], [ %71, %69 ]
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %2, align 4
  %79 = ashr i32 %78, 1
  %80 = load i32, i32* @POLY, align 4
  %81 = xor i32 %79, %80
  br label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %2, align 4
  %84 = ashr i32 %83, 1
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi i32 [ %81, %77 ], [ %84, %82 ]
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %2, align 4
  %92 = ashr i32 %91, 1
  %93 = load i32, i32* @POLY, align 4
  %94 = xor i32 %92, %93
  br label %98

95:                                               ; preds = %85
  %96 = load i32, i32* %2, align 4
  %97 = ashr i32 %96, 1
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi i32 [ %94, %90 ], [ %97, %95 ]
  store i32 %99, i32* %2, align 4
  %100 = load i32, i32* %2, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, i32* %2, align 4
  %105 = ashr i32 %104, 1
  %106 = load i32, i32* @POLY, align 4
  %107 = xor i32 %105, %106
  br label %111

108:                                              ; preds = %98
  %109 = load i32, i32* %2, align 4
  %110 = ashr i32 %109, 1
  br label %111

111:                                              ; preds = %108, %103
  %112 = phi i32 [ %107, %103 ], [ %110, %108 ]
  store i32 %112, i32* %2, align 4
  %113 = load i32, i32* %2, align 4
  %114 = load i32**, i32*** @crc32c_table, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %1, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %1, align 4
  br label %4

123:                                              ; preds = %4
  store i32 0, i32* %1, align 4
  br label %124

124:                                              ; preds = %163, %123
  %125 = load i32, i32* %1, align 4
  %126 = icmp slt i32 %125, 256
  br i1 %126, label %127, label %166

127:                                              ; preds = %124
  %128 = load i32**, i32*** @crc32c_table, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %135

135:                                              ; preds = %159, %127
  %136 = load i32, i32* %3, align 4
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %138, label %162

138:                                              ; preds = %135
  %139 = load i32**, i32*** @crc32c_table, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %2, align 4
  %143 = and i32 %142, 255
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %2, align 4
  %148 = ashr i32 %147, 8
  %149 = xor i32 %146, %148
  store i32 %149, i32* %2, align 4
  %150 = load i32, i32* %2, align 4
  %151 = load i32**, i32*** @crc32c_table, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %150, i32* %158, align 4
  br label %159

159:                                              ; preds = %138
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %135

162:                                              ; preds = %135
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %1, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %1, align 4
  br label %124

166:                                              ; preds = %124
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
