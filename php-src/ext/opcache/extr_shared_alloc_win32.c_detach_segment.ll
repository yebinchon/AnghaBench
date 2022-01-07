; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_shared_alloc_win32.c_detach_segment.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_shared_alloc_win32.c_detach_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mapping_base = common dso_local global i32* null, align 8
@memfile = common dso_local global i32* null, align 8
@memory_mutex = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @detach_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detach_segment(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 (...) @zend_shared_alloc_lock_win32()
  %4 = load i32*, i32** @mapping_base, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32*, i32** @mapping_base, align 8
  %8 = call i32 @UnmapViewOfFile(i32* %7)
  store i32* null, i32** @mapping_base, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32*, i32** @memfile, align 8
  %11 = call i32 @CloseHandle(i32* %10)
  store i32* null, i32** @memfile, align 8
  %12 = call i32 (...) @zend_shared_alloc_unlock_win32()
  %13 = load i32*, i32** @memory_mutex, align 8
  %14 = call i32 @CloseHandle(i32* %13)
  store i32* null, i32** @memory_mutex, align 8
  ret i32 0
}

declare dso_local i32 @zend_shared_alloc_lock_win32(...) #1

declare dso_local i32 @UnmapViewOfFile(i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @zend_shared_alloc_unlock_win32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
