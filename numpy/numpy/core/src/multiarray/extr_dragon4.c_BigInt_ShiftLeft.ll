; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_ShiftLeft.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_ShiftLeft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@c_BigInt_MaxBlocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @BigInt_ShiftLeft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BigInt_ShiftLeft(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sdiv i32 %19, 32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = srem i32 %21, 32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @c_BigInt_MaxBlocks, align 4
  %33 = icmp slt i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @DEBUG_ASSERT(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @DEBUG_ASSERT(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %10, align 8
  br label %55

55:                                               ; preds = %63, %42
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = icmp uge i32* %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %59
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 -1
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 -1
  store i32* %67, i32** %10, align 8
  br label %55

68:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %69

83:                                               ; preds = %69
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %204

89:                                               ; preds = %2
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 32, %95
  store i32 %96, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %15, align 4
  %106 = ashr i32 %104, %105
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @c_BigInt_MaxBlocks, align 4
  %109 = icmp slt i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @DEBUG_ASSERT(i32 %110)
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %119, %89
  %117 = load i32, i32* %13, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %18, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %6, align 4
  %131 = shl i32 %129, %130
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %14, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %15, align 4
  %145 = ashr i32 %143, %144
  store i32 %145, i32* %18, align 4
  br label %116

146:                                              ; preds = %116
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  %150 = icmp eq i32 %147, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @DEBUG_ASSERT(i32 %151)
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %18, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %6, align 4
  %164 = shl i32 %162, %163
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %164, i32* %171, align 4
  store i32 0, i32* %12, align 4
  br label %172

172:                                              ; preds = %183, %146
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %172

186:                                              ; preds = %172
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %189, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %186
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %198, %186
  br label %204

204:                                              ; preds = %203, %83
  ret void
}

declare dso_local i32 @DEBUG_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
