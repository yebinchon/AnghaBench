; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_build_tuple_argument.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_build_tuple_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@UTF_BEGIN = common dso_local global i32 0, align 4
@UTF_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_7__*, i32)* @pltcl_build_tuple_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pltcl_build_tuple_argument(i32 %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = call i32* (...) @Tcl_NewObj()
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %79, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %24, i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %15, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %79

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %79

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @NameStr(i32 %45)
  store i8* %46, i8** %12, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = call i32 @heap_getattr(i32 %47, i32 %49, %struct.TYPE_7__* %50, i32* %11)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %42
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @getTypeOutputInfo(i32 %57, i32* %13, i32* %14)
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i8* @OidOutputFunctionCall(i32 %59, i32 %60)
  store i8* %61, i8** %9, align 8
  %62 = load i32, i32* @UTF_BEGIN, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @UTF_E2U(i8* %64)
  %66 = call i32 @Tcl_NewStringObj(i32 %65, i32 -1)
  %67 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %63, i32 %66)
  %68 = load i32, i32* @UTF_END, align 4
  %69 = load i32, i32* @UTF_BEGIN, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @UTF_E2U(i8* %71)
  %73 = call i32 @Tcl_NewStringObj(i32 %72, i32 -1)
  %74 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %70, i32 %73)
  %75 = load i32, i32* @UTF_END, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @pfree(i8* %76)
  br label %78

78:                                               ; preds = %54, %42
  br label %79

79:                                               ; preds = %78, %40, %31
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %17

82:                                               ; preds = %17
  %83 = load i32*, i32** %7, align 8
  ret i32* %83
}

declare dso_local i32* @Tcl_NewObj(...) #1

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32*, i32*, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i32, i32) #1

declare dso_local i32 @UTF_E2U(i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
