; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bitmap.c_process_plane.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bitmap.c_process_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32)* @process_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_plane(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load i32*, i32** %6, align 8
  store i32* %23, i32** %21, align 8
  %24 = load i32*, i32** %9, align 8
  store i32* %24, i32** %22, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %187, %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %191

29:                                               ; preds = %25
  %30 = load i32*, i32** %22, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %31, %32
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  %41 = mul nsw i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i32, i32* %36, i64 %43
  store i32* %44, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %45 = load i32*, i32** %9, align 8
  store i32* %45, i32** %20, align 8
  store i32 0, i32* %11, align 4
  %46 = load i32*, i32** %19, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %102

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %100, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @CVAL(i32* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = and i32 %56, 15
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %13, align 4
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 15
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 %61, 4
  %63 = load i32, i32* %14, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp sle i32 %65, 47
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load i32, i32* %18, align 4
  %69 = icmp sge i32 %68, 16
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %70, %67, %53
  br label %73

73:                                               ; preds = %76, %72
  %74 = load i32, i32* %14, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @CVAL(i32* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32* %82, i32** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %14, align 4
  br label %73

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %91, %87
  %89 = load i32, i32* %15, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32* %95, i32** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %15, align 4
  br label %88

100:                                              ; preds = %88
  br label %49

101:                                              ; preds = %49
  br label %187

102:                                              ; preds = %29
  br label %103

103:                                              ; preds = %185, %102
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %186

107:                                              ; preds = %103
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @CVAL(i32* %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = and i32 %110, 15
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %13, align 4
  %113 = ashr i32 %112, 4
  %114 = and i32 %113, 15
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = shl i32 %115, 4
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp sle i32 %119, 47
  br i1 %120, label %121, label %126

121:                                              ; preds = %107
  %122 = load i32, i32* %18, align 4
  %123 = icmp sge i32 %122, 16
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %18, align 4
  store i32 %125, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %124, %121, %107
  br label %127

127:                                              ; preds = %147, %126
  %128 = load i32, i32* %14, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %164

130:                                              ; preds = %127
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @CVAL(i32* %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load i32, i32* %17, align 4
  %138 = ashr i32 %137, 1
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %16, align 4
  br label %147

143:                                              ; preds = %130
  %144 = load i32, i32* %17, align 4
  %145 = ashr i32 %144, 1
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %143, %136
  %148 = load i32*, i32** %19, align 8
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 %149, 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %153, %154
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32*, i32** %9, align 8
  store i32 %156, i32* %157, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 4
  store i32* %159, i32** %9, align 8
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %14, align 4
  br label %127

164:                                              ; preds = %127
  br label %165

165:                                              ; preds = %168, %164
  %166 = load i32, i32* %15, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %165
  %169 = load i32*, i32** %19, align 8
  %170 = load i32, i32* %11, align 4
  %171 = mul nsw i32 %170, 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  store i32* %180, i32** %9, align 8
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %15, align 4
  br label %165

185:                                              ; preds = %165
  br label %103

186:                                              ; preds = %103
  br label %187

187:                                              ; preds = %186, %101
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  %190 = load i32*, i32** %20, align 8
  store i32* %190, i32** %19, align 8
  br label %25

191:                                              ; preds = %25
  %192 = load i32*, i32** %6, align 8
  %193 = load i32*, i32** %21, align 8
  %194 = ptrtoint i32* %192 to i64
  %195 = ptrtoint i32* %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 4
  %198 = trunc i64 %197 to i32
  ret i32 %198
}

declare dso_local i32 @CVAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
