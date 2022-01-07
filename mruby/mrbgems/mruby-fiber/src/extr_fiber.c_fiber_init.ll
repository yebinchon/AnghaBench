; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_context = type { i32, %struct.RFiber*, %struct.TYPE_16__*, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*, i32 }
%struct.RFiber = type { %struct.mrb_context* }
%struct.TYPE_16__ = type { i32, %struct.RProc*, i32, i32* }
%struct.RProc = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.RBasic = type { i32 }

@fiber_init.mrb_context_zero = internal constant %struct.mrb_context zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"&!\00", align 1
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot initialize twice\00", align 1
@E_FIBER_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"tried to create Fiber from C defined method\00", align 1
@FIBER_STACK_INIT_SIZE = common dso_local global i64 0, align 8
@FIBER_CI_INIT_SIZE = common dso_local global i32 0, align 4
@MRB_FIBER_CREATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @fiber_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiber_init(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RFiber*, align 8
  %6 = alloca %struct.mrb_context*, align 8
  %7 = alloca %struct.RProc*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.RFiber* @fiber_ptr(i32 %11)
  store %struct.RFiber* %12, %struct.RFiber** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = call i32 @mrb_get_args(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  %15 = load %struct.RFiber*, %struct.RFiber** %5, align 8
  %16 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %15, i32 0, i32 0
  %17 = load %struct.mrb_context*, %struct.mrb_context** %16, align 8
  %18 = icmp ne %struct.mrb_context* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %22 = call i32 @mrb_raise(%struct.TYPE_15__* %20, i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.RProc* @mrb_proc_ptr(i32 %24)
  store %struct.RProc* %25, %struct.RProc** %7, align 8
  %26 = load %struct.RProc*, %struct.RProc** %7, align 8
  %27 = call i64 @MRB_PROC_CFUNC_P(%struct.RProc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = load i32, i32* @E_FIBER_ERROR, align 4
  %32 = call i32 @mrb_raise(%struct.TYPE_15__* %30, i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = call i64 @mrb_malloc(%struct.TYPE_15__* %34, i64 72)
  %36 = inttoptr i64 %35 to %struct.mrb_context*
  store %struct.mrb_context* %36, %struct.mrb_context** %6, align 8
  %37 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %38 = bitcast %struct.mrb_context* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 bitcast (%struct.mrb_context* @fiber_init.mrb_context_zero to i8*), i64 72, i1 false)
  %39 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %40 = load %struct.RFiber*, %struct.RFiber** %5, align 8
  %41 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %40, i32 0, i32 0
  store %struct.mrb_context* %39, %struct.mrb_context** %41, align 8
  %42 = load i64, i64* @FIBER_STACK_INIT_SIZE, align 8
  store i64 %42, i64* %10, align 8
  %43 = load %struct.RProc*, %struct.RProc** %7, align 8
  %44 = getelementptr inbounds %struct.RProc, %struct.RProc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %33
  %52 = load %struct.RProc*, %struct.RProc** %7, align 8
  %53 = getelementptr inbounds %struct.RProc, %struct.RProc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %51, %33
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = load i64, i64* %10, align 8
  %63 = mul i64 %62, 4
  %64 = call i64 @mrb_malloc(%struct.TYPE_15__* %61, i64 %63)
  %65 = inttoptr i64 %64 to i32*
  %66 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %67 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %66, i32 0, i32 6
  store i32* %65, i32** %67, align 8
  %68 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %69 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %74 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %73, i32 0, i32 7
  store i32* %72, i32** %74, align 8
  %75 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %76 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %79 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %78, i32 0, i32 3
  store i32* %77, i32** %79, align 8
  %80 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %81 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = mul i64 %83, 4
  %85 = call i32 @memset(i32* %82, i32 0, i64 %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %94 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %92, i32* %96, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = load i32, i32* @FIBER_CI_INIT_SIZE, align 4
  %99 = call i64 @mrb_calloc(%struct.TYPE_15__* %97, i32 %98, i32 32)
  %100 = inttoptr i64 %99 to %struct.TYPE_16__*
  %101 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %102 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %101, i32 0, i32 4
  store %struct.TYPE_16__* %100, %struct.TYPE_16__** %102, align 8
  %103 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %104 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %103, i32 0, i32 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = load i32, i32* @FIBER_CI_INIT_SIZE, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 %107
  %109 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %110 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %109, i32 0, i32 5
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %110, align 8
  %111 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %112 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %111, i32 0, i32 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %115 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %114, i32 0, i32 2
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %115, align 8
  %116 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %117 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %120 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %119, i32 0, i32 2
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  store i32* %118, i32** %122, align 8
  %123 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %124 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %123, i32 0, i32 2
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  store %struct.TYPE_16__* %125, %struct.TYPE_16__** %8, align 8
  %126 = load %struct.RProc*, %struct.RProc** %7, align 8
  %127 = call i32 @MRB_PROC_TARGET_CLASS(%struct.RProc* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.RProc*, %struct.RProc** %7, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  store %struct.RProc* %130, %struct.RProc** %132, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i64 @mrb_obj_ptr(i32 %134)
  %136 = inttoptr i64 %135 to %struct.RBasic*
  %137 = load %struct.RProc*, %struct.RProc** %7, align 8
  %138 = bitcast %struct.RProc* %137 to %struct.RBasic*
  %139 = call i32 @mrb_field_write_barrier(%struct.TYPE_15__* %133, %struct.RBasic* %136, %struct.RBasic* %138)
  %140 = load %struct.RProc*, %struct.RProc** %7, align 8
  %141 = getelementptr inbounds %struct.RProc, %struct.RProc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i64 1
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i64 0
  %152 = bitcast %struct.TYPE_16__* %149 to i8*
  %153 = bitcast %struct.TYPE_16__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 32, i1 false)
  %154 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %155 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %154, i32 0, i32 2
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 1
  store %struct.TYPE_16__* %157, %struct.TYPE_16__** %155, align 8
  %158 = load %struct.RFiber*, %struct.RFiber** %5, align 8
  %159 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %160 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %159, i32 0, i32 1
  store %struct.RFiber* %158, %struct.RFiber** %160, align 8
  %161 = load i32, i32* @MRB_FIBER_CREATED, align 4
  %162 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %163 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.RFiber* @fiber_ptr(i32) #1

declare dso_local i32 @mrb_get_args(%struct.TYPE_15__*, i8*, i32*) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local %struct.RProc* @mrb_proc_ptr(i32) #1

declare dso_local i64 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

declare dso_local i64 @mrb_malloc(%struct.TYPE_15__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @mrb_calloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @MRB_PROC_TARGET_CLASS(%struct.RProc*) #1

declare dso_local i32 @mrb_field_write_barrier(%struct.TYPE_15__*, %struct.RBasic*, %struct.RBasic*) #1

declare dso_local i64 @mrb_obj_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
