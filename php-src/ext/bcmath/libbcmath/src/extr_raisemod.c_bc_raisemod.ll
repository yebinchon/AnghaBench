; ModuleID = '/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_raisemod.c_bc_raisemod.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_raisemod.c_bc_raisemod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64 }

@_one_ = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"non-zero scale in base\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"non-zero scale in exponent\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"non-zero scale in modulus\00", align 1
@_two_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bc_raisemod(%struct.TYPE_27__* %0, %struct.TYPE_27__* %1, %struct.TYPE_27__* %2, %struct.TYPE_27__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__** %3, %struct.TYPE_27__*** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %19 = call i64 @bc_is_zero(%struct.TYPE_27__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %121

22:                                               ; preds = %5
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %24 = call i64 @bc_is_neg(%struct.TYPE_27__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %121

27:                                               ; preds = %22
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %29 = call %struct.TYPE_27__* @bc_copy_num(%struct.TYPE_27__* %28)
  store %struct.TYPE_27__* %29, %struct.TYPE_27__** %12, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %31 = call %struct.TYPE_27__* @bc_copy_num(%struct.TYPE_27__* %30)
  store %struct.TYPE_27__* %31, %struct.TYPE_27__** %13, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %33 = call %struct.TYPE_27__* @bc_copy_num(%struct.TYPE_27__* %32)
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %14, align 8
  %34 = load i32, i32* @_one_, align 4
  %35 = call %struct.TYPE_27__* @BCG(i32 %34)
  %36 = call %struct.TYPE_27__* @bc_copy_num(%struct.TYPE_27__* %35)
  store %struct.TYPE_27__* %36, %struct.TYPE_27__** %16, align 8
  %37 = call i32 @bc_init_num(%struct.TYPE_27__** %15)
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load i32, i32* @E_WARNING, align 4
  %44 = call i32 @php_error_docref(i32* null, i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @_bc_truncate(%struct.TYPE_27__** %12)
  br label %46

46:                                               ; preds = %42, %27
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @E_WARNING, align 4
  %53 = call i32 @php_error_docref(i32* null, i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @_bc_truncate(%struct.TYPE_27__** %13)
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @E_WARNING, align 4
  %62 = call i32 @php_error_docref(i32* null, i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @_bc_truncate(%struct.TYPE_27__** %14)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @MAX(i32 %65, i64 %68)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %71 = load i32, i32* @_one_, align 4
  %72 = call %struct.TYPE_27__* @BCG(i32 %71)
  %73 = call i32 @bc_compare(%struct.TYPE_27__* %70, %struct.TYPE_27__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %64
  %76 = call i32 @bc_free_num(%struct.TYPE_27__** %16)
  %77 = load i32, i32* %11, align 4
  %78 = call %struct.TYPE_27__* @bc_new_num(i32 1, i32 %77)
  store %struct.TYPE_27__* %78, %struct.TYPE_27__** %16, align 8
  br label %112

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %102, %79
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %82 = call i64 @bc_is_zero(%struct.TYPE_27__* %81)
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %111

85:                                               ; preds = %80
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %87 = load i32, i32* @_two_, align 4
  %88 = call %struct.TYPE_27__* @BCG(i32 %87)
  %89 = call i32 @bc_divmod(%struct.TYPE_27__* %86, %struct.TYPE_27__* %88, %struct.TYPE_27__** %13, %struct.TYPE_27__** %15, i32 0)
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %91 = call i64 @bc_is_zero(%struct.TYPE_27__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %85
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @bc_multiply(%struct.TYPE_27__* %94, %struct.TYPE_27__* %95, %struct.TYPE_27__** %16, i32 %96)
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @bc_modulo(%struct.TYPE_27__* %98, %struct.TYPE_27__* %99, %struct.TYPE_27__** %16, i32 %100)
  br label %102

102:                                              ; preds = %93, %85
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @bc_multiply(%struct.TYPE_27__* %103, %struct.TYPE_27__* %104, %struct.TYPE_27__** %12, i32 %105)
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @bc_modulo(%struct.TYPE_27__* %107, %struct.TYPE_27__* %108, %struct.TYPE_27__** %12, i32 %109)
  br label %80

111:                                              ; preds = %80
  br label %112

112:                                              ; preds = %111, %75
  %113 = call i32 @bc_free_num(%struct.TYPE_27__** %12)
  %114 = call i32 @bc_free_num(%struct.TYPE_27__** %13)
  %115 = call i32 @bc_free_num(%struct.TYPE_27__** %14)
  %116 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %10, align 8
  %117 = call i32 @bc_free_num(%struct.TYPE_27__** %116)
  %118 = call i32 @bc_free_num(%struct.TYPE_27__** %15)
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %120 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %10, align 8
  store %struct.TYPE_27__* %119, %struct.TYPE_27__** %120, align 8
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %112, %26, %21
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i64 @bc_is_zero(%struct.TYPE_27__*) #1

declare dso_local i64 @bc_is_neg(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @bc_copy_num(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @BCG(i32) #1

declare dso_local i32 @bc_init_num(%struct.TYPE_27__**) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @_bc_truncate(%struct.TYPE_27__**) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @bc_compare(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @bc_free_num(%struct.TYPE_27__**) #1

declare dso_local %struct.TYPE_27__* @bc_new_num(i32, i32) #1

declare dso_local i32 @bc_divmod(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__**, %struct.TYPE_27__**, i32) #1

declare dso_local i32 @bc_multiply(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__**, i32) #1

declare dso_local i32 @bc_modulo(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
