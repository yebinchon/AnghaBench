; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_process_SPI_result.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_process_SPI_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@TCL_OK = common dso_local global i32 0, align 4
@TCL_CONTINUE = common dso_local global i32 0, align 4
@TCL_RETURN = common dso_local global i32 0, align 4
@TCL_BREAK = common dso_local global i32 0, align 4
@TCL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pltcl: SPI_execute failed: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32, %struct.TYPE_4__*, i64)* @pltcl_process_SPI_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pltcl_process_SPI_result(i32* %0, i8* %1, i32* %2, i32 %3, %struct.TYPE_4__* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load i32, i32* @TCL_OK, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %108 [
    i32 131, label %20
    i32 135, label %20
    i32 137, label %20
    i32 130, label %20
    i32 128, label %25
    i32 133, label %25
    i32 132, label %33
    i32 134, label %33
    i32 136, label %33
    i32 129, label %33
  ]

20:                                               ; preds = %6, %6, %6, %6
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @Tcl_NewWideIntObj(i64 %22)
  %24 = call i32 @Tcl_SetObjResult(i32* %21, i32 %23)
  br label %114

25:                                               ; preds = %6, %6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @Tcl_NewIntObj(i32 0)
  %31 = call i32 @Tcl_SetObjResult(i32* %29, i32 %30)
  br label %114

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %6, %6, %6, %6, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %15, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %16, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load i64, i64* %12, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @pltcl_set_tuple_values(i32* %46, i8* %47, i64 0, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %42
  br label %98

54:                                               ; preds = %33
  store i64 0, i64* %17, align 8
  br label %55

55:                                               ; preds = %94, %54
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %17, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i64, i64* %17, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @pltcl_set_tuple_values(i32* %60, i8* %61, i64 %62, i32 %66, i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @Tcl_EvalObjEx(i32* %69, i32* %70, i32 0)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @TCL_OK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %94

76:                                               ; preds = %59
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @TCL_CONTINUE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %94

81:                                               ; preds = %76
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @TCL_RETURN, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @TCL_RETURN, align 4
  store i32 %86, i32* %13, align 4
  br label %97

87:                                               ; preds = %81
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @TCL_BREAK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @TCL_ERROR, align 4
  store i32 %93, i32* %13, align 4
  br label %97

94:                                               ; preds = %80, %75
  %95 = load i64, i64* %17, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %17, align 8
  br label %55

97:                                               ; preds = %92, %91, %85, %55
  br label %98

98:                                               ; preds = %97, %53
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @TCL_OK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32*, i32** %7, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @Tcl_NewWideIntObj(i64 %104)
  %106 = call i32 @Tcl_SetObjResult(i32* %103, i32 %105)
  br label %107

107:                                              ; preds = %102, %98
  br label %114

108:                                              ; preds = %6
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @SPI_result_code_string(i32 %110)
  %112 = call i32 @Tcl_AppendResult(i32* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %111, i32* null)
  %113 = load i32, i32* @TCL_ERROR, align 4
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %108, %107, %28, %20
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %116 = call i32 @SPI_freetuptable(%struct.TYPE_4__* %115)
  %117 = load i32, i32* %13, align 4
  ret i32 %117
}

declare dso_local i32 @Tcl_SetObjResult(i32*, i32) #1

declare dso_local i32 @Tcl_NewWideIntObj(i64) #1

declare dso_local i32 @Tcl_NewIntObj(i32) #1

declare dso_local i32 @pltcl_set_tuple_values(i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @Tcl_EvalObjEx(i32*, i32*, i32) #1

declare dso_local i32 @Tcl_AppendResult(i32*, i8*, i32, i32*) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
