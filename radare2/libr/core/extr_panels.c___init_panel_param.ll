; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___init_panel_param.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___init_panel_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__*, i32, %struct.TYPE_21__*, i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__*, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_23__ = type { i64, i8*, i8*, i32*, i32*, i64, i32 }

@PANEL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PANEL_CMD_STACK = common dso_local global i32 0, align 4
@R_REG_NAME_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"stack.delta\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__init_panel_param(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %9, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %10, align 8
  %19 = load i32, i32* @PANEL_TYPE_DEFAULT, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @__set_panel_addr(%struct.TYPE_25__* %26, %struct.TYPE_24__* %27, i64 %30)
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %36 = call i32 @__set_cmd_str_cache(%struct.TYPE_25__* %34, %struct.TYPE_24__* %35, i32* null)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %38 = call i32 @__set_read_only(%struct.TYPE_24__* %37, i32* null)
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %4
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @r_str_dup(i8* %48, i8* %49)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @r_str_dup(i8* %58, i8* %59)
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %70

63:                                               ; preds = %45
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @r_str_dup(i8* %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %63, %55
  br label %103

71:                                               ; preds = %4
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i8* @r_str_dup(i8* %77, i8* %78)
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i8* @r_str_dup(i8* %84, i8* %85)
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %102

89:                                               ; preds = %71
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @r_str_dup(i8* %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @r_str_dup(i8* %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %89, %74
  br label %103

103:                                              ; preds = %102, %70
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %105 = call i32 @__set_pcb(%struct.TYPE_24__* %104)
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @R_STR_ISNOTEMPTY(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %152

111:                                              ; preds = %103
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %114 = call i32 @__set_dcb(%struct.TYPE_25__* %112, %struct.TYPE_24__* %113)
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %119 = call i32 @__set_rcb(%struct.TYPE_26__* %117, %struct.TYPE_24__* %118)
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = load i32, i32* @PANEL_CMD_STACK, align 4
  %122 = call i64 @__check_panel_type(%struct.TYPE_24__* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %111
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @R_REG_NAME_SP, align 4
  %131 = call i8* @r_reg_get_name(i32 %129, i32 %130)
  store i8* %131, i8** %11, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %11, align 8
  %138 = call i64 @r_reg_getv(i32 %136, i8* %137)
  store i64 %138, i64* %12, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @r_config_get_i(i32 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %149 = sub nsw i64 %144, %148
  %150 = call i32 @__set_panel_addr(%struct.TYPE_25__* %142, %struct.TYPE_24__* %143, i64 %149)
  br label %151

151:                                              ; preds = %124, %111
  br label %152

152:                                              ; preds = %151, %103
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %161 = call i32 @__cache_white_list(%struct.TYPE_25__* %159, %struct.TYPE_24__* %160)
  ret void
}

declare dso_local i32 @__set_panel_addr(%struct.TYPE_25__*, %struct.TYPE_24__*, i64) #1

declare dso_local i32 @__set_cmd_str_cache(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @__set_read_only(%struct.TYPE_24__*, i32*) #1

declare dso_local i8* @r_str_dup(i8*, i8*) #1

declare dso_local i32 @__set_pcb(%struct.TYPE_24__*) #1

declare dso_local i64 @R_STR_ISNOTEMPTY(i8*) #1

declare dso_local i32 @__set_dcb(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @__set_rcb(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i64 @__check_panel_type(%struct.TYPE_24__*, i32) #1

declare dso_local i8* @r_reg_get_name(i32, i32) #1

declare dso_local i64 @r_reg_getv(i32, i8*) #1

declare dso_local i64 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @__cache_white_list(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
