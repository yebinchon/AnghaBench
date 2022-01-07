; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_register_IntlException_class.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_register_IntlException_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"IntlException\00", align 1
@zend_ce_exception = common dso_local global %struct.TYPE_6__* null, align 8
@IntlException_ce_ptr = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intl_register_IntlException_class() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 @INIT_CLASS_ENTRY_EX(i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13, i32* null)
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_exception, align 8
  %5 = call %struct.TYPE_5__* @zend_register_internal_class_ex(i32* %1, %struct.TYPE_6__* %4)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** @IntlException_ce_ptr, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_exception, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IntlException_ce_ptr, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  ret void
}

declare dso_local i32 @INIT_CLASS_ENTRY_EX(i32, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @zend_register_internal_class_ex(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
