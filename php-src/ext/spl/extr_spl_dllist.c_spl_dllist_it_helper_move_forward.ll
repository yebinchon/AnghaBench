; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_dllist.c_spl_dllist_it_helper_move_forward.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_dllist.c_spl_dllist_it_helper_move_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@SPL_DLLIST_IT_LIFO = common dso_local global i32 0, align 4
@SPL_DLLIST_IT_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, i32*, i32*, i32)* @spl_dllist_it_helper_move_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_dllist_it_helper_move_forward(%struct.TYPE_5__** %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %63

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SPL_DLLIST_IT_LIFO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SPL_DLLIST_IT_DELETE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @spl_ptr_llist_pop(i32* %35, i32* %10)
  %37 = call i32 @zval_ptr_dtor(i32* %10)
  br label %38

38:                                               ; preds = %34, %22
  br label %57

39:                                               ; preds = %15
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SPL_DLLIST_IT_DELETE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @spl_ptr_llist_shift(i32* %49, i32* %11)
  %51 = call i32 @zval_ptr_dtor(i32* %11)
  br label %56

52:                                               ; preds = %39
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = call i32 @SPL_LLIST_DELREF(%struct.TYPE_5__* %58)
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i32 @SPL_LLIST_CHECK_ADDREF(%struct.TYPE_5__* %61)
  br label %63

63:                                               ; preds = %57, %4
  ret void
}

declare dso_local i32 @spl_ptr_llist_pop(i32*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @spl_ptr_llist_shift(i32*, i32*) #1

declare dso_local i32 @SPL_LLIST_DELREF(%struct.TYPE_5__*) #1

declare dso_local i32 @SPL_LLIST_CHECK_ADDREF(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
