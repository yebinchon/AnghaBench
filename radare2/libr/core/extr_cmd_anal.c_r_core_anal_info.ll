; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_r_core_anal_info.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_r_core_anal_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"str.*\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sym.*\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sym.imp.*\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fcns\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"xrefs\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"calls\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"imports\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"covrage\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"codesz\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"fcns    %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"xrefs   %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"calls   %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"strings %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"symbols %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"imports %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"covrage %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"codesz  %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"percent %d%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @r_core_anal_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_core_anal_info(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @r_list_length(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @r_flag_count(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @r_flag_count(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @r_flag_count(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i32 @compute_code(%struct.TYPE_7__* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = call i32 @compute_coverage(%struct.TYPE_7__* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @compute_calls(%struct.TYPE_7__* %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @r_anal_xrefs_count(%struct.TYPE_8__* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %2
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %46, 100
  %48 = load i32, i32* %9, align 4
  %49 = sdiv i32 %47, %48
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i32 [ %49, %45 ], [ 0, %50 ]
  store i32 %52, i32* %13, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 106
  br i1 %56, label %57, label %99

57:                                               ; preds = %51
  %58 = call i32* (...) @pj_new()
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %118

62:                                               ; preds = %57
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @pj_o(i32* %63)
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @pj_ki(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @pj_ki(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @pj_ki(i32* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @pj_ki(i32* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @pj_ki(i32* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @pj_ki(i32* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @pj_ki(i32* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @pj_ki(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @pj_ki(i32* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @pj_end(i32* %92)
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @pj_string(i32* %94)
  %96 = call i32 @r_cons_println(i32 %95)
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @pj_free(i32* %97)
  br label %118

99:                                               ; preds = %51
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @r_cons_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @r_cons_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @r_cons_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @r_cons_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @r_cons_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @r_cons_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @r_cons_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @r_cons_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @r_cons_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %61, %99, %62
  ret void
}

declare dso_local i32 @r_list_length(i32) #1

declare dso_local i32 @r_flag_count(i32, i8*) #1

declare dso_local i32 @compute_code(%struct.TYPE_7__*) #1

declare dso_local i32 @compute_coverage(%struct.TYPE_7__*) #1

declare dso_local i32 @compute_calls(%struct.TYPE_7__*) #1

declare dso_local i32 @r_anal_xrefs_count(%struct.TYPE_8__*) #1

declare dso_local i32* @pj_new(...) #1

declare dso_local i32 @pj_o(i32*) #1

declare dso_local i32 @pj_ki(i32*, i8*, i32) #1

declare dso_local i32 @pj_end(i32*) #1

declare dso_local i32 @r_cons_println(i32) #1

declare dso_local i32 @pj_string(i32*) #1

declare dso_local i32 @pj_free(i32*) #1

declare dso_local i32 @r_cons_printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
