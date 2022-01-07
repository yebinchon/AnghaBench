; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halve1Dimage_ubyte.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halve1Dimage_ubyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32)* @halve1Dimage_ubyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halve1Dimage_ubyte(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %18, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %19, align 8
  %32 = load i32*, i32** %13, align 8
  store i32* %32, i32** %20, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %8
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 1
  br label %38

38:                                               ; preds = %35, %8
  %39 = phi i1 [ true, %8 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %103

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  store i32 1, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %54

54:                                               ; preds = %90, %49
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %54
  store i32 0, i32* %22, align 4
  br label %59

59:                                               ; preds = %82, %58
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load i8*, i8** %19, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %19, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %66, %72
  %74 = sdiv i32 %73, 2
  %75 = load i32*, i32** %20, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i8*, i8** %19, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %19, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %20, align 8
  br label %82

82:                                               ; preds = %63
  %83 = load i32, i32* %22, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %22, align 4
  br label %59

85:                                               ; preds = %59
  %86 = load i32, i32* %16, align 4
  %87 = load i8*, i8** %19, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %19, align 8
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %21, align 4
  br label %54

93:                                               ; preds = %54
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %16, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sub nsw i32 %94, %97
  store i32 %98, i32* %23, align 4
  %99 = load i32, i32* %23, align 4
  %100 = load i8*, i8** %19, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %19, align 8
  br label %161

103:                                              ; preds = %38
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %160

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %16, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sub nsw i32 %107, %110
  store i32 %111, i32* %24, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 1
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  store i32 1, i32* %17, align 4
  store i32 0, i32* %21, align 4
  br label %116

116:                                              ; preds = %156, %106
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %159

120:                                              ; preds = %116
  store i32 0, i32* %25, align 4
  br label %121

121:                                              ; preds = %144, %120
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %121
  %126 = load i8*, i8** %19, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %19, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %128, %134
  %136 = sdiv i32 %135, 2
  %137 = load i32*, i32** %20, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i8*, i8** %19, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %19, align 8
  %142 = load i32*, i32** %20, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %20, align 8
  br label %144

144:                                              ; preds = %125
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %25, align 4
  br label %121

147:                                              ; preds = %121
  %148 = load i32, i32* %24, align 4
  %149 = load i8*, i8** %19, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %19, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load i8*, i8** %19, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %19, align 8
  br label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %21, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %21, align 4
  br label %116

159:                                              ; preds = %116
  br label %160

160:                                              ; preds = %159, %103
  br label %161

161:                                              ; preds = %160, %93
  %162 = load i8*, i8** %19, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %11, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  %170 = icmp eq i8* %162, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load i32*, i32** %20, align 8
  %174 = bitcast i32* %173 to i8*
  %175 = load i32*, i32** %13, align 8
  %176 = bitcast i32* %175 to i8*
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %14, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load i32, i32* %17, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %18, align 4
  %183 = mul nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %176, i64 %184
  %186 = icmp eq i8* %174, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
