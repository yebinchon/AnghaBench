; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_bp.c_phpdbg_find_breakpoint_opline.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_bp.c_phpdbg_find_breakpoint_opline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@bp = common dso_local global i32 0, align 4
@PHPDBG_BREAK_OPLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @phpdbg_find_breakpoint_opline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @phpdbg_find_breakpoint_opline(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @bp, align 4
  %6 = call i32* @PHPDBG_G(i32 %5)
  %7 = load i64, i64* @PHPDBG_BREAK_OPLINE, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i64, i64* %3, align 8
  %10 = trunc i64 %9 to i32
  %11 = call %struct.TYPE_3__* @zend_hash_index_find_ptr(i32* %8, i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %2, align 8
  br label %26

23:                                               ; preds = %13, %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = bitcast %struct.TYPE_3__* %24 to i32*
  store i32* %25, i32** %2, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32*, i32** %2, align 8
  ret i32* %27
}

declare dso_local %struct.TYPE_3__* @zend_hash_index_find_ptr(i32*, i32) #1

declare dso_local i32* @PHPDBG_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
