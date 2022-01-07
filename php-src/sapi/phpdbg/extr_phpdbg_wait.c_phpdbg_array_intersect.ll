; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_wait.c_phpdbg_array_intersect.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_wait.c_phpdbg_array_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**)* @phpdbg_array_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phpdbg_array_intersect(%struct.TYPE_3__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32*], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %16, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32* @zend_hash_get_current_data_ex(i32* %43, i32* %49)
  %51 = load i32**, i32*** %5, align 8
  store i32* %50, i32** %51, align 8
  %52 = icmp ne i32* %50, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %156

54:                                               ; preds = %28
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @zend_hash_move_forward_ex(i32* %61, i32* %67)
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 -1
  store i32 %72, i32* %3, align 4
  br label %156

73:                                               ; preds = %2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = call i32* @zend_hash_get_current_data_ex(i32* %78, i32* %82)
  %84 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  store i32* %83, i32** %84, align 16
  %85 = icmp ne i32* %83, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %73
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = load i32**, i32*** %5, align 8
  %93 = call i32 @phpdbg_array_intersect(%struct.TYPE_3__* %91, i32** %92)
  store i32 %93, i32* %3, align 4
  br label %156

94:                                               ; preds = %73
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = call i32* @zend_hash_get_current_data_ex(i32* %99, i32* %103)
  %105 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  store i32* %104, i32** %105, align 8
  %106 = icmp ne i32* %104, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %94
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = load i32**, i32*** %5, align 8
  %114 = call i32 @phpdbg_array_intersect(%struct.TYPE_3__* %112, i32** %113)
  store i32 %114, i32* %3, align 4
  br label %156

115:                                              ; preds = %94
  %116 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %117 = load i32*, i32** %116, align 16
  %118 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @zend_binary_zval_strcmp(i32* %117, i32* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %115
  %124 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %125 = load i32*, i32** %124, align 16
  %126 = load i32**, i32*** %5, align 8
  store i32* %125, i32** %126, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = call i32 @zend_hash_move_forward_ex(i32* %131, i32* %135)
  br label %137

137:                                              ; preds = %123, %115
  %138 = load i32, i32* %6, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32**, i32*** %5, align 8
  store i32* %142, i32** %143, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32**, i32*** %145, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = call i32 @zend_hash_move_forward_ex(i32* %148, i32* %152)
  br label %154

154:                                              ; preds = %140, %137
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %107, %86, %54, %53
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32* @zend_hash_get_current_data_ex(i32*, i32*) #1

declare dso_local i32 @zend_hash_move_forward_ex(i32*, i32*) #1

declare dso_local i32 @zend_binary_zval_strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
