; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_bp.c_phpdbg_find_breakpoint_method.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_bp.c_phpdbg_find_breakpoint_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@bp = common dso_local global i32 0, align 4
@PHPDBG_BREAK_METHOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @phpdbg_find_breakpoint_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @phpdbg_find_breakpoint_method(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @zend_string_tolower(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @bp, align 4
  %14 = call i32* @PHPDBG_G(i32 %13)
  %15 = load i64, i64* @PHPDBG_BREAK_METHOD, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @zend_hash_find_ptr(i32* %16, i32* %17)
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @zend_string_tolower(i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @zend_hash_find_ptr(i32* %26, i32* %27)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @zend_string_release(i32* %30)
  br label %32

32:                                               ; preds = %21, %1
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @zend_string_release(i32* %33)
  %35 = load i32*, i32** %4, align 8
  ret i32* %35
}

declare dso_local i32* @zend_string_tolower(i32) #1

declare dso_local i8* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local i32* @PHPDBG_G(i32) #1

declare dso_local i32 @zend_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
