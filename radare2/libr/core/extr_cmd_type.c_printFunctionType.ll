; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_type.c_printFunctionType.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_type.c_printFunctionType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"func.%s.args\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"func.%s.ret\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"func.%s.arg.%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @printFunctionType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printFunctionType(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = call i32* (...) @pj_new()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %102

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @pj_o(i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i8* @sdb_querys(i32* %25, i32* null, i32 -1, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @r_str_trim_ro(i8* %29)
  store i8* %30, i8** %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = call i32 @sdb_num_get(i32* %31, i32 %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @pj_ks(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = call i8* @sdb_const_get(i32* %39, i32 %41, i32 0)
  %43 = call i32 @pj_ks(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @pj_k(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @pj_a(i32* %46)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %87, %22
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %54, i32 %55)
  %57 = call i8* @sdb_get(i32* %53, i32 %56, i32 0)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %87

61:                                               ; preds = %52
  %62 = load i8*, i8** %11, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 44)
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %12, align 8
  store i8 0, i8* %67, align 1
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @pj_o(i32* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @pj_ks(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @pj_ks(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  br label %84

81:                                               ; preds = %69
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @pj_ks(i32* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @pj_end(i32* %85)
  br label %87

87:                                               ; preds = %84, %60
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %48

90:                                               ; preds = %48
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @pj_end(i32* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @pj_end(i32* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @pj_string(i32* %95)
  %97 = call i32 @r_cons_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @pj_free(i32* %98)
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @free(i8* %100)
  br label %102

102:                                              ; preds = %90, %21
  ret void
}

declare dso_local i32* @pj_new(...) #1

declare dso_local i32 @pj_o(i32*) #1

declare dso_local i8* @sdb_querys(i32*, i32*, i32, i32) #1

declare dso_local i32 @sdb_fmt(i8*, i8*, ...) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @sdb_num_get(i32*, i32, i32) #1

declare dso_local i32 @pj_ks(i32*, i8*, i8*) #1

declare dso_local i8* @sdb_const_get(i32*, i32, i32) #1

declare dso_local i32 @pj_k(i32*, i8*) #1

declare dso_local i32 @pj_a(i32*) #1

declare dso_local i8* @sdb_get(i32*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pj_end(i32*) #1

declare dso_local i32 @r_cons_printf(i8*, i32) #1

declare dso_local i32 @pj_string(i32*) #1

declare dso_local i32 @pj_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
