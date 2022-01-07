; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_extensions.c_zend_startup_extensions_mechanism.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_extensions.c_zend_startup_extensions_mechanism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zend_extensions = common dso_local global i32 0, align 4
@zend_extension_dtor = common dso_local global i64 0, align 8
@zend_op_array_extension_handles = common dso_local global i64 0, align 8
@last_resource_number = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_startup_extensions_mechanism() #0 {
  %1 = load i64, i64* @zend_extension_dtor, align 8
  %2 = inttoptr i64 %1 to void (i8*)*
  %3 = call i32 @zend_llist_init(i32* @zend_extensions, i32 4, void (i8*)* %2, i32 1)
  store i64 0, i64* @zend_op_array_extension_handles, align 8
  store i64 0, i64* @last_resource_number, align 8
  %4 = load i32, i32* @SUCCESS, align 4
  ret i32 %4
}

declare dso_local i32 @zend_llist_init(i32*, i32, void (i8*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
