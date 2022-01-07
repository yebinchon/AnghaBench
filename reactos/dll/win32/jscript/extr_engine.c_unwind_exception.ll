; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_unwind_exception.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_unwind_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i32, i32, %struct.TYPE_18__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32, i64, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@jscript = common dso_local global i32 0, align 4
@unwind_exception.messageW = internal constant [8 x i8] c"message\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Exception %08x %s\00", align 1
@JSV_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c" (message %s)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" in:\0A\00", align 1
@EXEC_RETURN_TO_INTERP = common dso_local global i32 0, align 4
@OP_enter_catch = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @unwind_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_exception(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @jscript, align 4
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @debugstr_jsval(i32 %22)
  %24 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @jsval_type(i32 %28)
  %30 = load i64, i64* @JSV_OBJECT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %17
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @get_object(i32 %36)
  %38 = call i32* @to_jsdisp(i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @jsdisp_propget_name(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @unwind_exception.messageW, i64 0, i64 0), i32* %12)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @SUCCEEDED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @debugstr_jsval(i32 %48)
  %50 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @jsval_release(i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %17
  %56 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = call i32 @print_backtrace(%struct.TYPE_17__* %57)
  br label %59

59:                                               ; preds = %55, %2
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %7, align 8
  br label %63

63:                                               ; preds = %104, %59
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = icmp ne %struct.TYPE_18__* %66, null
  %68 = xor i1 %67, true
  br i1 %68, label %69, label %108

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %78, %69
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = call i32 @scope_pop(i64* %80)
  br label %70

82:                                               ; preds = %70
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = call i32 @stack_popn(%struct.TYPE_17__* %83, i64 %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %13, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = call i32 @pop_call_frame(%struct.TYPE_17__* %95)
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @EXEC_RETURN_TO_INTERP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %3, align 4
  br label %225

103:                                              ; preds = %82
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %7, align 8
  br label %63

108:                                              ; preds = %63
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %6, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %9, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sle i64 %117, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %127, %130
  %132 = call i32 @stack_popn(%struct.TYPE_17__* %124, i64 %131)
  br label %133

133:                                              ; preds = %141, %108
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = call i32 @scope_pop(i64* %143)
  br label %133

145:                                              ; preds = %133
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %9, align 4
  br label %154

150:                                              ; preds = %145
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  br label %154

154:                                              ; preds = %150, %148
  %155 = phi i32 [ %149, %148 ], [ %153, %150 ]
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %154
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 6
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @OP_enter_catch, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  br label %177

177:                                              ; preds = %160, %154
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %8, align 4
  %182 = call i32 (...) @jsval_undefined()
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %187 = call i32 @clear_ei(%struct.TYPE_17__* %186)
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %177
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  br label %206

198:                                              ; preds = %190, %177
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 5
  store %struct.TYPE_18__* %201, %struct.TYPE_18__** %203, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %205 = call i32 @heap_free(%struct.TYPE_18__* %204)
  br label %206

206:                                              ; preds = %198, %195
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @stack_push(%struct.TYPE_17__* %207, i32 %208)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = call i64 @FAILED(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %3, align 4
  br label %225

215:                                              ; preds = %206
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %215
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %220 = load i32, i32* @FALSE, align 4
  %221 = call i32 @jsval_bool(i32 %220)
  %222 = call i32 @stack_push(%struct.TYPE_17__* %219, i32 %221)
  store i32 %222, i32* %10, align 4
  br label %223

223:                                              ; preds = %218, %215
  %224 = load i32, i32* %10, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %223, %213, %101
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @debugstr_jsval(i32) #1

declare dso_local i64 @jsval_type(i32) #1

declare dso_local i32* @to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @jsdisp_propget_name(i32*, i8*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @print_backtrace(%struct.TYPE_17__*) #1

declare dso_local i32 @scope_pop(i64*) #1

declare dso_local i32 @stack_popn(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @pop_call_frame(%struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @clear_ei(%struct.TYPE_17__*) #1

declare dso_local i32 @heap_free(%struct.TYPE_18__*) #1

declare dso_local i32 @stack_push(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
