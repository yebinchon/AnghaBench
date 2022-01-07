; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_cea708.c_cea708_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_cea708.c_cea708_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@t35_provider_atsc = common dso_local global i32 0, align 4
@t35_provider_direct_tv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cea708_render(%struct.TYPE_7__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 0
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %8, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32* %29, i32** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %30, 3
  store i64 %31, i64* %6, align 8
  %32 = load i32, i32* @t35_provider_atsc, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 24
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 16
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 8
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 0
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %8, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = sub i64 %66, 4
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %37, %3
  %69 = load i32, i32* @t35_provider_atsc, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @t35_provider_direct_tv, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74, %68
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %83, i32* %85, align 4
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32* %89, i32** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = sub i64 %90, 1
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %80, %74
  %93 = load i32, i32* @t35_provider_direct_tv, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %101, i32* %103, align 4
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %8, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32* %107, i32** %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = sub i64 %108, 1
  store i64 %109, i64* %6, align 8
  br label %110

110:                                              ; preds = %98, %92
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 128, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 64, i32 0
  %131 = or i32 %123, %130
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 32, i32 0
  %139 = or i32 %131, %138
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 31
  %145 = or i32 %139, %144
  %146 = load i32*, i32** %5, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %145, i32* %147, align 4
  %148 = load i64, i64* %8, align 8
  %149 = add i64 %148, 2
  store i64 %149, i64* %8, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  store i32* %151, i32** %5, align 8
  %152 = load i64, i64* %6, align 8
  %153 = sub i64 %152, 2
  store i64 %153, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %225, %110
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %155, %159
  br i1 %160, label %161, label %228

161:                                              ; preds = %154
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %170, 3
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 2
  %182 = or i32 %171, %181
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %182, %191
  %193 = load i32*, i32** %5, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 %192, i32* %194, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 8
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = ashr i32 %215, 0
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  store i32 %216, i32* %218, align 4
  %219 = load i64, i64* %8, align 8
  %220 = add i64 %219, 3
  store i64 %220, i64* %8, align 8
  %221 = load i32*, i32** %5, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 3
  store i32* %222, i32** %5, align 8
  %223 = load i64, i64* %6, align 8
  %224 = sub i64 %223, 3
  store i64 %224, i64* %6, align 8
  br label %225

225:                                              ; preds = %161
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %7, align 4
  br label %154

228:                                              ; preds = %154
  %229 = load i32*, i32** %5, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  store i32 255, i32* %230, align 4
  %231 = load i64, i64* %8, align 8
  %232 = add i64 %231, 1
  %233 = trunc i64 %232 to i32
  ret i32 %233
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
