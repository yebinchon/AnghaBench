; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_key_copy.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_key_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VARHDRSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gbt_var_key_copy(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @VARSIZE(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @VARSIZE(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @INTALIGN(i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @VARHDRSZ, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @palloc0(i64 %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @VARDATA(i32* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @memcpy(i64 %23, i32 %26, i64 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @VARDATA(i32* %29)
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @INTALIGN(i64 %31)
  %33 = add nsw i64 %30, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @memcpy(i64 %33, i32 %36, i64 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @INTALIGN(i64 %40)
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* @VARHDRSZ, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @SET_VARSIZE(i32* %39, i64 %45)
  %47 = load i32*, i32** %5, align 8
  ret i32* %47
}

declare dso_local i64 @VARSIZE(i32) #1

declare dso_local i64 @palloc0(i64) #1

declare dso_local i64 @INTALIGN(i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i64 @VARDATA(i32*) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
