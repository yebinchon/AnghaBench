; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_type.c_print_typelist_json_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_type.c_print_typelist_json_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"type.%s.size\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"type.%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @print_typelist_json_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_typelist_json_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  %16 = call i32* (...) @pj_new()
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @pj_o(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @r_str_newf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @sdb_querys(i32* %26, i32* null, i32 -1, i8* %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @r_str_newf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i8* %30, i8** %12, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i8* @sdb_querys(i32* %31, i32* null, i32 -1, i8* %32)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @r_str_trim(i8* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @pj_ks(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @atoi(i8* %43)
  br label %46

45:                                               ; preds = %3
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ -1, %45 ]
  %48 = call i32 @pj_ki(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @pj_ks(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @pj_end(i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @pj_string(i32* %54)
  %56 = call i32 @r_cons_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @pj_free(i32* %57)
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @free(i8* %65)
  ret i32 1
}

declare dso_local i32* @pj_new(...) #1

declare dso_local i32 @pj_o(i32*) #1

declare dso_local i8* @r_str_newf(i8*, i8*) #1

declare dso_local i8* @sdb_querys(i32*, i32*, i32, i8*) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i32 @pj_ks(i32*, i8*, i8*) #1

declare dso_local i32 @pj_ki(i32*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

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
