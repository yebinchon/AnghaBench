; ModuleID = '/home/carl/AnghaBench/radare2/sys/ui/extr_r2-install.c_main_constructor.c'
source_filename = "/home/carl/AnghaBench/radare2/sys/ui/extr_r2-install.c_main_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* (i32, i32, i32*)* }

@main_parent_class = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Install\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Update\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Deinstall\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@GTK_WINDOW_TOPLEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*)* @main_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @main_constructor(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %39 = load i32, i32* @main_parent_class, align 4
  %40 = call %struct.TYPE_3__* @G_OBJECT_CLASS(i32 %39)
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32* (i32, i32, i32*)*, i32* (i32, i32, i32*)** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32* %43(i32 %44, i32 %45, i32* %46)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32* @MAIN(i32* %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i64 @gtk_vbox_new(i32 %50, i32 0)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %16, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i32* @g_object_ref_sink(i32* %53)
  store i32* %54, i32** %17, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @_g_object_unref0(i32* %55)
  %57 = load i32*, i32** %17, align 8
  store i32* %57, i32** %10, align 8
  %58 = call i64 @gtk_label_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %18, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = call i32* @g_object_ref_sink(i32* %60)
  store i32* %61, i32** %19, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @_g_object_unref0(i32* %62)
  %64 = load i32*, i32** %19, align 8
  store i32* %64, i32** %11, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i64 @gtk_hbox_new(i32 %65, i32 0)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %20, align 8
  %68 = load i32*, i32** %20, align 8
  %69 = call i32* @g_object_ref_sink(i32* %68)
  store i32* %69, i32** %21, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @_g_object_unref0(i32* %70)
  %72 = load i32*, i32** %21, align 8
  store i32* %72, i32** %12, align 8
  %73 = call i64 @gtk_button_new_with_label(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %22, align 8
  %75 = load i32*, i32** %22, align 8
  %76 = call i32* @g_object_ref_sink(i32* %75)
  store i32* %76, i32** %23, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @_g_object_unref0(i32* %77)
  %79 = load i32*, i32** %23, align 8
  store i32* %79, i32** %13, align 8
  %80 = call i64 @gtk_button_new_with_label(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %24, align 8
  %82 = load i32*, i32** %24, align 8
  %83 = call i32* @g_object_ref_sink(i32* %82)
  store i32* %83, i32** %25, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @_g_object_unref0(i32* %84)
  %86 = load i32*, i32** %25, align 8
  store i32* %86, i32** %14, align 8
  %87 = call i64 @gtk_button_new_with_label(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %88 = inttoptr i64 %87 to i32*
  store i32* %88, i32** %26, align 8
  %89 = load i32*, i32** %26, align 8
  %90 = call i32* @g_object_ref_sink(i32* %89)
  store i32* %90, i32** %27, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = call i32 @_g_object_unref0(i32* %91)
  %93 = load i32*, i32** %27, align 8
  store i32* %93, i32** %15, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @GTK_WINDOW_TOPLEVEL, align 4
  %96 = call i32 @g_object_set(i32* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %95, i32* null)
  %97 = load i32*, i32** %10, align 8
  store i32* %97, i32** %28, align 8
  %98 = load i32*, i32** %11, align 8
  store i32* %98, i32** %29, align 8
  %99 = load i32*, i32** %28, align 8
  %100 = load i32*, i32** %29, align 8
  %101 = call i32 @gtk_container_add(i32* %99, i32* %100)
  %102 = load i32*, i32** %12, align 8
  store i32* %102, i32** %30, align 8
  %103 = load i32*, i32** %13, align 8
  store i32* %103, i32** %31, align 8
  %104 = load i32*, i32** %30, align 8
  %105 = load i32*, i32** %31, align 8
  %106 = call i32 @gtk_container_add(i32* %104, i32* %105)
  %107 = load i32*, i32** %12, align 8
  store i32* %107, i32** %32, align 8
  %108 = load i32*, i32** %14, align 8
  store i32* %108, i32** %33, align 8
  %109 = load i32*, i32** %32, align 8
  %110 = load i32*, i32** %33, align 8
  %111 = call i32 @gtk_container_add(i32* %109, i32* %110)
  %112 = load i32*, i32** %12, align 8
  store i32* %112, i32** %34, align 8
  %113 = load i32*, i32** %15, align 8
  store i32* %113, i32** %35, align 8
  %114 = load i32*, i32** %34, align 8
  %115 = load i32*, i32** %35, align 8
  %116 = call i32 @gtk_container_add(i32* %114, i32* %115)
  %117 = load i32*, i32** %10, align 8
  store i32* %117, i32** %36, align 8
  %118 = load i32*, i32** %12, align 8
  store i32* %118, i32** %37, align 8
  %119 = load i32*, i32** %36, align 8
  %120 = load i32*, i32** %37, align 8
  %121 = call i32 @gtk_container_add(i32* %119, i32* %120)
  %122 = load i32*, i32** %10, align 8
  store i32* %122, i32** %38, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i32*, i32** %38, align 8
  %125 = call i32 @gtk_container_add(i32* %123, i32* %124)
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @_g_object_unref0(i32* %126)
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @_g_object_unref0(i32* %128)
  %130 = load i32*, i32** %13, align 8
  %131 = call i32 @_g_object_unref0(i32* %130)
  %132 = load i32*, i32** %12, align 8
  %133 = call i32 @_g_object_unref0(i32* %132)
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @_g_object_unref0(i32* %134)
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @_g_object_unref0(i32* %136)
  %138 = load i32*, i32** %7, align 8
  ret i32* %138
}

declare dso_local %struct.TYPE_3__* @G_OBJECT_CLASS(i32) #1

declare dso_local i32* @MAIN(i32*) #1

declare dso_local i64 @gtk_vbox_new(i32, i32) #1

declare dso_local i32* @g_object_ref_sink(i32*) #1

declare dso_local i32 @_g_object_unref0(i32*) #1

declare dso_local i64 @gtk_label_new(i8*) #1

declare dso_local i64 @gtk_hbox_new(i32, i32) #1

declare dso_local i64 @gtk_button_new_with_label(i8*) #1

declare dso_local i32 @g_object_set(i32*, i8*, i32, i32*) #1

declare dso_local i32 @gtk_container_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
