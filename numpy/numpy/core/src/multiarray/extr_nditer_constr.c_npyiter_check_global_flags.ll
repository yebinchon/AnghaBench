; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_check_global_flags.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_check_global_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_ITER_PER_OP_FLAGS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"A per-operand flag was passed as a global flag to the iterator constructor\00", align 1
@NPY_ITER_C_INDEX = common dso_local global i32 0, align 4
@NPY_ITER_F_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Iterator flags C_INDEX and F_INDEX cannot both be specified\00", align 1
@NPY_ITFLAG_HASINDEX = common dso_local global i32 0, align 4
@NPY_ITER_MULTI_INDEX = common dso_local global i32 0, align 4
@NPY_ITFLAG_HASMULTIINDEX = common dso_local global i32 0, align 4
@NPY_ITER_EXTERNAL_LOOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"Iterator flag EXTERNAL_LOOP cannot be used if an index or multi-index is being tracked\00", align 1
@NPY_ITFLAG_EXLOOP = common dso_local global i32 0, align 4
@NPY_ITER_RANGED = common dso_local global i32 0, align 4
@NPY_ITFLAG_RANGE = common dso_local global i32 0, align 4
@NPY_ITER_BUFFERED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [96 x i8] c"Iterator flag RANGED cannot be used with the flag EXTERNAL_LOOP unless BUFFERED is also enabled\00", align 1
@NPY_ITFLAG_BUFFER = common dso_local global i32 0, align 4
@NPY_ITER_GROWINNER = common dso_local global i32 0, align 4
@NPY_ITFLAG_GROWINNER = common dso_local global i32 0, align 4
@NPY_ITER_DELAY_BUFALLOC = common dso_local global i32 0, align 4
@NPY_ITFLAG_DELAYBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @npyiter_check_global_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_check_global_flags(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NPY_ITER_PER_OP_FLAGS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @PyExc_ValueError, align 4
  %12 = call i32 @PyErr_SetString(i32 %11, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NPY_ITER_C_INDEX, align 4
  %16 = load i32, i32* @NPY_ITER_F_INDEX, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NPY_ITER_C_INDEX, align 4
  %23 = load i32, i32* @NPY_ITER_F_INDEX, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = load i32, i32* @NPY_ITER_C_INDEX, align 4
  %27 = load i32, i32* @NPY_ITER_F_INDEX, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @PyExc_ValueError, align 4
  %32 = call i32 @PyErr_SetString(i32 %31, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

33:                                               ; preds = %20
  %34 = load i32, i32* @NPY_ITFLAG_HASINDEX, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %13
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @NPY_ITER_MULTI_INDEX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @NPY_ITFLAG_HASMULTIINDEX, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @NPY_ITER_EXTERNAL_LOOP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NPY_ITFLAG_HASINDEX, align 4
  %57 = load i32, i32* @NPY_ITFLAG_HASMULTIINDEX, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @PyExc_ValueError, align 4
  %63 = call i32 @PyErr_SetString(i32 %62, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

64:                                               ; preds = %53
  %65 = load i32, i32* @NPY_ITFLAG_EXLOOP, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %48
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @NPY_ITER_RANGED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i32, i32* @NPY_ITFLAG_RANGE, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @NPY_ITER_EXTERNAL_LOOP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @NPY_ITER_BUFFERED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @PyExc_ValueError, align 4
  %90 = call i32 @PyErr_SetString(i32 %89, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

91:                                               ; preds = %83, %74
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @NPY_ITER_BUFFERED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %92
  %98 = load i32, i32* @NPY_ITFLAG_BUFFER, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @NPY_ITER_GROWINNER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load i32, i32* @NPY_ITFLAG_GROWINNER, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %97
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @NPY_ITER_DELAY_BUFALLOC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* @NPY_ITFLAG_DELAYBUF, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %121, %92
  store i32 1, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %88, %61, %30, %10
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
