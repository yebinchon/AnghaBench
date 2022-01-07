; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_interpret_epilog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_interpret_epilog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stack_walk = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unsupported insn %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_stack_walk*, i32, %struct.TYPE_5__*)* @interpret_epilog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_epilog(%struct.cpu_stack_walk* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_stack_walk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cpu_stack_walk* %0, %struct.cpu_stack_walk** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  br label %14

14:                                               ; preds = %236, %223, %163, %91, %73, %47, %3
  store i32 0, i32* %13, align 4
  %15 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %15, i32 %16, i32* %8, i32 1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %247

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 240
  %24 = icmp eq i32 %23, 64
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 15
  store i32 %27, i32* %13, align 4
  %28 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %28, i32 %30, i32* %8, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %247

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %243 [
    i32 88, label %38
    i32 89, label %38
    i32 90, label %38
    i32 91, label %38
    i32 92, label %38
    i32 93, label %38
    i32 94, label %38
    i32 95, label %38
    i32 129, label %65
    i32 131, label %83
    i32 141, label %101
    i32 194, label %164
    i32 195, label %195
    i32 243, label %195
    i32 233, label %215
    i32 235, label %228
  ]

38:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36
  %39 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %39, i32 %42, i32* %12, i32 4)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %247

47:                                               ; preds = %38
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 88
  %51 = load i32, i32* %13, align 4
  %52 = and i32 %51, 1
  %53 = mul nsw i32 %52, 8
  %54 = add nsw i32 %50, %53
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @set_int_reg(%struct.TYPE_5__* %48, i32 %54, i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %14

65:                                               ; preds = %36
  %66 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 2
  %69 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %66, i32 %68, i32* %11, i32 4)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %4, align 4
  br label %247

73:                                               ; preds = %65
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 6
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  br label %14

83:                                               ; preds = %36
  %84 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 2
  %87 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %84, i32 %86, i32* %9, i32 4)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %4, align 4
  br label %247

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = trunc i32 %92 to i8
  %94 = sext i8 %93 to i32
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 3
  store i32 %100, i32* %6, align 4
  br label %14

101:                                              ; preds = %36
  %102 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %102, i32 %104, i32* %8, i32 4)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %4, align 4
  br label %247

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  %111 = ashr i32 %110, 6
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %138

113:                                              ; preds = %109
  %114 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 2
  %117 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %114, i32 %116, i32* %9, i32 4)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %4, align 4
  br label %247

121:                                              ; preds = %113
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 7
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, 1
  %127 = mul nsw i32 %126, 8
  %128 = add nsw i32 %124, %127
  %129 = call i32 @get_int_reg(%struct.TYPE_5__* %122, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = trunc i32 %130 to i8
  %132 = sext i8 %131 to i32
  %133 = add nsw i32 %129, %132
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 3
  store i32 %137, i32* %6, align 4
  br label %163

138:                                              ; preds = %109
  %139 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 2
  %142 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %139, i32 %141, i32* %11, i32 4)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @FALSE, align 4
  store i32 %145, i32* %4, align 4
  br label %247

146:                                              ; preds = %138
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = and i32 %148, 7
  %150 = load i32, i32* %13, align 4
  %151 = and i32 %150, 1
  %152 = mul nsw i32 %151, 8
  %153 = add nsw i32 %149, %152
  %154 = call i32 @get_int_reg(%struct.TYPE_5__* %147, i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %154, %155
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, 6
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %146, %121
  br label %14

164:                                              ; preds = %36
  %165 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %165, i32 %168, i32* %12, i32 4)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %164
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %4, align 4
  br label %247

173:                                              ; preds = %164
  %174 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  %177 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %174, i32 %176, i32* %10, i32 4)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %173
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %4, align 4
  br label %247

181:                                              ; preds = %173
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 4, %186
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = add i64 %191, %187
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %189, align 4
  %194 = load i32, i32* @TRUE, align 4
  store i32 %194, i32* %4, align 4
  br label %247

195:                                              ; preds = %36, %36
  %196 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %196, i32 %199, i32* %12, i32 4)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %195
  %203 = load i32, i32* @FALSE, align 4
  store i32 %203, i32* %4, align 4
  br label %247

204:                                              ; preds = %195
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = add i64 %211, 4
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 4
  %214 = load i32, i32* @TRUE, align 4
  store i32 %214, i32* %4, align 4
  br label %247

215:                                              ; preds = %36
  %216 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %217, 1
  %219 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %216, i32 %218, i32* %11, i32 4)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %215
  %222 = load i32, i32* @FALSE, align 4
  store i32 %222, i32* %4, align 4
  br label %247

223:                                              ; preds = %215
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 5, %224
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %6, align 4
  br label %14

228:                                              ; preds = %36
  %229 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  %232 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %229, i32 %231, i32* %9, i32 4)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %228
  %235 = load i32, i32* @FALSE, align 4
  store i32 %235, i32* %4, align 4
  br label %247

236:                                              ; preds = %228
  %237 = load i32, i32* %9, align 4
  %238 = trunc i32 %237 to i8
  %239 = sext i8 %238 to i32
  %240 = add nsw i32 2, %239
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %6, align 4
  br label %14

243:                                              ; preds = %36
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* @FALSE, align 4
  store i32 %246, i32* %4, align 4
  br label %247

247:                                              ; preds = %243, %234, %221, %204, %202, %181, %179, %171, %144, %119, %107, %89, %71, %45, %33, %19
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local i32 @sw_read_mem(%struct.cpu_stack_walk*, i32, i32*, i32) #1

declare dso_local i32 @set_int_reg(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @get_int_reg(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
