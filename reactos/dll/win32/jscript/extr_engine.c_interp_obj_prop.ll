; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_obj_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_obj_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i8*, i32*, i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PROPERTY_DEFINITION_VALUE = common dso_local global i32 0, align 4
@PROPF_ENUMERABLE = common dso_local global i32 0, align 4
@PROPF_CONFIGURABLE = common dso_local global i32 0, align 4
@PROPERTY_DEFINITION_GETTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_obj_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_obj_prop(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @get_op_str(i32* %11, i32 0)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @get_op_uint(i32* %13, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @debugstr_jsstr(i32* %15)
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @stack_pop(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @jsstr_flatten(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @stack_top(i32* %22)
  %24 = call i32 @is_object_instance(i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @stack_top(i32* %26)
  %28 = call i32 @get_object(i32 %27)
  %29 = call i32* @as_jsdisp(i32 %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PROPERTY_DEFINITION_VALUE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @jsdisp_propput_name(i32* %34, i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %72

38:                                               ; preds = %1
  %39 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 48, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %41 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %42 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %40, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @is_object_instance(i32 %44)
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @get_object(i32 %47)
  %49 = call i32* @iface_to_jsdisp(i32 %48)
  store i32* %49, i32** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PROPERTY_DEFINITION_GETTER, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %38
  %57 = load i8*, i8** @TRUE, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  store i8* %57, i8** %58, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i32* %59, i32** %60, align 8
  br label %66

61:                                               ; preds = %38
  %62 = load i8*, i8** @TRUE, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i8* %62, i8** %63, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32* %64, i32** %65, align 8
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @jsdisp_define_property(i32* %67, i32* %68, %struct.TYPE_3__* %9)
  store i32 %69, i32* %8, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @jsdisp_release(i32* %70)
  br label %72

72:                                               ; preds = %66, %33
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @jsval_release(i32 %73)
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32* @get_op_str(i32*, i32) #1

declare dso_local i32 @get_op_uint(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_jsstr(i32*) #1

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i32* @jsstr_flatten(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @stack_top(i32*) #1

declare dso_local i32* @as_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @jsdisp_propput_name(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @jsdisp_define_property(i32*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsval_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
