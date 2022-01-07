; ModuleID = '/home/carl/AnghaBench/openpilot/panda/crypto/extr_rsa.c_modpow.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/crypto/extr_rsa.c_modpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }

@RSANUMWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @modpow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modpow(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* @RSANUMWORDS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* @RSANUMWORDS, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %20 = load i32, i32* @RSANUMWORDS, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %89, %2
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %34, %35
  %37 = mul nsw i32 %36, 4
  %38 = add nsw i32 %37, 0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %30, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 24
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %47, %48
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %43, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %42, %55
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %61, %62
  %64 = mul nsw i32 %63, 4
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %57, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = or i32 %56, %69
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  %78 = mul nsw i32 %77, 4
  %79 = add nsw i32 %78, 3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %71, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 0
  %84 = or i32 %70, %83
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %16, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %29
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %23

92:                                               ; preds = %23
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 65537
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  store i32* %22, i32** %9, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @montMul(%struct.TYPE_6__* %98, i32* %19, i32* %16, i32* %101)
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %111, %97
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 16
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = call i32 @montMul(%struct.TYPE_6__* %107, i32* %22, i32* %19, i32* %19)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = call i32 @montMul(%struct.TYPE_6__* %109, i32* %19, i32* %22, i32* %22)
  br label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %10, align 4
  br label %103

114:                                              ; preds = %103
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @montMul(%struct.TYPE_6__* %115, i32* %116, i32* %19, i32* %16)
  br label %135

118:                                              ; preds = %92
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  store i32* %19, i32** %9, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @montMul(%struct.TYPE_6__* %124, i32* %19, i32* %16, i32* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = call i32 @montMul(%struct.TYPE_6__* %129, i32* %22, i32* %19, i32* %19)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @montMul(%struct.TYPE_6__* %131, i32* %132, i32* %22, i32* %16)
  br label %134

134:                                              ; preds = %123, %118
  br label %135

135:                                              ; preds = %134, %114
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = call i64 @geM(%struct.TYPE_6__* %136, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @subM(%struct.TYPE_6__* %141, i32* %142)
  br label %144

144:                                              ; preds = %140, %135
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %174, %144
  %150 = load i32, i32* %10, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %149
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = ashr i32 %158, 24
  %160 = load i32*, i32** %4, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %4, align 8
  store i32 %159, i32* %160, align 4
  %162 = load i32, i32* %12, align 4
  %163 = ashr i32 %162, 16
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %4, align 8
  store i32 %163, i32* %164, align 4
  %166 = load i32, i32* %12, align 4
  %167 = ashr i32 %166, 8
  %168 = load i32*, i32** %4, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %4, align 8
  store i32 %167, i32* %168, align 4
  %170 = load i32, i32* %12, align 4
  %171 = ashr i32 %170, 0
  %172 = load i32*, i32** %4, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %4, align 8
  store i32 %171, i32* %172, align 4
  br label %174

174:                                              ; preds = %152
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %10, align 4
  br label %149

177:                                              ; preds = %149
  %178 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @montMul(%struct.TYPE_6__*, i32*, i32*, i32*) #2

declare dso_local i64 @geM(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @subM(%struct.TYPE_6__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
