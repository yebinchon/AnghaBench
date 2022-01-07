; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_ascii_glyph_table_init.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_ascii_glyph_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_19__*, i32*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32*, i32 }

@gui = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PANGO_SCALE = common dso_local global i32 0, align 4
@default_shape_engine = common dso_local global i32 0, align 4
@pango_item_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ascii_glyph_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ascii_glyph_table_init() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %9 = icmp ne %struct.TYPE_19__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %12 = call i32 @pango_glyph_string_free(%struct.TYPE_19__* %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 2), align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 2), align 8
  %18 = call i32 @g_object_unref(i32* %17)
  br label %19

19:                                               ; preds = %16, %13
  store %struct.TYPE_19__* null, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 2), align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %27, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 %25
  store i8 63, i8* %26, align 1
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %20

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %40, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 127
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 %38
  store i8 %36, i8* %39, align 1
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %31

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 %45
  store i8 63, i8* %46, align 1
  %47 = call i32* (...) @pango_attr_list_new()
  store i32* %47, i32** %2, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 3), align 8
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %50 = load i32*, i32** %2, align 8
  %51 = call %struct.TYPE_17__* @pango_itemize(i32 %48, i8* %49, i32 0, i32 128, i32* %50, i32* null)
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %3, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = icmp ne %struct.TYPE_17__* %52, null
  br i1 %53, label %54, label %122

54:                                               ; preds = %43
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %122

59:                                               ; preds = %54
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %5, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 0), align 8
  %65 = load i32, i32* @PANGO_SCALE, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %6, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* @default_shape_engine, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 2), align 8
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 2), align 8
  %76 = call i32 @g_object_ref(i32* %75)
  %77 = call %struct.TYPE_19__* (...) @pango_glyph_string_new()
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %82 = call i32 @pango_shape(i8* %78, i32 128, %struct.TYPE_18__* %80, %struct.TYPE_19__* %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %86, 128
  %88 = zext i1 %87 to i32
  %89 = call i32 @g_return_if_fail(i32 %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %118, %59
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %7, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  %109 = call i32 @MAX(i32 0, i32 %108)
  %110 = sdiv i32 %109, 2
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %96
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %90

121:                                              ; preds = %90
  br label %122

122:                                              ; preds = %121, %54, %43
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %124 = call i32 @g_list_foreach(%struct.TYPE_17__* %123, i32 ptrtoint (i32* @pango_item_free to i32), i32* null)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = call i32 @g_list_free(%struct.TYPE_17__* %125)
  %127 = load i32*, i32** %2, align 8
  %128 = call i32 @pango_attr_list_unref(i32* %127)
  ret void
}

declare dso_local i32 @pango_glyph_string_free(%struct.TYPE_19__*) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32* @pango_attr_list_new(...) #1

declare dso_local %struct.TYPE_17__* @pango_itemize(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @g_object_ref(i32*) #1

declare dso_local %struct.TYPE_19__* @pango_glyph_string_new(...) #1

declare dso_local i32 @pango_shape(i8*, i32, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @g_list_foreach(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_17__*) #1

declare dso_local i32 @pango_attr_list_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
