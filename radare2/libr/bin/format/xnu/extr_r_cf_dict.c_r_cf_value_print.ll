; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/xnu/extr_r_cf_dict.c_r_cf_value_print.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/xnu/extr_r_cf_dict.c_r_cf_value_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r_cf_value_print(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = icmp ne %struct.TYPE_3__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %39

6:                                                ; preds = %1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %38 [
    i32 133, label %10
    i32 135, label %14
    i32 129, label %18
    i32 131, label %22
    i32 134, label %26
    i32 130, label %30
    i32 128, label %34
    i32 132, label %34
  ]

10:                                               ; preds = %6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = bitcast %struct.TYPE_3__* %11 to i32*
  %13 = call i32 @r_cf_value_dict_print(i32* %12)
  br label %39

14:                                               ; preds = %6
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = bitcast %struct.TYPE_3__* %15 to i32*
  %17 = call i32 @r_cf_value_array_print(i32* %16)
  br label %39

18:                                               ; preds = %6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = bitcast %struct.TYPE_3__* %19 to i32*
  %21 = call i32 @r_cf_value_string_print(i32* %20)
  br label %39

22:                                               ; preds = %6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = bitcast %struct.TYPE_3__* %23 to i32*
  %25 = call i32 @r_cf_value_integer_print(i32* %24)
  br label %39

26:                                               ; preds = %6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = bitcast %struct.TYPE_3__* %27 to i32*
  %29 = call i32 @r_cf_value_data_print(i32* %28)
  br label %39

30:                                               ; preds = %6
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = bitcast %struct.TYPE_3__* %31 to i32*
  %33 = call i32 @r_cf_value_null_print(i32* %32)
  br label %39

34:                                               ; preds = %6, %6
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = bitcast %struct.TYPE_3__* %35 to i32*
  %37 = call i32 @r_cf_value_bool_print(i32* %36)
  br label %39

38:                                               ; preds = %6
  br label %39

39:                                               ; preds = %5, %38, %34, %30, %26, %22, %18, %14, %10
  ret void
}

declare dso_local i32 @r_cf_value_dict_print(i32*) #1

declare dso_local i32 @r_cf_value_array_print(i32*) #1

declare dso_local i32 @r_cf_value_string_print(i32*) #1

declare dso_local i32 @r_cf_value_integer_print(i32*) #1

declare dso_local i32 @r_cf_value_data_print(i32*) #1

declare dso_local i32 @r_cf_value_null_print(i32*) #1

declare dso_local i32 @r_cf_value_bool_print(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
