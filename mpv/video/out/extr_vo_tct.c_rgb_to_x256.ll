; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_tct.c_rgb_to_x256.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_tct.c_rgb_to_x256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rgb_to_x256.i2cv = internal constant [6 x i32] [i32 0, i32 95, i32 135, i32 175, i32 215, i32 255], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @rgb_to_x256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgb_to_x256(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %18, 48
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %31

21:                                               ; preds = %3
  %22 = load i64, i64* %4, align 8
  %23 = icmp slt i64 %22, 115
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = sub nsw i64 %26, 35
  %28 = sdiv i64 %27, 40
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i64 [ 1, %24 ], [ %28, %25 ]
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i64 [ 0, %20 ], [ %30, %29 ]
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i64, i64* %5, align 8
  %35 = icmp slt i64 %34, 48
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %47

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  %39 = icmp slt i64 %38, 115
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = sub nsw i64 %42, 35
  %44 = sdiv i64 %43, 40
  br label %45

45:                                               ; preds = %41, %40
  %46 = phi i64 [ 1, %40 ], [ %44, %41 ]
  br label %47

47:                                               ; preds = %45, %36
  %48 = phi i64 [ 0, %36 ], [ %46, %45 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load i64, i64* %6, align 8
  %51 = icmp slt i64 %50, 48
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %63

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = icmp slt i64 %54, 115
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %61

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = sub nsw i64 %58, 35
  %60 = sdiv i64 %59, 40
  br label %61

61:                                               ; preds = %57, %56
  %62 = phi i64 [ 1, %56 ], [ %60, %57 ]
  br label %63

63:                                               ; preds = %61, %52
  %64 = phi i64 [ 0, %52 ], [ %62, %61 ]
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %68, %69
  %71 = sdiv i64 %70, 3
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 238
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %80

76:                                               ; preds = %63
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 3
  %79 = sdiv i32 %78, 10
  br label %80

80:                                               ; preds = %76, %75
  %81 = phi i32 [ 23, %75 ], [ %79, %76 ]
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* @rgb_to_x256.i2cv, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* @rgb_to_x256.i2cv, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* @rgb_to_x256.i2cv, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 10, %94
  %96 = add nsw i32 8, %95
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %4, align 8
  %100 = sub nsw i64 %98, %99
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %4, align 8
  %104 = sub nsw i64 %102, %103
  %105 = mul nsw i64 %100, %104
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %5, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %5, align 8
  %113 = sub nsw i64 %111, %112
  %114 = mul nsw i64 %109, %113
  %115 = add nsw i64 %105, %114
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %6, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %6, align 8
  %123 = sub nsw i64 %121, %122
  %124 = mul nsw i64 %119, %123
  %125 = add nsw i64 %115, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %4, align 8
  %130 = sub nsw i64 %128, %129
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %4, align 8
  %134 = sub nsw i64 %132, %133
  %135 = mul nsw i64 %130, %134
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %5, align 8
  %139 = sub nsw i64 %137, %138
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %5, align 8
  %143 = sub nsw i64 %141, %142
  %144 = mul nsw i64 %139, %143
  %145 = add nsw i64 %135, %144
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %6, align 8
  %149 = sub nsw i64 %147, %148
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %6, align 8
  %153 = sub nsw i64 %151, %152
  %154 = mul nsw i64 %149, %153
  %155 = add nsw i64 %145, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %80
  %161 = load i32, i32* %7, align 4
  %162 = mul nsw i32 36, %161
  %163 = load i32, i32* %8, align 4
  %164 = mul nsw i32 6, %163
  %165 = add nsw i32 %162, %164
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %165, %166
  %168 = add nsw i32 16, %167
  br label %172

169:                                              ; preds = %80
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 232, %170
  br label %172

172:                                              ; preds = %169, %160
  %173 = phi i32 [ %168, %160 ], [ %171, %169 ]
  ret i32 %173
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
