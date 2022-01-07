; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_get_properties_for.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_get_properties_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SPL_ARRAY_STD_PROP_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @spl_array_get_properties_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spl_array_get_properties_for(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_4__* @spl_array_from_obj(i32* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SPL_ARRAY_STD_PROP_LIST, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32* @zend_std_get_properties_for(i32* %18, i32 %19)
  store i32* %20, i32** %3, align 8
  br label %42

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %25 [
    i32 130, label %23
    i32 128, label %24
    i32 129, label %24
  ]

23:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %29

24:                                               ; preds = %21, %21
  store i32 0, i32* %8, align 4
  br label %29

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32* @zend_std_get_properties_for(i32* %26, i32 %27)
  store i32* %28, i32** %3, align 8
  br label %42

29:                                               ; preds = %24, %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = call i32* @spl_array_get_hash_table(%struct.TYPE_4__* %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @zend_array_dup(i32* %35)
  store i32* %36, i32** %7, align 8
  br label %40

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @GC_ADDREF(i32* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32*, i32** %7, align 8
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %40, %25, %17
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local %struct.TYPE_4__* @spl_array_from_obj(i32*) #1

declare dso_local i32* @zend_std_get_properties_for(i32*, i32) #1

declare dso_local i32* @spl_array_get_hash_table(%struct.TYPE_4__*) #1

declare dso_local i32* @zend_array_dup(i32*) #1

declare dso_local i32 @GC_ADDREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
