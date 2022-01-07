; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_canal.c_analPaths.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_canal.c_analPaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_15__*, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i64, i64, i64, i32, i64* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64 }

@R_ANAL_OP_MASK_BASIC = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*)* @analPaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analPaths(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %159

18:                                               ; preds = %2
  %19 = call i64 (...) @r_cons_is_breaked()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %159

22:                                               ; preds = %18
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dict_set(i32* %24, i64 %27, i32 1, i32* null)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = call i32 @r_list_append(i32 %31, %struct.TYPE_15__* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %159

45:                                               ; preds = %38, %22
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @printAnalPaths(%struct.TYPE_13__* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %159

66:                                               ; preds = %60
  br label %137

67:                                               ; preds = %50, %45
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %6, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %8, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @analPathFollow(%struct.TYPE_13__* %75, i64 %76, i32* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %79, %struct.TYPE_15__** %5, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @analPathFollow(%struct.TYPE_13__* %80, i64 %81, i32* %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %136

88:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %132, %88
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %135

95:                                               ; preds = %89
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %98, %105
  store i64 %106, i64* %10, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i32, i32* @R_ANAL_OP_MASK_BASIC, align 4
  %112 = call %struct.TYPE_14__* @r_core_anal_op(i32 %109, i64 %110, i32 %111)
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %11, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %114 = icmp ne %struct.TYPE_14__* %113, null
  br i1 %114, label %115, label %128

115:                                              ; preds = %95
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @R_ANAL_OP_TYPE_CALL, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @analPathFollow(%struct.TYPE_13__* %122, i64 %125, i32* %126)
  br label %128

128:                                              ; preds = %121, %115, %95
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %129, %struct.TYPE_15__** %5, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %131 = call i32 @r_anal_op_free(%struct.TYPE_14__* %130)
  br label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %89

135:                                              ; preds = %89
  br label %136

136:                                              ; preds = %135, %67
  br label %137

137:                                              ; preds = %136, %66
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call %struct.TYPE_15__* @r_list_pop(i32 %140)
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %143, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @dict_del(i32* %145, i64 %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %137
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %17, %21, %44, %65, %154, %137
  ret void
}

declare dso_local i64 @r_cons_is_breaked(...) #1

declare dso_local i32 @dict_set(i32*, i64, i32, i32*) #1

declare dso_local i32 @r_list_append(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @printAnalPaths(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @analPathFollow(%struct.TYPE_13__*, i64, i32*) #1

declare dso_local %struct.TYPE_14__* @r_core_anal_op(i32, i64, i32) #1

declare dso_local i32 @r_anal_op_free(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @r_list_pop(i32) #1

declare dso_local i32 @dict_del(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
