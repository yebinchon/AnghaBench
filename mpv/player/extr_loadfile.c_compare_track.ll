; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_compare_track.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_compare_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.track = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.MPOpts = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.track*, %struct.track*, i8**, %struct.MPOpts*)* @compare_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_track(%struct.track* %0, %struct.track* %1, i8** %2, %struct.MPOpts* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.track*, align 8
  %7 = alloca %struct.track*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.MPOpts*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.track* %0, %struct.track** %6, align 8
  store %struct.track* %1, %struct.track** %7, align 8
  store i8** %2, i8*** %8, align 8
  store %struct.MPOpts* %3, %struct.MPOpts** %9, align 8
  %16 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  %17 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %4
  %21 = load %struct.track*, %struct.track** %6, align 8
  %22 = getelementptr inbounds %struct.track, %struct.track* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.track*, %struct.track** %7, align 8
  %25 = getelementptr inbounds %struct.track, %struct.track* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.track*, %struct.track** %6, align 8
  %30 = getelementptr inbounds %struct.track, %struct.track* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %236

35:                                               ; preds = %20, %4
  %36 = load %struct.track*, %struct.track** %6, align 8
  %37 = getelementptr inbounds %struct.track, %struct.track* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.track*, %struct.track** %6, align 8
  %42 = getelementptr inbounds %struct.track, %struct.track* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ false, %35 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.track*, %struct.track** %7, align 8
  %50 = getelementptr inbounds %struct.track, %struct.track* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.track*, %struct.track** %7, align 8
  %55 = getelementptr inbounds %struct.track, %struct.track* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %53, %46
  %60 = phi i1 [ false, %46 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %236

67:                                               ; preds = %59
  %68 = load %struct.track*, %struct.track** %6, align 8
  %69 = getelementptr inbounds %struct.track, %struct.track* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.track*, %struct.track** %7, align 8
  %72 = getelementptr inbounds %struct.track, %struct.track* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.track*, %struct.track** %6, align 8
  %77 = getelementptr inbounds %struct.track, %struct.track* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %236

82:                                               ; preds = %67
  %83 = load i8**, i8*** %8, align 8
  %84 = load %struct.track*, %struct.track** %6, align 8
  %85 = getelementptr inbounds %struct.track, %struct.track* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @match_lang(i8** %83, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i8**, i8*** %8, align 8
  %89 = load %struct.track*, %struct.track** %7, align 8
  %90 = getelementptr inbounds %struct.track, %struct.track* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @match_lang(i8** %88, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %82
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp sgt i32 %97, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %236

101:                                              ; preds = %82
  %102 = load %struct.track*, %struct.track** %6, align 8
  %103 = getelementptr inbounds %struct.track, %struct.track* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.track*, %struct.track** %7, align 8
  %106 = getelementptr inbounds %struct.track, %struct.track* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.track*, %struct.track** %6, align 8
  %111 = getelementptr inbounds %struct.track, %struct.track* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %5, align 4
  br label %236

114:                                              ; preds = %101
  %115 = load %struct.track*, %struct.track** %6, align 8
  %116 = getelementptr inbounds %struct.track, %struct.track* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.track*, %struct.track** %7, align 8
  %119 = getelementptr inbounds %struct.track, %struct.track* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.track*, %struct.track** %6, align 8
  %124 = getelementptr inbounds %struct.track, %struct.track* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %5, align 4
  br label %236

127:                                              ; preds = %114
  %128 = load %struct.track*, %struct.track** %6, align 8
  %129 = getelementptr inbounds %struct.track, %struct.track* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.track*, %struct.track** %7, align 8
  %132 = getelementptr inbounds %struct.track, %struct.track* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %127
  %136 = load %struct.track*, %struct.track** %6, align 8
  %137 = getelementptr inbounds %struct.track, %struct.track* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %5, align 4
  br label %236

142:                                              ; preds = %127
  %143 = load %struct.track*, %struct.track** %6, align 8
  %144 = getelementptr inbounds %struct.track, %struct.track* %143, i32 0, i32 6
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = icmp ne %struct.TYPE_2__* %145, null
  br i1 %146, label %147, label %227

147:                                              ; preds = %142
  %148 = load %struct.track*, %struct.track** %7, align 8
  %149 = getelementptr inbounds %struct.track, %struct.track* %148, i32 0, i32 6
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = icmp ne %struct.TYPE_2__* %150, null
  br i1 %151, label %152, label %227

152:                                              ; preds = %147
  %153 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  %154 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sge i64 %155, 0
  br i1 %156, label %157, label %227

157:                                              ; preds = %152
  %158 = load %struct.track*, %struct.track** %6, align 8
  %159 = getelementptr inbounds %struct.track, %struct.track* %158, i32 0, i32 6
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.track*, %struct.track** %7, align 8
  %164 = getelementptr inbounds %struct.track, %struct.track* %163, i32 0, i32 6
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %162, %167
  br i1 %168, label %169, label %227

169:                                              ; preds = %157
  %170 = load %struct.track*, %struct.track** %6, align 8
  %171 = getelementptr inbounds %struct.track, %struct.track* %170, i32 0, i32 6
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  %176 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sle i64 %174, %177
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %14, align 4
  %180 = load %struct.track*, %struct.track** %7, align 8
  %181 = getelementptr inbounds %struct.track, %struct.track* %180, i32 0, i32 6
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  %186 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sle i64 %184, %187
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %169
  %194 = load i32, i32* %14, align 4
  store i32 %194, i32* %5, align 4
  br label %236

195:                                              ; preds = %169
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %195
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  %202 = load %struct.track*, %struct.track** %6, align 8
  %203 = getelementptr inbounds %struct.track, %struct.track* %202, i32 0, i32 6
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.track*, %struct.track** %7, align 8
  %208 = getelementptr inbounds %struct.track, %struct.track* %207, i32 0, i32 6
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %206, %211
  %213 = zext i1 %212 to i32
  store i32 %213, i32* %5, align 4
  br label %236

214:                                              ; preds = %198, %195
  %215 = load %struct.track*, %struct.track** %6, align 8
  %216 = getelementptr inbounds %struct.track, %struct.track* %215, i32 0, i32 6
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.track*, %struct.track** %7, align 8
  %221 = getelementptr inbounds %struct.track, %struct.track* %220, i32 0, i32 6
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp slt i64 %219, %224
  %226 = zext i1 %225 to i32
  store i32 %226, i32* %5, align 4
  br label %236

227:                                              ; preds = %157, %152, %147, %142
  %228 = load %struct.track*, %struct.track** %6, align 8
  %229 = getelementptr inbounds %struct.track, %struct.track* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.track*, %struct.track** %7, align 8
  %232 = getelementptr inbounds %struct.track, %struct.track* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = icmp sle i64 %230, %233
  %235 = zext i1 %234 to i32
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %227, %214, %201, %193, %135, %122, %109, %96, %75, %65, %28
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32 @match_lang(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
