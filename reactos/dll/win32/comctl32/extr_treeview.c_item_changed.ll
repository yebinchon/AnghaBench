; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_item_changed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_item_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@TVIF_CHILDREN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TVIF_IMAGE = common dso_local global i32 0, align 4
@I_IMAGECALLBACK = common dso_local global i64 0, align 8
@TVIF_SELECTEDIMAGE = common dso_local global i32 0, align 4
@TVIF_EXPANDEDIMAGE = common dso_local global i32 0, align 4
@TVIF_TEXT = common dso_local global i32 0, align 4
@LPSTR_TEXTCALLBACKW = common dso_local global i64 0, align 8
@TVIF_INTEGRAL = common dso_local global i32 0, align 4
@TVIF_STATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_6__*)* @item_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @item_changed(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TVIF_CHILDREN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %4, align 4
  br label %157

24:                                               ; preds = %14, %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TVIF_IMAGE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @I_IMAGECALLBACK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %4, align 4
  br label %157

47:                                               ; preds = %39, %31, %24
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TVIF_SELECTEDIMAGE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @I_IMAGECALLBACK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %4, align 4
  br label %157

70:                                               ; preds = %62, %54, %47
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TVIF_EXPANDEDIMAGE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @I_IMAGECALLBACK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %4, align 4
  br label %157

93:                                               ; preds = %85, %77, %70
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TVIF_TEXT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %93
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %4, align 4
  br label %157

116:                                              ; preds = %108, %100, %93
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @TVIF_INTEGRAL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %126, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %4, align 4
  br label %157

133:                                              ; preds = %123, %116
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @TVIF_STATE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %133
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = xor i32 %143, %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %140
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %4, align 4
  br label %157

155:                                              ; preds = %140, %133
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %153, %131, %114, %91, %68, %45, %22
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
