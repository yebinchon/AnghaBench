; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_deflate.c_copy.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_deflate.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@dynamicTables = common dso_local global %struct.TYPE_6__* null, align 8
@oBuf = common dso_local global %struct.TYPE_5__* null, align 8
@lenCodes_LEN = common dso_local global i32 0, align 4
@distCodes_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = call i32 @DBG_COUNT(i32 7)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dynamicTables, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dynamicTables, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @oBuf, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %183, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %184

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 260
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %44

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = icmp sle i32 %35, 258
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 3
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  br label %44

44:                                               ; preds = %42, %33
  %45 = phi i32 [ 258, %33 ], [ %43, %42 ]
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %4, align 4
  store i32 -1, i32* %9, align 4
  %49 = load i32, i32* @lenCodes_LEN, align 4
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %44, %88
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %51, %52
  %54 = icmp sge i32 %53, 2
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %61, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %50
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %10, align 4
  br label %88

71:                                               ; preds = %50
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %72, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %9, align 4
  br label %87

82:                                               ; preds = %71
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %6, align 8
  br label %89

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %69
  br label %50

89:                                               ; preds = %82
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp sle i32 %92, 279
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 256
  %99 = mul nsw i32 %98, 2
  %100 = call i32 @outBitsRev(i32 %99, i32 7)
  br label %107

101:                                              ; preds = %89
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 -88, %104
  %106 = call i32 @outBitsRev(i32 %105, i32 8)
  br label %107

107:                                              ; preds = %101, %94
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %113, %116
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @outBits(i32 %117, i64 %120)
  br label %122

122:                                              ; preds = %112, %107
  store i32 -1, i32* %9, align 4
  %123 = load i32, i32* @distCodes_LEN, align 4
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %122, %162
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %125, %126
  %128 = icmp sge i32 %127, 2
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %131, %132
  %134 = sdiv i32 %133, 2
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %3, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %135, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %124
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %10, align 4
  br label %162

145:                                              ; preds = %124
  %146 = load i32, i32* %3, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %146, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %9, align 4
  br label %161

156:                                              ; preds = %145
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %159
  store %struct.TYPE_4__* %160, %struct.TYPE_4__** %8, align 8
  br label %163

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161, %143
  br label %124

163:                                              ; preds = %156
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %166, 8
  %168 = call i32 @outBitsRev(i32 %167, i32 5)
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %163
  %174 = load i32, i32* %3, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %174, %177
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @outBits(i32 %178, i64 %181)
  br label %183

183:                                              ; preds = %173, %163
  br label %27

184:                                              ; preds = %27
  ret void
}

declare dso_local i32 @DBG_COUNT(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @outBitsRev(i32, i32) #1

declare dso_local i32 @outBits(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
