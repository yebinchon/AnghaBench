; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_cvtSSima16K.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_cvtSSima16K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i32*, i8*, i32*)* @cvtSSima16K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvtSSima16K(%struct.TYPE_6__* %0, i8* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = bitcast %struct.TYPE_5__* %22 to %struct.TYPE_7__*
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %27, %32
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %16, align 4
  %37 = mul nsw i32 %36, 2
  %38 = mul nsw i32 %37, 2
  %39 = sdiv i32 %35, %38
  %40 = call i32 @min(i32 %33, i32 %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %41, %46
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %16, align 4
  %51 = mul nsw i32 %50, 2
  %52 = mul nsw i32 %51, 2
  %53 = mul nsw i32 %49, %52
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %185, %5
  %58 = load i32, i32* %18, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %188

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  store i8* %61, i8** %19, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @R16(i8* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = call i32 @clamp_step_index(i32* %14)
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @W16(i8* %71, i32 %72)
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @R16(i8* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = call i32 @clamp_step_index(i32* %15)
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @W16(i8* %85, i32 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %9, align 8
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %173, %60
  %92 = load i32, i32* %17, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %176

94:                                               ; preds = %91
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %129, %94
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %132

98:                                               ; preds = %95
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @process_nibble(i8 zeroext %100, i32* %14, i32* %12)
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 2, %103
  %105 = add nsw i32 %104, 0
  %106 = mul nsw i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @W16(i8* %109, i32 %110)
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %7, align 8
  %114 = load i8, i8* %112, align 1
  %115 = zext i8 %114 to i32
  %116 = ashr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = call i32 @process_nibble(i8 zeroext %117, i32* %14, i32* %12)
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 2, %120
  %122 = add nsw i32 %121, 1
  %123 = mul nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %119, i64 %124
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @W16(i8* %126, i32 %127)
  br label %129

129:                                              ; preds = %98
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %95

132:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %167, %132
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %170

136:                                              ; preds = %133
  %137 = load i8*, i8** %7, align 8
  %138 = load i8, i8* %137, align 1
  %139 = call i32 @process_nibble(i8 zeroext %138, i32* %15, i32* %13)
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 2, %141
  %143 = add nsw i32 %142, 0
  %144 = mul nsw i32 %143, 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %140, i64 %145
  %147 = getelementptr inbounds i8, i8* %146, i64 2
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @W16(i8* %147, i32 %148)
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %7, align 8
  %152 = load i8, i8* %150, align 1
  %153 = zext i8 %152 to i32
  %154 = ashr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = call i32 @process_nibble(i8 zeroext %155, i32* %15, i32* %13)
  %157 = load i8*, i8** %9, align 8
  %158 = load i32, i32* %11, align 4
  %159 = mul nsw i32 2, %158
  %160 = add nsw i32 %159, 1
  %161 = mul nsw i32 %160, 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %157, i64 %162
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @W16(i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %136
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %133

170:                                              ; preds = %133
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 32
  store i8* %172, i8** %9, align 8
  br label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %17, align 4
  %175 = sub nsw i32 %174, 8
  store i32 %175, i32* %17, align 4
  br label %91

176:                                              ; preds = %91
  %177 = load i8*, i8** %19, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %177, i64 %183
  store i8* %184, i8** %7, align 8
  br label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %18, align 4
  br label %57

188:                                              ; preds = %57
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @R16(i8*) #1

declare dso_local i32 @clamp_step_index(i32*) #1

declare dso_local i32 @W16(i8*, i32) #1

declare dso_local i32 @process_nibble(i8 zeroext, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
