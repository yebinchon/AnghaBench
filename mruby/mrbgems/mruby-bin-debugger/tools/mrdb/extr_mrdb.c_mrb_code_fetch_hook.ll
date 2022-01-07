; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_mrb_code_fetch_hook.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_mrb_code_fetch_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64, i8*, i64, i32, i64, i64, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*)*, %struct.TYPE_22__*, i64, i32, i32*, i32*, i32*, %struct.TYPE_22__* }

@DBG_PHASE_RESTART = common dso_local global i64 0, align 8
@DBG_PHASE_RUNNING = common dso_local global i8* null, align 8
@BRK_STEP = common dso_local global i64 0, align 8
@BRK_NEXT = common dso_local global i64 0, align 8
@BRK_BREAK = common dso_local global i64 0, align 8
@BRK_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Cannot get debugging information.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_22__*, i32*, i32*)* @mrb_code_fetch_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrb_code_fetch_hook(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = call %struct.TYPE_23__* @mrb_debug_context_get(%struct.TYPE_21__* %13)
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %12, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %16 = call i32 @mrb_assert(%struct.TYPE_23__* %15)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 13
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 12
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 11
  store i32* %23, i32** %25, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DBG_PHASE_RESTART, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 7
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %34, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  store i8* null, i8** %36, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 10
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 3
  store i32 129, i32* %42, align 8
  %43 = load i8*, i8** @DBG_PHASE_RUNNING, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %31, %4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = call i8* @mrb_debug_get_filename(%struct.TYPE_21__* %48, %struct.TYPE_22__* %49, i32* %56)
  store i8* %57, i8** %9, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  %67 = call i64 @mrb_debug_get_line(%struct.TYPE_21__* %58, %struct.TYPE_22__* %59, i32* %66)
  store i64 %67, i64* %10, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %195 [
    i32 128, label %71
    i32 130, label %93
    i32 129, label %130
    i32 131, label %180
  ]

71:                                               ; preds = %47
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %71
  br label %226

87:                                               ; preds = %80, %74
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 9
  store i32 0, i32* %89, align 8
  %90 = load i64, i64* @BRK_STEP, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  br label %196

93:                                               ; preds = %47
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102, %93
  br label %226

109:                                              ; preds = %102, %96
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 10
  %112 = load i32*, i32** %111, align 8
  %113 = ptrtoint i32* %112 to i64
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %113, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  br label %226

122:                                              ; preds = %109
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 10
  store i32* null, i32** %124, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 9
  store i32 0, i32* %126, align 8
  %127 = load i64, i64* @BRK_NEXT, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 4
  store i64 %127, i64* %129, align 8
  br label %196

130:                                              ; preds = %47
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i64 @check_method_breakpoint(%struct.TYPE_21__* %131, %struct.TYPE_22__* %132, i32* %133, i32* %134)
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %11, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 8
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* @BRK_BREAK, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  br label %196

145:                                              ; preds = %130
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = icmp ne i8* %148, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %151, %145
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = load i64, i64* %10, align 8
  %162 = call i64 @mrb_debug_check_breakpoint_line(%struct.TYPE_21__* %158, %struct.TYPE_23__* %159, i8* %160, i64 %161)
  store i64 %162, i64* %11, align 8
  %163 = load i64, i64* %11, align 8
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %157
  %166 = load i64, i64* %11, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 8
  store i64 %166, i64* %168, align 8
  %169 = load i64, i64* @BRK_BREAK, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 4
  store i64 %169, i64* %171, align 8
  br label %196

172:                                              ; preds = %157
  br label %173

173:                                              ; preds = %172, %151
  %174 = load i8*, i8** %9, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  br label %226

180:                                              ; preds = %47
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 7
  store %struct.TYPE_22__* %181, %struct.TYPE_22__** %183, align 8
  %184 = load i64, i64* @BRK_INIT, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 4
  store i64 %184, i64* %186, align 8
  %187 = load i8*, i8** %9, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i64, i64* %10, align 8
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189, %180
  %193 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %189
  br label %196

195:                                              ; preds = %47
  br label %226

196:                                              ; preds = %194, %165, %138, %122, %87
  %197 = load i8*, i8** %9, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load i64, i64* %10, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 2
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @BRK_BREAK, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %196
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, -1
  store i64 %212, i64* %210, align 8
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %226

215:                                              ; preds = %208, %196
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 6
  %218 = load i32 (%struct.TYPE_21__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*)** %217, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %221 = call i32 %218(%struct.TYPE_21__* %219, %struct.TYPE_23__* %220)
  %222 = load i8*, i8** @DBG_PHASE_RUNNING, align 8
  %223 = ptrtoint i8* %222 to i64
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %215, %214, %195, %173, %121, %108, %86
  ret void
}

declare dso_local %struct.TYPE_23__* @mrb_debug_context_get(%struct.TYPE_21__*) #1

declare dso_local i32 @mrb_assert(%struct.TYPE_23__*) #1

declare dso_local i8* @mrb_debug_get_filename(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i64 @mrb_debug_get_line(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i64 @check_method_breakpoint(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i64 @mrb_debug_check_breakpoint_line(%struct.TYPE_21__*, %struct.TYPE_23__*, i8*, i64) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
