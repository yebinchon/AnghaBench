; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_switch.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.mrb_context*, %struct.mrb_context* }
%struct.mrb_context = type { i32, %struct.TYPE_15__*, i32, i32*, %struct.TYPE_14__*, %struct.mrb_context* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32* }

@E_FIBER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"resuming transferred fiber\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"double resume\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"resuming dead fiber\00", align 1
@MRB_FIBER_CREATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"double resume (current)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, i32*, i64, i64)* @fiber_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiber_switch(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mrb_context*, align 8
  %14 = alloca %struct.mrb_context*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.mrb_context* @fiber_check(%struct.TYPE_16__* %19, i32 %20)
  store %struct.mrb_context* %21, %struct.mrb_context** %13, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.mrb_context*, %struct.mrb_context** %23, align 8
  store %struct.mrb_context* %24, %struct.mrb_context** %14, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %27 = call i32 @fiber_check_cfunc(%struct.TYPE_16__* %25, %struct.mrb_context* %26)
  %28 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %29 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  switch i32 %31, label %48 [
    i32 128, label %32
    i32 130, label %40
    i32 131, label %40
    i32 129, label %44
  ]

32:                                               ; preds = %6
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = load i32, i32* @E_FIBER_ERROR, align 4
  %38 = call i32 @mrb_raise(%struct.TYPE_16__* %36, i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %32
  br label %49

40:                                               ; preds = %6, %6
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = load i32, i32* @E_FIBER_ERROR, align 4
  %43 = call i32 @mrb_raise(%struct.TYPE_16__* %41, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %49

44:                                               ; preds = %6
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = load i32, i32* @E_FIBER_ERROR, align 4
  %47 = call i32 @mrb_raise(%struct.TYPE_16__* %45, i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %49

48:                                               ; preds = %6
  br label %49

49:                                               ; preds = %48, %44, %40, %39
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 131, i32 128
  %54 = load %struct.mrb_context*, %struct.mrb_context** %14, align 8
  %55 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.mrb_context*, %struct.mrb_context** %60, align 8
  br label %77

62:                                               ; preds = %49
  %63 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %64 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %63, i32 0, i32 5
  %65 = load %struct.mrb_context*, %struct.mrb_context** %64, align 8
  %66 = icmp ne %struct.mrb_context* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %69 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %68, i32 0, i32 5
  %70 = load %struct.mrb_context*, %struct.mrb_context** %69, align 8
  br label %75

71:                                               ; preds = %62
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load %struct.mrb_context*, %struct.mrb_context** %73, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi %struct.mrb_context* [ %70, %67 ], [ %74, %71 ]
  br label %77

77:                                               ; preds = %75, %58
  %78 = phi %struct.mrb_context* [ %61, %58 ], [ %76, %75 ]
  %79 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %80 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %79, i32 0, i32 5
  store %struct.mrb_context* %78, %struct.mrb_context** %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %83 = call i32 @fiber_switch_context(%struct.TYPE_16__* %81, %struct.mrb_context* %82)
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @MRB_FIBER_CREATED, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %141

87:                                               ; preds = %77
  %88 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %89 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = load i32, i32* @E_FIBER_ERROR, align 4
  %97 = call i32 @mrb_raise(%struct.TYPE_16__* %95, i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %87
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 2
  %102 = call i32 @mrb_stack_extend(%struct.TYPE_16__* %99, i32 %101)
  %103 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %104 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32* %106, i32** %17, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32* %110, i32** %18, align 8
  br label %111

111:                                              ; preds = %115, %98
  %112 = load i32*, i32** %17, align 8
  %113 = load i32*, i32** %18, align 8
  %114 = icmp ult i32* %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %10, align 8
  %118 = load i32, i32* %116, align 4
  %119 = load i32*, i32** %17, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %17, align 8
  store i32 %118, i32* %119, align 4
  br label %111

121:                                              ; preds = %111
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %124 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %123, i32 0, i32 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 4
  %127 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %128 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %127, i32 0, i32 1
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.TYPE_13__* @MRB_PROC_ENV(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %138 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %136, i32* %140, align 4
  store i32 %136, i32* %16, align 4
  br label %146

141:                                              ; preds = %77
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @fiber_result(%struct.TYPE_16__* %142, i32* %143, i32 %144)
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %141, %121
  %147 = load i64, i64* %12, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %146
  %150 = load i32, i32* @TRUE, align 4
  %151 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %152 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %155 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %154, i32 0, i32 1
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 -1
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %161 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %160, i32 0, i32 1
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @mrb_vm_exec(%struct.TYPE_16__* %153, i32 %159, i32 %164)
  store i32 %165, i32* %16, align 4
  %166 = load %struct.mrb_context*, %struct.mrb_context** %14, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  store %struct.mrb_context* %166, %struct.mrb_context** %168, align 8
  br label %172

169:                                              ; preds = %146
  %170 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %171 = call i32 @MARK_CONTEXT_MODIFY(%struct.mrb_context* %170)
  br label %172

172:                                              ; preds = %169, %149
  %173 = load i32, i32* %16, align 4
  ret i32 %173
}

declare dso_local %struct.mrb_context* @fiber_check(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fiber_check_cfunc(%struct.TYPE_16__*, %struct.mrb_context*) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @fiber_switch_context(%struct.TYPE_16__*, %struct.mrb_context*) #1

declare dso_local i32 @mrb_stack_extend(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_13__* @MRB_PROC_ENV(i32) #1

declare dso_local i32 @fiber_result(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @mrb_vm_exec(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @MARK_CONTEXT_MODIFY(%struct.mrb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
