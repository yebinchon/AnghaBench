; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_carg.c_set_fcn_args_info.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_carg.c_set_fcn_args_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32, i64, i32 }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"Missing type for function argument (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"type.%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"type.%s.size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, i8*, i8*, i32)* @set_fcn_args_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fcn_args_info(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16, %5
  br label %96

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @r_type_func_args_name(i32* %27, i8* %28, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @r_type_func_args_type(i32* %33, i8* %34, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %23
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %23
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %96

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 6)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 6
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  br label %70

64:                                               ; preds = %51
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  store i8* %74, i8** %12, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @sdb_const_get(i32* %75, i8* %76, i32 0)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @sdb_fmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  store i8* %83, i8** %13, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @sdb_num_get(i32* %84, i8* %85, i32 0)
  %87 = sdiv i32 %86, 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @r_anal_cc_arg(%struct.TYPE_7__* %90, i8* %91, i32 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %70, %48, %22
  ret void
}

declare dso_local i32 @r_type_func_args_name(i32*, i8*, i32) #1

declare dso_local i64 @r_type_func_args_type(i32*, i8*, i32) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i64, i32) #1

declare dso_local i8* @sdb_fmt(i8*, i64) #1

declare dso_local i32 @sdb_const_get(i32*, i8*, i32) #1

declare dso_local i32 @sdb_num_get(i32*, i8*, i32) #1

declare dso_local i32 @r_anal_cc_arg(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
