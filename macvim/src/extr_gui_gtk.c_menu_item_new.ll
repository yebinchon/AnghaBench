; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk.c_menu_item_new.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk.c_menu_item_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@p_wak = common dso_local global i8* null, align 8
@NUL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @menu_item_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_item_new(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 (...) @gtk_menu_item_new()
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32* @gtk_hbox_new(i32 %11, i32 20)
  store i32* %12, i32** %5, align 8
  %13 = load i8*, i8** @p_wak, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 110
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @GTK_IS_MENU_BAR(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i1 [ true, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32* @translate_mnemonic_tag(i32 %28, i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = call i32 @gtk_label_new_with_mnemonic(i8* %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @vim_free(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @GTK_BOX(i32* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @gtk_box_pack_start(i32 %39, i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %73

50:                                               ; preds = %23
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NUL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %50
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = call i32* @CONVERT_TO_UTF8(i64* %61)
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @GTK_BOX(i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 @gtk_label_new(i8* %66)
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i32 @gtk_box_pack_end(i32 %64, i32 %67, i32 %68, i32 %69, i32 0)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @CONVERT_TO_UTF8_FREE(i32* %71)
  br label %73

73:                                               ; preds = %58, %50, %23
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @GTK_CONTAINER(i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @gtk_container_add(i32 %77, i32* %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @gtk_widget_show_all(i32 %82)
  ret void
}

declare dso_local i32 @gtk_menu_item_new(...) #1

declare dso_local i32* @gtk_hbox_new(i32, i32) #1

declare dso_local i32 @GTK_IS_MENU_BAR(i32*) #1

declare dso_local i32* @translate_mnemonic_tag(i32, i32) #1

declare dso_local i32 @gtk_label_new_with_mnemonic(i8*) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32*) #1

declare dso_local i32* @CONVERT_TO_UTF8(i64*) #1

declare dso_local i32 @gtk_box_pack_end(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gtk_label_new(i8*) #1

declare dso_local i32 @CONVERT_TO_UTF8_FREE(i32*) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32 @GTK_CONTAINER(i32) #1

declare dso_local i32 @gtk_widget_show_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
