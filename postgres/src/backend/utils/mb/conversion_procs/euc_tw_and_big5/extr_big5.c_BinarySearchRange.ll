; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_tw_and_big5/extr_big5.c_BinarySearchRange.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_tw_and_big5/extr_big5.c_BinarySearchRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.TYPE_3__*, i32, i16)* @BinarySearchRange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @BinarySearchRange(%struct.TYPE_3__* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 1
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %212, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %217

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 4
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %193

29:                                               ; preds = %18
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 4
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %193

41:                                               ; preds = %29
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 0, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i16 0, i16* %4, align 2
  br label %218

50:                                               ; preds = %41
  %51 = load i16, i16* %7, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp uge i32 %52, 41280
  br i1 %53, label %54, label %127

54:                                               ; preds = %50
  %55 = load i16, i16* %7, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 65280
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i16, i16* %62, align 4
  %64 = zext i16 %63 to i32
  %65 = and i32 %64, 65280
  %66 = sub nsw i32 %57, %65
  %67 = ashr i32 %66, 8
  store i32 %67, i32* %11, align 4
  %68 = load i16, i16* %7, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 255
  store i32 %70, i32* %6, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i16, i16* %75, align 4
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, 255
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %79, 157
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = icmp sge i32 %85, 161
  br i1 %86, label %87, label %92

87:                                               ; preds = %54
  %88 = load i32, i32* %8, align 4
  %89 = icmp sge i32 %88, 161
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 0, i32 -34
  br label %97

92:                                               ; preds = %54
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %93, 161
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 34, i32 0
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi i32 [ %91, %87 ], [ %96, %92 ]
  %99 = add nsw i32 %84, %98
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 255
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %108, 33
  store i32 %109, i32* %11, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 65280
  %117 = load i32, i32* %11, align 4
  %118 = sdiv i32 %117, 94
  %119 = shl i32 %118, 8
  %120 = add nsw i32 %116, %119
  %121 = add nsw i32 %120, 33
  %122 = load i32, i32* %11, align 4
  %123 = srem i32 %122, 94
  %124 = add nsw i32 %121, %123
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = trunc i32 %125 to i16
  store i16 %126, i16* %4, align 2
  br label %218

127:                                              ; preds = %50
  %128 = load i16, i16* %7, align 2
  %129 = zext i16 %128 to i32
  %130 = and i32 %129, 65280
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i16, i16* %135, align 4
  %137 = zext i16 %136 to i32
  %138 = and i32 %137, 65280
  %139 = sub nsw i32 %130, %138
  %140 = ashr i32 %139, 8
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 %141, 94
  %143 = load i16, i16* %7, align 2
  %144 = zext i16 %143 to i32
  %145 = and i32 %144, 255
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i16, i16* %150, align 4
  %152 = zext i16 %151 to i32
  %153 = and i32 %152, 255
  %154 = sub nsw i32 %145, %153
  %155 = add nsw i32 %142, %154
  store i32 %155, i32* %10, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 255
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* %8, align 4
  %167 = icmp sge i32 %166, 161
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 98, i32 64
  %170 = sub nsw i32 %165, %169
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = srem i32 %171, 157
  store i32 %172, i32* %8, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 65280
  %180 = load i32, i32* %11, align 4
  %181 = sdiv i32 %180, 157
  %182 = shl i32 %181, 8
  %183 = add nsw i32 %179, %182
  %184 = load i32, i32* %8, align 4
  %185 = icmp sgt i32 %184, 62
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 98, i32 64
  %188 = add nsw i32 %183, %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %188, %189
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = trunc i32 %191 to i16
  store i16 %192, i16* %4, align 2
  br label %218

193:                                              ; preds = %29, %18
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i16, i16* %198, align 4
  %200 = zext i16 %199 to i32
  %201 = load i16, i16* %7, align 2
  %202 = zext i16 %201 to i32
  %203 = icmp sgt i32 %200, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %193
  %205 = load i32, i32* %9, align 4
  %206 = sub nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %210

207:                                              ; preds = %193
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %207, %204
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %213, %214
  %216 = ashr i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %14

217:                                              ; preds = %14
  store i16 0, i16* %4, align 2
  br label %218

218:                                              ; preds = %217, %127, %97, %49
  %219 = load i16, i16* %4, align 2
  ret i16 %219
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
