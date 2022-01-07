; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_copy_box.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_copy_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_width1 = common dso_local global i32 0, align 4
@g_height1 = common dso_local global i32 0, align 4
@g_Bpp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_copy_box(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %6
  br label %154

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @g_width1, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @g_height1, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35, %31, %26, %21
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @g_Bpp, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i32 @memset(i8* %40, i32 0, i32 %45)
  br label %154

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @g_width1, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @g_height1, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %125

65:                                               ; preds = %59, %53, %50, %47
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* @g_Bpp, align 4
  %71 = mul nsw i32 %69, %70
  %72 = call i32 @memset(i8* %66, i32 0, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %65
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 0, %79
  %81 = load i32, i32* @g_Bpp, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i8*, i8** %7, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %75, %65
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @g_width1, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @g_width1, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %92, %86
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %121, %96
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  %106 = call i8* @get_bs_ptr(i32 %102, i32 %105)
  store i8* %106, i8** %13, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @g_Bpp, align 4
  %114 = mul nsw i32 %112, %113
  %115 = call i32 @bs_copy_mem(i8* %110, i8* %111, i32 %114)
  br label %116

116:                                              ; preds = %109, %101
  %117 = load i32, i32* %12, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %7, align 8
  br label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %97

124:                                              ; preds = %97
  br label %154

125:                                              ; preds = %59
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %150, %125
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i8* @get_bs_ptr(i32 %131, i32 %134)
  store i8* %135, i8** %13, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load i8*, i8** %7, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @g_Bpp, align 4
  %143 = mul nsw i32 %141, %142
  %144 = call i32 @bs_copy_mem(i8* %139, i8* %140, i32 %143)
  br label %145

145:                                              ; preds = %138, %130
  %146 = load i32, i32* %12, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %7, align 8
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %14, align 4
  br label %126

153:                                              ; preds = %126
  br label %154

154:                                              ; preds = %20, %39, %153, %124
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @get_bs_ptr(i32, i32) #1

declare dso_local i32 @bs_copy_mem(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
