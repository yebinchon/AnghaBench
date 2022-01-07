; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_Bpp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_rect(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = call i64 @bs_warp_coords(i32* %7, i32* %8, i32* %9, i32* %10, i32 0, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %170

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 12, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 15
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 12, i32* %12, align 4
  store i32 16777215, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 12
  br i1 %31, label %32, label %141

32:                                               ; preds = %29
  %33 = load i32, i32* @g_Bpp, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i64 @get_bs_ptr(i32 %41, i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %60, %49
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %15, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i8*, i8** %15, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %15, align 8
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %50

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %36

68:                                               ; preds = %36
  br label %140

69:                                               ; preds = %32
  %70 = load i32, i32* @g_Bpp, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %106

72:                                               ; preds = %69
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %102, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i64 @get_bs_ptr(i32 %78, i32 %81)
  %83 = inttoptr i64 %82 to i16*
  store i16* %83, i16** %16, align 8
  %84 = load i16*, i16** %16, align 8
  %85 = icmp ne i16* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %77
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %97, %86
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = trunc i32 %92 to i16
  %94 = load i16*, i16** %16, align 8
  store i16 %93, i16* %94, align 2
  %95 = load i16*, i16** %16, align 8
  %96 = getelementptr inbounds i16, i16* %95, i32 1
  store i16* %96, i16** %16, align 8
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %87

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %73

105:                                              ; preds = %73
  br label %139

106:                                              ; preds = %69
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %135, %106
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i64 @get_bs_ptr(i32 %112, i32 %115)
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %17, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %111
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %130, %120
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %17, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32*, i32** %17, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %17, align 8
  br label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %121

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %111
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %107

138:                                              ; preds = %107
  br label %139

139:                                              ; preds = %138, %105
  br label %140

140:                                              ; preds = %139, %68
  br label %169

141:                                              ; preds = %29
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %165, %141
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %168

146:                                              ; preds = %142
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %161, %146
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %147
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @bs_set_pixel(i32 %154, i32 %157, i32 %158, i32 %159, i32 0)
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %147

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %142

168:                                              ; preds = %142
  br label %169

169:                                              ; preds = %168, %140
  br label %170

170:                                              ; preds = %169, %6
  ret void
}

declare dso_local i64 @bs_warp_coords(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @get_bs_ptr(i32, i32) #1

declare dso_local i32 @bs_set_pixel(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
