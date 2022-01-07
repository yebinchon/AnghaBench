; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_anal_mask.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_anal_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i32 }

@R_ANAL_OP_MASK_BASIC = common dso_local global i32 0, align 4
@UT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\F0\00\00", align 1
@R_ANAL_OP_TYPE_CJMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i32, i32*, i64)* @anal_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @anal_mask(%struct.TYPE_12__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %15, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %226

24:                                               ; preds = %4
  %25 = call %struct.TYPE_11__* (...) @r_anal_op_new()
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32* @malloc(i32 %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @memset(i32* %28, i32 255, i32 %29)
  br label %31

31:                                               ; preds = %215, %24
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %219

35:                                               ; preds = %31
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call %struct.TYPE_11__* @r_anal_hint_get(%struct.TYPE_12__* %36, i64 %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %15, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %35
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %44
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %58 = call i32 @free(%struct.TYPE_11__* %57)
  br label %59

59:                                               ; preds = %56, %35
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* @R_ANAL_OP_MASK_BASIC, align 4
  %74 = call i32 @analop(%struct.TYPE_12__* %60, %struct.TYPE_11__* %61, i64 %65, i32* %69, i32 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %219

77:                                               ; preds = %59
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UT64_MAX, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @UT64_MAX, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %215

89:                                               ; preds = %83, %77
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 %97, 8
  %99 = call i32 @r_read_ble(i32* %93, i32 %96, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %12, align 4
  switch i32 %100, label %214 [
    i32 2, label %101
    i32 4, label %107
  ]

101:                                              ; preds = %89
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i32 @memcpy(i32* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %214

107:                                              ; preds = %89
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 64
  br i1 %111, label %112, label %204

112:                                              ; preds = %107
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %194 [
    i32 167, label %116
    i32 147, label %116
    i32 146, label %116
    i32 145, label %116
    i32 144, label %116
    i32 166, label %116
    i32 168, label %116
    i32 159, label %116
    i32 158, label %116
    i32 157, label %116
    i32 156, label %116
    i32 155, label %116
    i32 154, label %116
    i32 153, label %116
    i32 152, label %116
    i32 151, label %116
    i32 150, label %116
    i32 149, label %116
    i32 148, label %116
    i32 142, label %116
    i32 143, label %116
    i32 132, label %116
    i32 131, label %116
    i32 130, label %116
    i32 140, label %125
    i32 134, label %125
    i32 133, label %125
    i32 135, label %125
    i32 141, label %125
    i32 138, label %125
    i32 137, label %125
    i32 139, label %125
    i32 136, label %125
    i32 165, label %125
    i32 164, label %125
    i32 163, label %125
    i32 162, label %125
    i32 160, label %125
    i32 161, label %125
    i32 172, label %151
    i32 171, label %151
    i32 169, label %151
    i32 170, label %151
    i32 128, label %176
    i32 129, label %176
    i32 174, label %185
    i32 173, label %185
  ]

116:                                              ; preds = %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @r_write_ble(i32* %120, i32 -1, i32 %123, i32 32)
  br label %203

125:                                              ; preds = %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112, %112
  %126 = load i32, i32* %16, align 4
  %127 = and i32 %126, 939524096
  %128 = icmp eq i32 %127, 402653184
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %125
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @r_write_ble(i32* %136, i32 -16777216, i32 %139, i32 32)
  br label %150

141:                                              ; preds = %125
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @r_write_ble(i32* %145, i32 -1, i32 %148, i32 32)
  br label %150

150:                                              ; preds = %141, %132
  br label %203

151:                                              ; preds = %112, %112, %112, %112
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @R_ANAL_OP_TYPE_CJMP, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @r_write_ble(i32* %161, i32 -16777185, i32 %164, i32 32)
  br label %175

166:                                              ; preds = %151
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @r_write_ble(i32* %170, i32 -67108864, i32 %173, i32 32)
  br label %175

175:                                              ; preds = %166, %157
  br label %203

176:                                              ; preds = %112, %112
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @r_write_ble(i32* %180, i32 -524257, i32 %183, i32 32)
  br label %203

185:                                              ; preds = %112, %112
  %186 = load i32*, i32** %11, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @r_write_ble(i32* %189, i32 -16777185, i32 %192, i32 32)
  br label %203

194:                                              ; preds = %112
  %195 = load i32*, i32** %11, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @r_write_ble(i32* %198, i32 -1048576, i32 %201, i32 32)
  br label %203

203:                                              ; preds = %194, %185, %176, %175, %150, %116
  br label %213

204:                                              ; preds = %107
  %205 = load i32*, i32** %11, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @r_write_ble(i32* %208, i32 -1048576, i32 %211, i32 32)
  br label %213

213:                                              ; preds = %204, %203
  br label %214

214:                                              ; preds = %89, %213, %101
  br label %215

215:                                              ; preds = %214, %83
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %13, align 4
  br label %31

219:                                              ; preds = %76, %31
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %224 = call i32 @free(%struct.TYPE_11__* %223)
  %225 = load i32*, i32** %11, align 8
  store i32* %225, i32** %5, align 8
  br label %226

226:                                              ; preds = %219, %23
  %227 = load i32*, i32** %5, align 8
  ret i32* %227
}

declare dso_local %struct.TYPE_11__* @r_anal_op_new(...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @r_anal_hint_get(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @analop(%struct.TYPE_12__*, %struct.TYPE_11__*, i64, i32*, i32, i32) #1

declare dso_local i32 @r_read_ble(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @r_write_ble(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
