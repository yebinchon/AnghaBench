; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sha1.c_nn_sha1_add.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sha1.c_nn_sha1_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sha1 = type { i32*, i32, i32*, i64 }

@SHA1_BLOCK_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_sha1*, i32)* @nn_sha1_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sha1_add(%struct.nn_sha1* %0, i32 %1) #0 {
  %3 = alloca %struct.nn_sha1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.nn_sha1* %0, %struct.nn_sha1** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %14 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %17 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %24 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = xor i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  store i32 %21, i32* %28, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %33 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32 %30, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %20
  %38 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %39 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %43 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @SHA1_BLOCK_LEN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %236

48:                                               ; preds = %37
  %49 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %50 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %55 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %60 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %65 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %70 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %195, %48
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 80
  br i1 %76, label %77, label %198

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %78, 16
  br i1 %79, label %80, label %128

80:                                               ; preds = %77
  %81 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %82 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 13
  %86 = and i32 %85, 15
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %91 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 8
  %95 = and i32 %94, 15
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %89, %98
  %100 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %101 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 2
  %105 = and i32 %104, 15
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %99, %108
  %110 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %111 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, 15
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %109, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @sha1_rol32(i32 %119, i32 1)
  %121 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %122 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 15
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %120, i32* %127, align 4
  br label %128

128:                                              ; preds = %80, %77
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 20
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = xor i32 %134, %135
  %137 = and i32 %133, %136
  %138 = xor i32 %132, %137
  %139 = add nsw i32 %138, 1518500249
  store i32 %139, i32* %11, align 4
  br label %173

140:                                              ; preds = %128
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %141, 40
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = xor i32 %144, %145
  %147 = load i32, i32* %9, align 4
  %148 = xor i32 %146, %147
  %149 = add nsw i32 %148, 1859775393
  store i32 %149, i32* %11, align 4
  br label %172

150:                                              ; preds = %140
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 60
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %157, %160
  %162 = or i32 %156, %161
  %163 = add i32 %162, -1894007588
  store i32 %163, i32* %11, align 4
  br label %171

164:                                              ; preds = %150
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %8, align 4
  %167 = xor i32 %165, %166
  %168 = load i32, i32* %9, align 4
  %169 = xor i32 %167, %168
  %170 = add i32 %169, -899497514
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %164, %153
  br label %172

172:                                              ; preds = %171, %143
  br label %173

173:                                              ; preds = %172, %131
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @sha1_rol32(i32 %174, i32 5)
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %175, %176
  %178 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %179 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = and i32 %181, 15
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %177, %185
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @sha1_rol32(i32 %191, i32 30)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %173
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  br label %74

198:                                              ; preds = %74
  %199 = load i32, i32* %6, align 4
  %200 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %201 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, %199
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %208 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %206
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %215 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %213
  store i32 %219, i32* %217, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %222 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, %220
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %229 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 4
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, %227
  store i32 %233, i32* %231, align 4
  %234 = load %struct.nn_sha1*, %struct.nn_sha1** %3, align 8
  %235 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %234, i32 0, i32 1
  store i32 0, i32* %235, align 8
  br label %236

236:                                              ; preds = %198, %37
  ret void
}

declare dso_local i32 @sha1_rol32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
