; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_pCd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_pCd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { double }

@.str = private unnamed_addr constant [9 x i8] c"hex.cols\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"asm.minicols\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"asm.offset\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"asm.bytes\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"scr.color\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"pid %d @i:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*)* @cmd_pCd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_pCd(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
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
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %20 = call i32 @r_cons_get_size(i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call double @r_config_get_i(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = fmul double %24, 2.500000e+00
  %26 = fptosi double %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 16, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %10, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @r_num_math(i32 %41, i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call double @r_config_get_i(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %48 = fptosi double %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @r_config_get(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i8* @strdup(i32 %52)
  store i8* %53, i8** %14, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @r_config_get(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i8* @strdup(i32 %57)
  store i8* %58, i8** %15, align 8
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %30
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @r_config_set(i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %30
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @r_config_set(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* %12, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %66
  %77 = call i32 (...) @r_cons_push()
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call %struct.TYPE_13__* @r_cons_canvas_new(i32 %78, i32 %79)
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %16, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %17, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call double @r_config_get_i(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store double %87, double* %89, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %91, 32
  %93 = call i32 @r_core_block_size(%struct.TYPE_12__* %90, i32 %92)
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %121, %76
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sdiv i32 %101, %102
  %104 = mul nsw i32 %100, %103
  %105 = call i32 @r_cons_canvas_gotoxy(%struct.TYPE_13__* %99, i32 %104, i32 0)
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %107, %108
  %110 = call i8* @r_str_newf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %109)
  store i8* %110, i8** %18, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = call i8* @r_core_cmd_str(%struct.TYPE_12__* %111, i8* %112)
  store i8* %113, i8** %19, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %115 = load i8*, i8** %19, align 8
  %116 = call i32 @r_cons_canvas_write(%struct.TYPE_13__* %114, i8* %115)
  %117 = load i8*, i8** %18, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i8*, i8** %19, align 8
  %120 = call i32 @free(i8* %119)
  br label %121

121:                                              ; preds = %98
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %94

124:                                              ; preds = %94
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @r_core_block_size(%struct.TYPE_12__* %125, i32 %126)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @r_core_seek(%struct.TYPE_12__* %128, i32 %129, i32 1)
  %131 = call i32 (...) @r_cons_pop()
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %133 = call i32 @r_cons_canvas_print(%struct.TYPE_13__* %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %135 = call i32 @r_cons_canvas_free(%struct.TYPE_13__* %134)
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %124
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %14, align 8
  %143 = call i32 @r_config_set(i32 %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 @r_config_set(i32 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %138, %124
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %15, align 8
  %154 = call i32 @r_config_set(i32 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %153)
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 @free(i8* %155)
  %157 = load i8*, i8** %15, align 8
  %158 = call i32 @free(i8* %157)
  ret void
}

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local double @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_num_math(i32, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @r_config_get(i32, i8*) #1

declare dso_local i32 @r_config_set(i32, i8*, i8*) #1

declare dso_local i32 @r_cons_push(...) #1

declare dso_local %struct.TYPE_13__* @r_cons_canvas_new(i32, i32) #1

declare dso_local i32 @r_core_block_size(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @r_cons_canvas_gotoxy(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @r_str_newf(i8*, i32, i32) #1

declare dso_local i8* @r_core_cmd_str(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @r_cons_canvas_write(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @r_cons_pop(...) #1

declare dso_local i32 @r_cons_canvas_print(%struct.TYPE_13__*) #1

declare dso_local i32 @r_cons_canvas_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
