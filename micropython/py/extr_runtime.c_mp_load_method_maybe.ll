; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_load_method_maybe.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_load_method_maybe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 (i32, i32, i32*)*, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@MP_OBJ_NULL = common dso_local global i32 0, align 4
@MP_QSTR___next__ = common dso_local global i32 0, align 4
@mp_builtin_next_obj = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@mp_type_dict = common dso_local global i32 0, align 4
@MP_MAP_LOOKUP = common dso_local global i32 0, align 4
@MP_QSTR___class__ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_load_method_maybe(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @MP_OBJ_NULL, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @MP_OBJ_NULL, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_12__* @mp_obj_get_type(i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MP_QSTR___next__, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_12__* @mp_builtin_next_obj)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %30, i32* %32, align 4
  br label %83

33:                                               ; preds = %21, %3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %35, align 8
  %37 = icmp ne i32 (i32, i32, i32*)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 %41(i32 %42, i32 %43, i32* %44)
  br label %82

46:                                               ; preds = %33
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, @mp_type_dict
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @MP_OBJ_NEW_QSTR(i32 %66)
  %68 = load i32, i32* @MP_MAP_LOOKUP, align 4
  %69 = call %struct.TYPE_13__* @mp_map_lookup(i32* %65, i32 %67, i32 %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %9, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %51
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @mp_convert_member_lookup(i32 %73, %struct.TYPE_12__* %74, i32 %77, i32* %78)
  br label %80

80:                                               ; preds = %72, %51
  br label %81

81:                                               ; preds = %80, %46
  br label %82

82:                                               ; preds = %81, %38
  br label %83

83:                                               ; preds = %82, %26
  ret void
}

declare dso_local %struct.TYPE_12__* @mp_obj_get_type(i32) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @mp_map_lookup(i32*, i32, i32) #1

declare dso_local i32 @MP_OBJ_NEW_QSTR(i32) #1

declare dso_local i32 @mp_convert_member_lookup(i32, %struct.TYPE_12__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
