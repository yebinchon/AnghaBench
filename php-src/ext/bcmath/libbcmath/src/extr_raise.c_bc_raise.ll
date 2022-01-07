; ModuleID = '/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_raise.c_bc_raise.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_raise.c_bc_raise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64* }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"non-zero scale in exponent\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"exponent too large\00", align 1
@_one_ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8 0, align 1
@FALSE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bc_raise(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @E_WARNING, align 4
  %22 = call i32 @php_error_docref(i32* null, i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = call i64 @bc_num2long(%struct.TYPE_16__* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @E_WARNING, align 4
  %42 = call i32 @php_error_docref(i32* null, i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %33, %23
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %48 = call i32 @bc_free_num(%struct.TYPE_16__** %47)
  %49 = load i32, i32* @_one_, align 4
  %50 = call %struct.TYPE_16__* @BCG(i32 %49)
  %51 = call %struct.TYPE_16__* @bc_copy_num(%struct.TYPE_16__* %50)
  %52 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %52, align 8
  br label %156

53:                                               ; preds = %43
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8, i8* @TRUE, align 1
  store i8 %57, i8* %15, align 1
  %58 = load i64, i64* %11, align 8
  %59 = sub nsw i64 0, %58
  store i64 %59, i64* %11, align 8
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %12, align 4
  br label %74

61:                                               ; preds = %53
  %62 = load i8, i8* @FALSE, align 1
  store i8 %62, i8* %15, align 1
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = mul nsw i64 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @MAX(i32 %68, i64 %71)
  %73 = call i32 @MIN(i64 %67, i32 %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %61, %56
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = call %struct.TYPE_16__* @bc_copy_num(%struct.TYPE_16__* %75)
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %10, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %85, %74
  %82 = load i64, i64* %11, align 8
  %83 = and i64 %82, 1
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = mul nsw i32 2, %86
  store i32 %87, i32* %13, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @bc_multiply(%struct.TYPE_16__* %88, %struct.TYPE_16__* %89, %struct.TYPE_16__** %10, i32 %90)
  %92 = load i64, i64* %11, align 8
  %93 = ashr i64 %92, 1
  store i64 %93, i64* %11, align 8
  br label %81

94:                                               ; preds = %81
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = call %struct.TYPE_16__* @bc_copy_num(%struct.TYPE_16__* %95)
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %9, align 8
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %14, align 4
  %98 = load i64, i64* %11, align 8
  %99 = ashr i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %100

100:                                              ; preds = %121, %94
  %101 = load i64, i64* %11, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = mul nsw i32 2, %104
  store i32 %105, i32* %13, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @bc_multiply(%struct.TYPE_16__* %106, %struct.TYPE_16__* %107, %struct.TYPE_16__** %10, i32 %108)
  %110 = load i64, i64* %11, align 8
  %111 = and i64 %110, 1
  %112 = icmp eq i64 %111, 1
  br i1 %112, label %113, label %121

113:                                              ; preds = %103
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %14, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @bc_multiply(%struct.TYPE_16__* %117, %struct.TYPE_16__* %118, %struct.TYPE_16__** %9, i32 %119)
  br label %121

121:                                              ; preds = %113, %103
  %122 = load i64, i64* %11, align 8
  %123 = ashr i64 %122, 1
  store i64 %123, i64* %11, align 8
  br label %100

124:                                              ; preds = %100
  %125 = load i8, i8* %15, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load i32, i32* @_one_, align 4
  %129 = call %struct.TYPE_16__* @BCG(i32 %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %131 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @bc_divide(%struct.TYPE_16__* %129, %struct.TYPE_16__* %130, %struct.TYPE_16__** %131, i32 %132)
  %134 = call i32 @bc_free_num(%struct.TYPE_16__** %9)
  br label %154

135:                                              ; preds = %124
  %136 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %137 = call i32 @bc_free_num(%struct.TYPE_16__** %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %139 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__* %138, %struct.TYPE_16__** %139, align 8
  %140 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp sgt i64 %143, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %135
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  br label %153

153:                                              ; preds = %147, %135
  br label %154

154:                                              ; preds = %153, %127
  %155 = call i32 @bc_free_num(%struct.TYPE_16__** %10)
  br label %156

156:                                              ; preds = %154, %46
  ret void
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i64 @bc_num2long(%struct.TYPE_16__*) #1

declare dso_local i32 @bc_free_num(%struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_16__* @bc_copy_num(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @BCG(i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @bc_multiply(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__**, i32) #1

declare dso_local i32 @bc_divide(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
