; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___panel_print.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___panel_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i32, i32 }
%struct.TYPE_19__ = type { i64 }

@PANEL_TYPE_MENU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__panel_print(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, %struct.TYPE_25__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %10 = icmp ne %struct.TYPE_27__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %13 = icmp ne %struct.TYPE_25__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %11, %4
  br label %186

22:                                               ; preds = %14
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %25, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %22
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %22
  br label %186

45:                                               ; preds = %33
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @r_cons_canvas_fill(%struct.TYPE_27__* %50, i64 %56, i64 %62, i32 %68, i32 %74, i8 signext 32)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PANEL_TYPE_MENU, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %45
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @__menu_panel_print(%struct.TYPE_27__* %84, %struct.TYPE_25__* %85, i32 %90, i32 %95, i32 %101, i32 %107)
  br label %113

109:                                              ; preds = %45
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %112 = call i32 @__default_panel_print(%struct.TYPE_26__* %110, %struct.TYPE_25__* %111)
  br label %113

113:                                              ; preds = %109, %83
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %113
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @r_cons_canvas_box(%struct.TYPE_27__* %117, i64 %123, i64 %129, i32 %135, i32 %141, i32 %149)
  br label %186

151:                                              ; preds = %113
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @r_cons_canvas_box(%struct.TYPE_27__* %152, i64 %158, i64 %164, i32 %170, i32 %176, i32 %184)
  br label %186

186:                                              ; preds = %21, %44, %151, %116
  ret void
}

declare dso_local i32 @r_cons_canvas_fill(%struct.TYPE_27__*, i64, i64, i32, i32, i8 signext) #1

declare dso_local i32 @__menu_panel_print(%struct.TYPE_27__*, %struct.TYPE_25__*, i32, i32, i32, i32) #1

declare dso_local i32 @__default_panel_print(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @r_cons_canvas_box(%struct.TYPE_27__*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
