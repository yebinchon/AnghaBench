; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/iris/keymaps/omgvee/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/iris/keymaps/omgvee/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Got on layer %s \00", align 1
@_RAISE = common dso_local global i32 0, align 4
@_MOUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Got off layer %s \00", align 1
@_HWCT = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %122 [
    i32 129, label %7
    i32 131, label %17
    i32 128, label %40
    i32 130, label %63
    i32 132, label %86
    i32 133, label %109
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_QWERTY, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %123

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* @_LOWER, align 4
  %25 = call i32 @layer_on(i32 %24)
  %26 = call i32 @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 131)
  %27 = load i32, i32* @_LOWER, align 4
  %28 = load i32, i32* @_RAISE, align 4
  %29 = load i32, i32* @_MOUSE, align 4
  %30 = call i32 @update_tri_layer(i32 %27, i32 %28, i32 %29)
  br label %39

31:                                               ; preds = %17
  %32 = load i32, i32* @_LOWER, align 4
  %33 = call i32 @layer_off(i32 %32)
  %34 = call i32 @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 131)
  %35 = load i32, i32* @_LOWER, align 4
  %36 = load i32, i32* @_RAISE, align 4
  %37 = load i32, i32* @_MOUSE, align 4
  %38 = call i32 @update_tri_layer(i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %23
  store i32 0, i32* %3, align 4
  br label %123

40:                                               ; preds = %2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* @_RAISE, align 4
  %48 = call i32 @layer_on(i32 %47)
  %49 = call i32 @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 128)
  %50 = load i32, i32* @_LOWER, align 4
  %51 = load i32, i32* @_RAISE, align 4
  %52 = load i32, i32* @_MOUSE, align 4
  %53 = call i32 @update_tri_layer(i32 %50, i32 %51, i32 %52)
  br label %62

54:                                               ; preds = %40
  %55 = load i32, i32* @_RAISE, align 4
  %56 = call i32 @layer_off(i32 %55)
  %57 = call i32 @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 128)
  %58 = load i32, i32* @_LOWER, align 4
  %59 = load i32, i32* @_RAISE, align 4
  %60 = load i32, i32* @_MOUSE, align 4
  %61 = call i32 @update_tri_layer(i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %46
  store i32 0, i32* %3, align 4
  br label %123

63:                                               ; preds = %2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* @_MOUSE, align 4
  %71 = call i32 @layer_on(i32 %70)
  %72 = call i32 @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 130)
  %73 = load i32, i32* @_LOWER, align 4
  %74 = load i32, i32* @_RAISE, align 4
  %75 = load i32, i32* @_MOUSE, align 4
  %76 = call i32 @update_tri_layer(i32 %73, i32 %74, i32 %75)
  br label %85

77:                                               ; preds = %63
  %78 = load i32, i32* @_MOUSE, align 4
  %79 = call i32 @layer_off(i32 %78)
  %80 = call i32 @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 130)
  %81 = load i32, i32* @_LOWER, align 4
  %82 = load i32, i32* @_RAISE, align 4
  %83 = load i32, i32* @_MOUSE, align 4
  %84 = call i32 @update_tri_layer(i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %69
  store i32 0, i32* %3, align 4
  br label %123

86:                                               ; preds = %2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load i32, i32* @_HWCT, align 4
  %94 = call i32 @layer_on(i32 %93)
  %95 = call i32 @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 132)
  %96 = load i32, i32* @_LOWER, align 4
  %97 = load i32, i32* @_RAISE, align 4
  %98 = load i32, i32* @_MOUSE, align 4
  %99 = call i32 @update_tri_layer(i32 %96, i32 %97, i32 %98)
  br label %108

100:                                              ; preds = %86
  %101 = load i32, i32* @_HWCT, align 4
  %102 = call i32 @layer_off(i32 %101)
  %103 = call i32 @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 132)
  %104 = load i32, i32* @_LOWER, align 4
  %105 = load i32, i32* @_RAISE, align 4
  %106 = load i32, i32* @_MOUSE, align 4
  %107 = call i32 @update_tri_layer(i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %100, %92
  store i32 0, i32* %3, align 4
  br label %123

109:                                              ; preds = %2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @_ADJUST, align 4
  %117 = call i32 @layer_on(i32 %116)
  br label %121

118:                                              ; preds = %109
  %119 = load i32, i32* @_ADJUST, align 4
  %120 = call i32 @layer_off(i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  store i32 0, i32* %3, align 4
  br label %123

122:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %121, %108, %85, %62, %39, %16
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @dprintf(i8*, i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
