; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_cvtSS16imaK.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_cvtSS16imaK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i32*, i8*, i32*)* @cvtSS16imaK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvtSS16imaK(%struct.TYPE_7__* %0, i8* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = bitcast %struct.TYPE_6__* %24 to %struct.TYPE_8__*
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %17, align 4
  %31 = mul nsw i32 %30, 2
  %32 = mul nsw i32 %31, 2
  %33 = sdiv i32 %29, %32
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %35, %40
  %42 = call i32 @min(i32 %33, i32 %41)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %17, align 4
  %45 = mul nsw i32 %44, 2
  %46 = mul nsw i32 %45, 2
  %47 = mul nsw i32 %43, %46
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %49, %54
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_9__*
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_9__*
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %189, %5
  %72 = load i32, i32* %20, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %192

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  store i8* %75, i8** %21, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @R16(i8* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @W16(i8* %80, i32 %81)
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @W16(i8* %85, i32 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @R16(i8* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %7, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @W16(i8* %94, i32 %95)
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @W16(i8* %99, i32 %100)
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  store i8* %103, i8** %9, align 8
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %19, align 4
  br label %105

105:                                              ; preds = %177, %74
  %106 = load i32, i32* %19, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %180

108:                                              ; preds = %105
  store i32 0, i32* %18, align 4
  br label %109

109:                                              ; preds = %138, %108
  %110 = load i32, i32* %18, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %141

112:                                              ; preds = %109
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %18, align 4
  %115 = mul nsw i32 4, %114
  %116 = add nsw i32 %115, 0
  %117 = mul nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %113, i64 %118
  %120 = call i32 @R16(i8* %119)
  %121 = call i32 @generate_nibble(i32 %120, i32* %11, i32* %13)
  store i32 %121, i32* %15, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %18, align 4
  %124 = mul nsw i32 4, %123
  %125 = add nsw i32 %124, 2
  %126 = mul nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %122, i64 %127
  %129 = call i32 @R16(i8* %128)
  %130 = call i32 @generate_nibble(i32 %129, i32* %11, i32* %13)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = shl i32 %131, 4
  %133 = load i32, i32* %15, align 4
  %134 = or i32 %132, %133
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %9, align 8
  store i8 %135, i8* %136, align 1
  br label %138

138:                                              ; preds = %112
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %18, align 4
  br label %109

141:                                              ; preds = %109
  store i32 0, i32* %18, align 4
  br label %142

142:                                              ; preds = %171, %141
  %143 = load i32, i32* %18, align 4
  %144 = icmp slt i32 %143, 4
  br i1 %144, label %145, label %174

145:                                              ; preds = %142
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* %18, align 4
  %148 = mul nsw i32 4, %147
  %149 = add nsw i32 %148, 1
  %150 = mul nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  %153 = call i32 @R16(i8* %152)
  %154 = call i32 @generate_nibble(i32 %153, i32* %12, i32* %14)
  store i32 %154, i32* %15, align 4
  %155 = load i8*, i8** %7, align 8
  %156 = load i32, i32* %18, align 4
  %157 = mul nsw i32 4, %156
  %158 = add nsw i32 %157, 3
  %159 = mul nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %155, i64 %160
  %162 = call i32 @R16(i8* %161)
  %163 = call i32 @generate_nibble(i32 %162, i32* %12, i32* %14)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = shl i32 %164, 4
  %166 = load i32, i32* %15, align 4
  %167 = or i32 %165, %166
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %9, align 8
  store i8 %168, i8* %169, align 1
  br label %171

171:                                              ; preds = %145
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %18, align 4
  br label %142

174:                                              ; preds = %142
  %175 = load i8*, i8** %7, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 32
  store i8* %176, i8** %7, align 8
  br label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %19, align 4
  %179 = sub nsw i32 %178, 8
  store i32 %179, i32* %19, align 4
  br label %105

180:                                              ; preds = %105
  %181 = load i8*, i8** %21, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %181, i64 %187
  store i8* %188, i8** %9, align 8
  br label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %20, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %20, align 4
  br label %71

192:                                              ; preds = %71
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to %struct.TYPE_9__*
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  store i32 %193, i32* %198, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to %struct.TYPE_9__*
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  store i32 %199, i32* %204, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @R16(i8*) #1

declare dso_local i32 @W16(i8*, i32) #1

declare dso_local i32 @generate_nibble(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
