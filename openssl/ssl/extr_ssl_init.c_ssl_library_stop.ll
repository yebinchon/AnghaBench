; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_init.c_ssl_library_stop.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_init.c_ssl_library_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stopped = common dso_local global i32 0, align 4
@ssl_base_inited = common dso_local global i64 0, align 8
@INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"ssl_library_stop: ssl_comp_free_compression_methods_int()\0A\00", align 1
@ssl_strings_inited = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"ssl_library_stop: err_free_strings_int()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ssl_library_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_library_stop() #0 {
  %1 = load i32, i32* @stopped, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %18

4:                                                ; preds = %0
  store i32 1, i32* @stopped, align 4
  %5 = load i64, i64* @ssl_base_inited, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* @INIT, align 4
  %9 = call i32 @OSSL_TRACE(i32 %8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @ssl_comp_free_compression_methods_int()
  br label %11

11:                                               ; preds = %7, %4
  %12 = load i64, i64* @ssl_strings_inited, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @INIT, align 4
  %16 = call i32 @OSSL_TRACE(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (...) @err_free_strings_int()
  br label %18

18:                                               ; preds = %3, %14, %11
  ret void
}

declare dso_local i32 @OSSL_TRACE(i32, i8*) #1

declare dso_local i32 @ssl_comp_free_compression_methods_int(...) #1

declare dso_local i32 @err_free_strings_int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
