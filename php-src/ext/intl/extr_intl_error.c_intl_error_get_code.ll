; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_error_get_code.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_error_get_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@U_ZERO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intl_error_get_code(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = call %struct.TYPE_4__* (...) @intl_g_error_get()
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %6, %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %9
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local %struct.TYPE_4__* @intl_g_error_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
