; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_f.c_gtk_form_get_type.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_f.c_gtk_form_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i64, i64 }

@gtk_form_get_type.form_type = internal global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"GtkForm\00", align 1
@gtk_form_class_init = common dso_local global i64 0, align 8
@gtk_form_init = common dso_local global i64 0, align 8
@GTK_TYPE_CONTAINER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gtk_form_get_type() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i64, i64* @gtk_form_get_type.form_type, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %0
  %5 = call i32 @vim_memset(%struct.TYPE_4__* %1, i32 0, i32 32)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 4, i32* %8, align 4
  %9 = load i64, i64* @gtk_form_class_init, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i64 %9, i64* %10, align 8
  %11 = load i64, i64* @gtk_form_init, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i64 %11, i64* %12, align 8
  %13 = load i32, i32* @GTK_TYPE_CONTAINER, align 4
  %14 = call i64 @gtk_type_unique(i32 %13, %struct.TYPE_4__* %1)
  store i64 %14, i64* @gtk_form_get_type.form_type, align 8
  br label %15

15:                                               ; preds = %4, %0
  %16 = load i64, i64* @gtk_form_get_type.form_type, align 8
  ret i64 %16
}

declare dso_local i32 @vim_memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @gtk_type_unique(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
