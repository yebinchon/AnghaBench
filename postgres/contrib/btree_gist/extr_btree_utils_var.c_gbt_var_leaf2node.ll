; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_leaf2node.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_leaf2node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* (i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, i32*)* @gbt_var_leaf2node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gbt_var_leaf2node(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  store i32* %8, i32** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32* (i32*, i32*)*, i32* (i32*, i32*)** %10, align 8
  %12 = icmp ne i32* (i32*, i32*)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32* (i32*, i32*)*, i32* (i32*, i32*)** %15, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* %16(i32* %17, i32* %18)
  store i32* %19, i32** %7, align 8
  br label %20

20:                                               ; preds = %13, %3
  %21 = load i32*, i32** %7, align 8
  ret i32* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
