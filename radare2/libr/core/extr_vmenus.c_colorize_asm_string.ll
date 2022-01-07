; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_vmenus.c_colorize_asm_string.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_vmenus.c_colorize_asm_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i32 }

@R_PRINT_FLAGS_COLOR = common dso_local global i32 0, align 4
@R_ANAL_FCN_TYPE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s||%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, i8*, i32, i32)* @colorize_asm_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @colorize_asm_string(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %12, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @R_PRINT_FLAGS_COLOR, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %14, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %15, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @R_ANAL_FCN_TYPE_NULL, align 4
  %52 = call %struct.TYPE_14__* @r_anal_get_fcn_in(i32 %49, i32 %50, i32 %51)
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %16, align 8
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %4
  %56 = load i8*, i8** %12, align 8
  %57 = call i8* @strdup(i8* %56)
  store i8* %57, i8** %5, align 8
  br label %152

58:                                               ; preds = %4
  %59 = load i8*, i8** %12, align 8
  %60 = call i8* @strstr(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %121

63:                                               ; preds = %58
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i8* @r_str_ndup(i8* %64, i32 %70)
  store i8* %71, i8** %17, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = call i8* @strdup(i8* %73)
  store i8* %74, i8** %18, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %82 = icmp ne %struct.TYPE_14__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %63
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  br label %88

87:                                               ; preds = %63
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ %86, %83 ], [ 0, %87 ]
  %90 = call i8* @r_print_colorize_opcode(%struct.TYPE_15__* %77, i8* %78, i8* %79, i8* %80, i32 0, i32 %89)
  store i8* %90, i8** %19, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load i8*, i8** %18, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %98 = icmp ne %struct.TYPE_14__* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  br label %104

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i32 [ %102, %99 ], [ 0, %103 ]
  %106 = call i8* @r_print_colorize_opcode(%struct.TYPE_15__* %93, i8* %94, i8* %95, i8* %96, i32 0, i32 %105)
  store i8* %106, i8** %20, align 8
  %107 = load i8*, i8** %19, align 8
  %108 = call i32 @r_str_get2(i8* %107)
  %109 = load i8*, i8** %20, align 8
  %110 = call i32 @r_str_get2(i8* %109)
  %111 = call i8* @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %110)
  store i8* %111, i8** %21, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i8*, i8** %20, align 8
  %115 = call i32 @free(i8* %114)
  %116 = load i8*, i8** %17, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load i8*, i8** %18, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %21, align 8
  store i8* %120, i8** %5, align 8
  br label %152

121:                                              ; preds = %58
  %122 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %122, i8** %22, align 8
  %123 = load i8*, i8** %22, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i8* @r_print_color_op_type(%struct.TYPE_15__* %126, i32 %127)
  %129 = call i8* @r_str_append(i8* %123, i8* %128)
  store i8* %129, i8** %22, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %137 = icmp ne %struct.TYPE_14__* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %121
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  br label %143

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142, %138
  %144 = phi i32 [ %141, %138 ], [ 0, %142 ]
  %145 = call i8* @r_print_colorize_opcode(%struct.TYPE_15__* %132, i8* %133, i8* %134, i8* %135, i32 0, i32 %144)
  store i8* %145, i8** %10, align 8
  %146 = load i8*, i8** %22, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = call i8* @r_str_append(i8* %146, i8* %147)
  store i8* %148, i8** %22, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i8*, i8** %22, align 8
  store i8* %151, i8** %5, align 8
  br label %152

152:                                              ; preds = %143, %104, %55
  %153 = load i8*, i8** %5, align 8
  ret i8* %153
}

declare dso_local %struct.TYPE_14__* @r_anal_get_fcn_in(i32, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @r_str_ndup(i8*, i32) #1

declare dso_local i8* @r_print_colorize_opcode(%struct.TYPE_15__*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i8* @r_str_newf(i8*, i32, i32) #1

declare dso_local i32 @r_str_get2(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_str_append(i8*, i8*) #1

declare dso_local i8* @r_print_color_op_type(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
