; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_iterator.c_com_iter_get_key.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_iterator.c_com_iter_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.php_com_iterator = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @com_iter_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @com_iter_get_key(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.php_com_iterator*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @Z_PTR(i32 %8)
  %10 = inttoptr i64 %9 to %struct.php_com_iterator*
  store %struct.php_com_iterator* %10, %struct.php_com_iterator** %5, align 8
  %11 = load %struct.php_com_iterator*, %struct.php_com_iterator** %5, align 8
  %12 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ZVAL_NULL(i32* %16)
  br label %24

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.php_com_iterator*, %struct.php_com_iterator** %5, align 8
  %21 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ZVAL_LONG(i32* %19, i64 %22)
  br label %24

24:                                               ; preds = %18, %15
  ret void
}

declare dso_local i64 @Z_PTR(i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
