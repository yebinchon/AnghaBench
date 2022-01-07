; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_visual.c___core_visual_gogo.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_visual.c___core_visual_gogo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (i32*)* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"hex.cols\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @__core_visual_gogo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__core_visual_gogo(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %144 [
    i32 103, label %15
    i32 71, label %71
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %15
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_14__* @r_io_map_get(%struct.TYPE_16__* %25, i32 %28)
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %8, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %22
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @ls_tail(i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32*, i32** %9, align 8
  %43 = call %struct.TYPE_14__* @ls_iter_get(i32* %42)
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %8, align 8
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @r_itv_begin(i32 %52)
  %54 = call i32 @r_core_seek(%struct.TYPE_15__* %49, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %48, %45
  br label %59

56:                                               ; preds = %15
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = call i32 @r_core_seek(%struct.TYPE_15__* %57, i32 0, i32 1)
  br label %59

59:                                               ; preds = %56, %55
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = call i32 @r_print_get_cursor(%struct.TYPE_13__* %68)
  %70 = call i32 @r_io_sundo_push(%struct.TYPE_16__* %62, i32 %65, i32 %69)
  store i32 1, i32* %3, align 4
  br label %145

71:                                               ; preds = %2
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.TYPE_14__* @r_io_map_get(%struct.TYPE_16__* %74, i32 %77)
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %6, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = icmp ne %struct.TYPE_14__* %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %71
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @ls_head(i32 %86)
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32*, i32** %10, align 8
  %92 = call %struct.TYPE_14__* @ls_iter_get(i32* %91)
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %6, align 8
  br label %93

93:                                               ; preds = %90, %81
  br label %94

94:                                               ; preds = %93, %71
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = icmp ne %struct.TYPE_14__* %95, null
  br i1 %96, label %97, label %128

97:                                               ; preds = %94
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %11, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32 (i32*)*, i32 (i32*)** %103, align 8
  %105 = icmp ne i32 (i32*)* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  br label %144

107:                                              ; preds = %97
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32 (i32*)*, i32 (i32*)** %110, align 8
  %112 = call i32 %111(i32* %12)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @r_config_get_i(i32 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %116, i32* %13, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @r_itv_end(i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = sub nsw i32 %122, 2
  %124 = load i32, i32* %13, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sub nsw i32 %121, %125
  %127 = call i32 @r_core_seek(%struct.TYPE_15__* %117, i32 %126, i32 1)
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %107, %94
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = call i32 @r_print_get_cursor(%struct.TYPE_13__* %140)
  %142 = call i32 @r_io_sundo_push(%struct.TYPE_16__* %134, i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %131, %128
  store i32 1, i32* %3, align 4
  br label %145

144:                                              ; preds = %2, %106
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %143, %59
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_14__* @r_io_map_get(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @ls_tail(i32) #1

declare dso_local %struct.TYPE_14__* @ls_iter_get(i32*) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @r_itv_begin(i32) #1

declare dso_local i32 @r_io_sundo_push(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @r_print_get_cursor(%struct.TYPE_13__*) #1

declare dso_local i32* @ls_head(i32) #1

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_itv_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
