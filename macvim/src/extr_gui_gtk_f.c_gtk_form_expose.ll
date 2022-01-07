; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_f.c_gtk_form_expose.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_f.c_gtk_form_expose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_18__*)* @gtk_form_expose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtk_form_expose(%struct.TYPE_15__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = call i32 @GTK_IS_FORM(%struct.TYPE_15__* %11)
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @g_return_val_if_fail(i32 %12, i32 %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call %struct.TYPE_17__* @GTK_FORM(%struct.TYPE_15__* %15)
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %7, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %6, align 8
  br label %30

30:                                               ; preds = %79, %26
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = icmp ne %struct.TYPE_19__* %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %30
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %8, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %9, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = call i64 @GTK_WIDGET_DRAWABLE(%struct.TYPE_15__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %33
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = call i64 @GTK_WIDGET_NO_WINDOW(%struct.TYPE_15__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %47
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = bitcast %struct.TYPE_18__* %10 to i8*
  %58 = bitcast %struct.TYPE_18__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gtk_widget_region_intersect(%struct.TYPE_15__* %59, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gdk_region_empty(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %73 = call i32 @gdk_region_get_clipbox(i32 %71, i32* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = bitcast %struct.TYPE_18__* %10 to i32*
  %76 = call i32 @gtk_widget_send_expose(%struct.TYPE_15__* %74, i32* %75)
  br label %77

77:                                               ; preds = %69, %55
  br label %78

78:                                               ; preds = %77, %47, %43, %33
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %6, align 8
  br label %30

83:                                               ; preds = %30
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %24
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local i32 @GTK_IS_FORM(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @GTK_FORM(%struct.TYPE_15__*) #1

declare dso_local i64 @GTK_WIDGET_DRAWABLE(%struct.TYPE_15__*) #1

declare dso_local i64 @GTK_WIDGET_NO_WINDOW(%struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gtk_widget_region_intersect(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @gdk_region_empty(i32) #1

declare dso_local i32 @gdk_region_get_clipbox(i32, i32*) #1

declare dso_local i32 @gtk_widget_send_expose(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
