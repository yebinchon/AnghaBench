; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_init_dispex_from_constr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_init_dispex_from_constr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@init_dispex_from_constr.prototypeW = internal constant [10 x i8] c"prototype\00", align 1
@PROP_DELETED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Could not get prototype\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_dispex_from_constr(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @string_hash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @init_dispex_from_constr.prototypeW, i64 0, i64 0))
  %16 = call i32 @find_prop_name_prot(i32* %14, i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @init_dispex_from_constr.prototypeW, i64 0, i64 0), %struct.TYPE_4__** %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i64 @SUCCEEDED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PROP_DELETED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = call i32 @prop_get(i32* %30, %struct.TYPE_4__* %31, i32* %13)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %63

39:                                               ; preds = %29
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @is_object_instance(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @get_object(i32 %44)
  %46 = call i32* @iface_to_jsdisp(i32 %45)
  store i32* %46, i32** %10, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @jsval_release(i32 %48)
  br label %50

50:                                               ; preds = %47, %23, %20, %4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @init_dispex(i32* %51, i32* %52, i32* %53, i32* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @jsdisp_release(i32* %59)
  br label %61

61:                                               ; preds = %58, %50
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %36
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @find_prop_name_prot(i32*, i32, i8*, %struct.TYPE_4__**) #1

declare dso_local i32 @string_hash(i8*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @prop_get(i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @init_dispex(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
