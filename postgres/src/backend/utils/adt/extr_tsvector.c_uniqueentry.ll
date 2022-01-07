; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector.c_uniqueentry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector.c_uniqueentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }

@compareentry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i8*, i32*)* @uniqueentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniqueentry(%struct.TYPE_11__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = bitcast %struct.TYPE_11__* %20 to i8*
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @compareentry, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @qsort_arg(i8* %21, i32 %22, i32 40, i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %19, %4
  store i32 0, i32* %9, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %11, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 1
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %10, align 8
  br label %30

30:                                               ; preds = %189, %26
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = ptrtoint %struct.TYPE_11__* %31 to i64
  %34 = ptrtoint %struct.TYPE_11__* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 40
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %192

40:                                               ; preds = %30
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @strncmp(i8* %56, i8* %62, i64 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %117, label %69

69:                                               ; preds = %50, %40
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %9, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %69
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @uniquePos(%struct.TYPE_11__* %86, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @SHORTALIGN(i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 40
  %101 = add i64 %100, 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %83, %69
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 1
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %11, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %111 = icmp ne %struct.TYPE_11__* %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %115 = call i32 @memcpy(%struct.TYPE_11__* %113, %struct.TYPE_11__* %114, i32 40)
  br label %116

116:                                              ; preds = %112, %106
  br label %189

117:                                              ; preds = %50
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %188

123:                                              ; preds = %117
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %173

129:                                              ; preds = %123
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %132, %135
  store i32 %136, i32* %12, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 40
  %143 = trunc i64 %142 to i32
  %144 = call i64 @repalloc(%struct.TYPE_11__* %139, i32 %143)
  %145 = inttoptr i64 %144 to %struct.TYPE_11__*
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %147, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %154
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 40
  %164 = trunc i64 %163 to i32
  %165 = call i32 @memcpy(%struct.TYPE_11__* %155, %struct.TYPE_11__* %158, i32 %164)
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = call i32 @pfree(%struct.TYPE_11__* %171)
  br label %187

173:                                              ; preds = %123
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  store i32 1, i32* %176, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  store %struct.TYPE_11__* %179, %struct.TYPE_11__** %181, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %173, %129
  br label %188

188:                                              ; preds = %187, %117
  br label %189

189:                                              ; preds = %188, %116
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 1
  store %struct.TYPE_11__* %191, %struct.TYPE_11__** %10, align 8
  br label %30

192:                                              ; preds = %30
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %196
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %9, align 4
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %192
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i8* @uniquePos(%struct.TYPE_11__* %209, i32 %212)
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @SHORTALIGN(i32 %217)
  store i32 %218, i32* %9, align 4
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 40
  %224 = add i64 %223, 4
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = add i64 %226, %224
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %9, align 4
  br label %229

229:                                              ; preds = %206, %192
  %230 = load i32, i32* %9, align 4
  %231 = load i32*, i32** %8, align 8
  store i32 %230, i32* %231, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i64 1
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %235 = ptrtoint %struct.TYPE_11__* %233 to i64
  %236 = ptrtoint %struct.TYPE_11__* %234 to i64
  %237 = sub i64 %235, %236
  %238 = sdiv exact i64 %237, 40
  %239 = trunc i64 %238 to i32
  ret i32 %239
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @qsort_arg(i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @uniquePos(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SHORTALIGN(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
