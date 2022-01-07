; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_line.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_line(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %17, align 4
  store i32 -1, i32* %19, align 4
  br label %35

31:                                               ; preds = %8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %17, align 4
  store i32 1, i32* %19, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %18, align 4
  store i32 -1, i32* %20, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %18, align 4
  store i32 1, i32* %20, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %103

51:                                               ; preds = %47
  %52 = load i32, i32* %18, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %21, align 4
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %17, align 4
  %56 = shl i32 %55, 1
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* %17, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %23, align 4
  br label %61

61:                                               ; preds = %99, %51
  %62 = load i32, i32* %17, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @bs_set_pixel(i32 %73, i32 %74, i32 %75, i32 %76, i32 1)
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i32, i32* %23, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %23, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %23, align 4
  br label %98

91:                                               ; preds = %78
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %23, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %23, align 4
  br label %98

98:                                               ; preds = %91, %81
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %17, align 4
  br label %61

102:                                              ; preds = %61
  br label %155

103:                                              ; preds = %47
  %104 = load i32, i32* %17, align 4
  %105 = shl i32 %104, 1
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %18, align 4
  %108 = shl i32 %107, 1
  %109 = sub nsw i32 %106, %108
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %18, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %23, align 4
  br label %113

113:                                              ; preds = %151, %103
  %114 = load i32, i32* %18, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120, %116
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @bs_set_pixel(i32 %125, i32 %126, i32 %127, i32 %128, i32 1)
  br label %130

130:                                              ; preds = %124, %120
  %131 = load i32, i32* %23, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %23, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %23, align 4
  br label %150

143:                                              ; preds = %130
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %21, align 4
  %148 = load i32, i32* %23, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %23, align 4
  br label %150

150:                                              ; preds = %143, %133
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %18, align 4
  br label %113

154:                                              ; preds = %113
  br label %155

155:                                              ; preds = %154, %102
  ret void
}

declare dso_local i32 @bs_set_pixel(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
