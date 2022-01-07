; ModuleID = '/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_sqrt.c_bc_sqrt.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_sqrt.c_bc_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32*, i32 }

@_zero_ = common dso_local global i32 0, align 4
@_one_ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bc_sqrt(%struct.TYPE_28__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_28__** %0, %struct.TYPE_28__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %16 = load i32, i32* @_zero_, align 4
  %17 = call %struct.TYPE_28__* @BCG(i32 %16)
  %18 = call i32 @bc_compare(%struct.TYPE_28__* %15, %struct.TYPE_28__* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %27 = call i32 @bc_free_num(%struct.TYPE_28__** %26)
  %28 = load i32, i32* @_zero_, align 4
  %29 = call %struct.TYPE_28__* @BCG(i32 %28)
  %30 = call %struct.TYPE_28__* @bc_copy_num(%struct.TYPE_28__* %29)
  %31 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  store %struct.TYPE_28__* %30, %struct.TYPE_28__** %31, align 8
  store i32 1, i32* %3, align 4
  br label %148

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %34, align 8
  %36 = load i32, i32* @_one_, align 4
  %37 = call %struct.TYPE_28__* @BCG(i32 %36)
  %38 = call i32 @bc_compare(%struct.TYPE_28__* %35, %struct.TYPE_28__* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %43 = call i32 @bc_free_num(%struct.TYPE_28__** %42)
  %44 = load i32, i32* @_one_, align 4
  %45 = call %struct.TYPE_28__* @BCG(i32 %44)
  %46 = call %struct.TYPE_28__* @bc_copy_num(%struct.TYPE_28__* %45)
  %47 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  store %struct.TYPE_28__* %46, %struct.TYPE_28__** %47, align 8
  store i32 1, i32* %3, align 4
  br label %148

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @MAX(i32 %49, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = call i32 @bc_init_num(%struct.TYPE_28__** %10)
  %56 = call i32 @bc_init_num(%struct.TYPE_28__** %11)
  %57 = call i32 @bc_init_num(%struct.TYPE_28__** %13)
  %58 = call %struct.TYPE_28__* @bc_new_num(i32 1, i32 1)
  store %struct.TYPE_28__* %58, %struct.TYPE_28__** %12, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 5, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %48
  %66 = load i32, i32* @_one_, align 4
  %67 = call %struct.TYPE_28__* @BCG(i32 %66)
  %68 = call %struct.TYPE_28__* @bc_copy_num(%struct.TYPE_28__* %67)
  store %struct.TYPE_28__* %68, %struct.TYPE_28__** %10, align 8
  %69 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %9, align 4
  br label %89

73:                                               ; preds = %48
  %74 = call i32 @bc_int2num(%struct.TYPE_28__** %10, i32 10)
  %75 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bc_int2num(%struct.TYPE_28__** %11, i32 %78)
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %82 = call i32 @bc_multiply(%struct.TYPE_28__* %80, %struct.TYPE_28__* %81, %struct.TYPE_28__** %11, i32 0)
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %87 = call i32 @bc_raise(%struct.TYPE_28__* %85, %struct.TYPE_28__* %86, %struct.TYPE_28__** %10, i32 0)
  %88 = call i32 @bc_free_num(%struct.TYPE_28__** %11)
  store i32 3, i32* %9, align 4
  br label %89

89:                                               ; preds = %73, %65
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %134, %89
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %95, label %135

95:                                               ; preds = %91
  %96 = call i32 @bc_free_num(%struct.TYPE_28__** %11)
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %98 = call %struct.TYPE_28__* @bc_copy_num(%struct.TYPE_28__* %97)
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %11, align 8
  %99 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %99, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @bc_divide(%struct.TYPE_28__* %100, %struct.TYPE_28__* %101, %struct.TYPE_28__** %10, i32 %102)
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %106 = call i32 @bc_add(%struct.TYPE_28__* %104, %struct.TYPE_28__* %105, %struct.TYPE_28__** %10, i32 0)
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @bc_multiply(%struct.TYPE_28__* %107, %struct.TYPE_28__* %108, %struct.TYPE_28__** %10, i32 %109)
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @bc_sub(%struct.TYPE_28__* %111, %struct.TYPE_28__* %112, %struct.TYPE_28__** %13, i32 %114)
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @bc_is_near_zero(%struct.TYPE_28__* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %95
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %126, 3
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @MIN(i32 %127, i32 %129)
  store i32 %130, i32* %9, align 4
  br label %133

131:                                              ; preds = %120
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %131, %125
  br label %134

134:                                              ; preds = %133, %95
  br label %91

135:                                              ; preds = %91
  %136 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %137 = call i32 @bc_free_num(%struct.TYPE_28__** %136)
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %139 = load i32, i32* @_one_, align 4
  %140 = call %struct.TYPE_28__* @BCG(i32 %139)
  %141 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @bc_divide(%struct.TYPE_28__* %138, %struct.TYPE_28__* %140, %struct.TYPE_28__** %141, i32 %142)
  %144 = call i32 @bc_free_num(%struct.TYPE_28__** %10)
  %145 = call i32 @bc_free_num(%struct.TYPE_28__** %11)
  %146 = call i32 @bc_free_num(%struct.TYPE_28__** %12)
  %147 = call i32 @bc_free_num(%struct.TYPE_28__** %13)
  store i32 1, i32* %3, align 4
  br label %148

148:                                              ; preds = %135, %41, %25, %21
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @bc_compare(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @BCG(i32) #1

declare dso_local i32 @bc_free_num(%struct.TYPE_28__**) #1

declare dso_local %struct.TYPE_28__* @bc_copy_num(%struct.TYPE_28__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @bc_init_num(%struct.TYPE_28__**) #1

declare dso_local %struct.TYPE_28__* @bc_new_num(i32, i32) #1

declare dso_local i32 @bc_int2num(%struct.TYPE_28__**, i32) #1

declare dso_local i32 @bc_multiply(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__**, i32) #1

declare dso_local i32 @bc_raise(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__**, i32) #1

declare dso_local i32 @bc_divide(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__**, i32) #1

declare dso_local i32 @bc_add(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__**, i32) #1

declare dso_local i32 @bc_sub(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__**, i32) #1

declare dso_local i64 @bc_is_near_zero(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
