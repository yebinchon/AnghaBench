; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_check_per_op_flags.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_check_per_op_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_ITER_GLOBAL_FLAGS = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"A global iterator flag was passed as a per-operand flag to the iterator constructor\00", align 1
@NPY_ITER_READONLY = common dso_local global i32 0, align 4
@NPY_ITER_READWRITE = common dso_local global i32 0, align 4
@NPY_ITER_WRITEONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [98 x i8] c"Only one of the iterator flags READWRITE, READONLY, and WRITEONLY may be specified for an operand\00", align 1
@NPY_OP_ITFLAG_READ = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [91 x i8] c"None of the iterator flags READWRITE, READONLY, or WRITEONLY were specified for an operand\00", align 1
@NPY_ITER_COPY = common dso_local global i32 0, align 4
@NPY_ITER_UPDATEIFCOPY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"If an iterator operand is writeable, must use the flag UPDATEIFCOPY instead of COPY\00", align 1
@NPY_ITER_WRITEMASKED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [75 x i8] c"The iterator flag WRITEMASKED may only be used with READWRITE or WRITEONLY\00", align 1
@NPY_ITER_ARRAYMASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"The iterator flag WRITEMASKED may not be used together with ARRAYMASK\00", align 1
@NPY_OP_ITFLAG_WRITEMASKED = common dso_local global i32 0, align 4
@NPY_ITER_VIRTUAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"The iterator flag VIRTUAL should be be used together with READWRITE\00", align 1
@NPY_OP_ITFLAG_VIRTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @npyiter_check_per_op_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_check_per_op_flags(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NPY_ITER_GLOBAL_FLAGS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @PyExc_ValueError, align 4
  %12 = call i32 @PyErr_SetString(i32 %11, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NPY_ITER_READONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NPY_ITER_READWRITE, align 4
  %21 = load i32, i32* @NPY_ITER_WRITEONLY, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @PyExc_ValueError, align 4
  %27 = call i32 @PyErr_SetString(i32 %26, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

28:                                               ; preds = %18
  %29 = load i32, i32* @NPY_OP_ITFLAG_READ, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %62

31:                                               ; preds = %13
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NPY_ITER_READWRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @NPY_ITER_WRITEONLY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @PyExc_ValueError, align 4
  %43 = call i32 @PyErr_SetString(i32 %42, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

44:                                               ; preds = %36
  %45 = load i32, i32* @NPY_OP_ITFLAG_READ, align 4
  %46 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %61

49:                                               ; preds = %31
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @NPY_ITER_WRITEONLY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @PyExc_ValueError, align 4
  %59 = call i32 @PyErr_SetString(i32 %58, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %28
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @NPY_ITER_COPY, align 4
  %71 = load i32, i32* @NPY_ITER_UPDATEIFCOPY, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = load i32, i32* @NPY_ITER_COPY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @PyExc_ValueError, align 4
  %78 = call i32 @PyErr_SetString(i32 %77, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

79:                                               ; preds = %68, %62
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @NPY_ITER_WRITEMASKED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @PyExc_ValueError, align 4
  %92 = call i32 @PyErr_SetString(i32 %91, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

93:                                               ; preds = %84
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @NPY_ITER_ARRAYMASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @PyExc_ValueError, align 4
  %100 = call i32 @PyErr_SetString(i32 %99, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

101:                                              ; preds = %93
  %102 = load i32, i32* @NPY_OP_ITFLAG_WRITEMASKED, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %79
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @NPY_ITER_VIRTUAL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @NPY_ITER_READWRITE, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @PyExc_ValueError, align 4
  %118 = call i32 @PyErr_SetString(i32 %117, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

119:                                              ; preds = %111
  %120 = load i32, i32* @NPY_OP_ITFLAG_VIRTUAL, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %106
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %116, %98, %90, %76, %57, %41, %25, %10
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
