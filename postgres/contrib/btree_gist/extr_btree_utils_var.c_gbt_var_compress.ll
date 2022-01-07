; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_compress.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.varlena = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @gbt_var_compress(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.varlena*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.varlena* @PG_DETOAST_DATUM(i32 %15)
  store %struct.varlena* %16, %struct.varlena** %6, align 8
  %17 = load %struct.varlena*, %struct.varlena** %6, align 8
  %18 = call i32* @gbt_var_key_from_datum(%struct.varlena* %17)
  store i32* %18, i32** %7, align 8
  %19 = call %struct.TYPE_6__* @palloc(i32 24)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @PointerGetDatum(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @gistentryinit(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %20, i32 %22, i32 %25, i32 %28, i32 %31, i32 1)
  br label %35

33:                                               ; preds = %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %5, align 8
  br label %35

35:                                               ; preds = %33, %12
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %36
}

declare dso_local %struct.varlena* @PG_DETOAST_DATUM(i32) #1

declare dso_local i32* @gbt_var_key_from_datum(%struct.varlena*) #1

declare dso_local %struct.TYPE_6__* @palloc(i32) #1

declare dso_local i32 @gistentryinit(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
