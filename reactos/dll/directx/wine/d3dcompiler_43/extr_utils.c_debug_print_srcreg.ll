; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_srcreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_srcreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_reg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"-%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s%s_bias%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-%s%s_bias%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s%s_bx2%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"-%s%s_bx2%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"1 - %s%s%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s%s_x2%s\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"-%s%s_x2%s\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s%s_dz%s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s%s_dw%s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%s%s_abs%s\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"-%s%s_abs%s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"!%s%s%s\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Unknown modifier\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debug_print_srcreg(%struct.shader_reg* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.shader_reg*, align 8
  store %struct.shader_reg* %0, %struct.shader_reg** %3, align 8
  %4 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %5 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %161 [
    i32 133, label %7
    i32 134, label %18
    i32 139, label %29
    i32 138, label %40
    i32 131, label %51
    i32 130, label %62
    i32 137, label %73
    i32 129, label %84
    i32 128, label %95
    i32 135, label %106
    i32 136, label %117
    i32 141, label %128
    i32 140, label %139
    i32 132, label %150
  ]

7:                                                ; preds = %1
  %8 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %9 = call i32 @get_regname(%struct.shader_reg* %8)
  %10 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %11 = call i32 @debug_print_relarg(%struct.shader_reg* %10)
  %12 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %13 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debug_print_swizzle(i32 %15)
  %17 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11, i32 %16)
  store i8* %17, i8** %2, align 8
  br label %162

18:                                               ; preds = %1
  %19 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %20 = call i32 @get_regname(%struct.shader_reg* %19)
  %21 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %22 = call i32 @debug_print_relarg(%struct.shader_reg* %21)
  %23 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %24 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @debug_print_swizzle(i32 %26)
  %28 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %22, i32 %27)
  store i8* %28, i8** %2, align 8
  br label %162

29:                                               ; preds = %1
  %30 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %31 = call i32 @get_regname(%struct.shader_reg* %30)
  %32 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %33 = call i32 @debug_print_relarg(%struct.shader_reg* %32)
  %34 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %35 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @debug_print_swizzle(i32 %37)
  %39 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %33, i32 %38)
  store i8* %39, i8** %2, align 8
  br label %162

40:                                               ; preds = %1
  %41 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %42 = call i32 @get_regname(%struct.shader_reg* %41)
  %43 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %44 = call i32 @debug_print_relarg(%struct.shader_reg* %43)
  %45 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %46 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @debug_print_swizzle(i32 %48)
  %50 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %44, i32 %49)
  store i8* %50, i8** %2, align 8
  br label %162

51:                                               ; preds = %1
  %52 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %53 = call i32 @get_regname(%struct.shader_reg* %52)
  %54 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %55 = call i32 @debug_print_relarg(%struct.shader_reg* %54)
  %56 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %57 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @debug_print_swizzle(i32 %59)
  %61 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %55, i32 %60)
  store i8* %61, i8** %2, align 8
  br label %162

62:                                               ; preds = %1
  %63 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %64 = call i32 @get_regname(%struct.shader_reg* %63)
  %65 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %66 = call i32 @debug_print_relarg(%struct.shader_reg* %65)
  %67 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %68 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @debug_print_swizzle(i32 %70)
  %72 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %66, i32 %71)
  store i8* %72, i8** %2, align 8
  br label %162

73:                                               ; preds = %1
  %74 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %75 = call i32 @get_regname(%struct.shader_reg* %74)
  %76 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %77 = call i32 @debug_print_relarg(%struct.shader_reg* %76)
  %78 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %79 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @debug_print_swizzle(i32 %81)
  %83 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %77, i32 %82)
  store i8* %83, i8** %2, align 8
  br label %162

84:                                               ; preds = %1
  %85 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %86 = call i32 @get_regname(%struct.shader_reg* %85)
  %87 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %88 = call i32 @debug_print_relarg(%struct.shader_reg* %87)
  %89 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %90 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @debug_print_swizzle(i32 %92)
  %94 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %86, i32 %88, i32 %93)
  store i8* %94, i8** %2, align 8
  br label %162

95:                                               ; preds = %1
  %96 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %97 = call i32 @get_regname(%struct.shader_reg* %96)
  %98 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %99 = call i32 @debug_print_relarg(%struct.shader_reg* %98)
  %100 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %101 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @debug_print_swizzle(i32 %103)
  %105 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %97, i32 %99, i32 %104)
  store i8* %105, i8** %2, align 8
  br label %162

106:                                              ; preds = %1
  %107 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %108 = call i32 @get_regname(%struct.shader_reg* %107)
  %109 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %110 = call i32 @debug_print_relarg(%struct.shader_reg* %109)
  %111 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %112 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @debug_print_swizzle(i32 %114)
  %116 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %108, i32 %110, i32 %115)
  store i8* %116, i8** %2, align 8
  br label %162

117:                                              ; preds = %1
  %118 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %119 = call i32 @get_regname(%struct.shader_reg* %118)
  %120 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %121 = call i32 @debug_print_relarg(%struct.shader_reg* %120)
  %122 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %123 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @debug_print_swizzle(i32 %125)
  %127 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %119, i32 %121, i32 %126)
  store i8* %127, i8** %2, align 8
  br label %162

128:                                              ; preds = %1
  %129 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %130 = call i32 @get_regname(%struct.shader_reg* %129)
  %131 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %132 = call i32 @debug_print_relarg(%struct.shader_reg* %131)
  %133 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %134 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @debug_print_swizzle(i32 %136)
  %138 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %130, i32 %132, i32 %137)
  store i8* %138, i8** %2, align 8
  br label %162

139:                                              ; preds = %1
  %140 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %141 = call i32 @get_regname(%struct.shader_reg* %140)
  %142 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %143 = call i32 @debug_print_relarg(%struct.shader_reg* %142)
  %144 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %145 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @debug_print_swizzle(i32 %147)
  %149 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %141, i32 %143, i32 %148)
  store i8* %149, i8** %2, align 8
  br label %162

150:                                              ; preds = %1
  %151 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %152 = call i32 @get_regname(%struct.shader_reg* %151)
  %153 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %154 = call i32 @debug_print_relarg(%struct.shader_reg* %153)
  %155 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %156 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @debug_print_swizzle(i32 %158)
  %160 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %152, i32 %154, i32 %159)
  store i8* %160, i8** %2, align 8
  br label %162

161:                                              ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %162

162:                                              ; preds = %161, %150, %139, %128, %117, %106, %95, %84, %73, %62, %51, %40, %29, %18, %7
  %163 = load i8*, i8** %2, align 8
  ret i8* %163
}

declare dso_local i8* @wine_dbg_sprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @get_regname(%struct.shader_reg*) #1

declare dso_local i32 @debug_print_relarg(%struct.shader_reg*) #1

declare dso_local i32 @debug_print_swizzle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
