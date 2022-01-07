; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_f.c_gtk_form_size_allocate.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_f.c_gtk_form_size_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_15__*)* @gtk_form_size_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtk_form_size_allocate(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = call i32 @GTK_IS_FORM(%struct.TYPE_13__* %9)
  %11 = call i32 @g_return_if_fail(i32 %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %20
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %135

48:                                               ; preds = %38, %29, %20, %2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br label %66

66:                                               ; preds = %57, %48
  %67 = phi i1 [ true, %48 ], [ %65, %57 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %7, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = call %struct.TYPE_14__* @GTK_FORM(%struct.TYPE_13__* %69)
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %66
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %5, align 8
  br label %77

77:                                               ; preds = %80, %73
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = icmp ne %struct.TYPE_16__* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %8, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @gtk_form_position_child(%struct.TYPE_14__* %84, i32* %85, i32 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %5, align 8
  br label %77

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %66
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = call i64 @GTK_WIDGET_REALIZED(%struct.TYPE_13__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %92
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @gdk_window_move_resize(i32 %99, i64 %102, i64 %105, i64 %108, i64 %111)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = call %struct.TYPE_14__* @GTK_FORM(%struct.TYPE_13__* %113)
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @gdk_window_move_resize(i32 %116, i64 0, i64 0, i64 %119, i64 %122)
  br label %124

124:                                              ; preds = %96, %92
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = bitcast %struct.TYPE_15__* %126 to i8*
  %129 = bitcast %struct.TYPE_15__* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 32, i1 false)
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %134 = call i32 @gtk_form_send_configure(%struct.TYPE_14__* %133)
  br label %135

135:                                              ; preds = %47, %132, %124
  ret void
}

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @GTK_IS_FORM(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @GTK_FORM(%struct.TYPE_13__*) #1

declare dso_local i32 @gtk_form_position_child(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i64 @GTK_WIDGET_REALIZED(%struct.TYPE_13__*) #1

declare dso_local i32 @gdk_window_move_resize(i32, i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gtk_form_send_configure(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
