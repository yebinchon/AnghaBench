; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_ts.c_gbt_tskey_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_ts.c_gbt_tskey_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@timestamp_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @gbt_tskey_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbt_tskey_cmp(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %9, align 8
  %21 = load i32, i32* @timestamp_cmp, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @TimestampGetDatumFast(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TimestampGetDatumFast(i32 %28)
  %30 = call i32 @DirectFunctionCall2(i32 %21, i32 %25, i32 %29)
  %31 = call i32 @DatumGetInt32(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %3
  %35 = load i32, i32* @timestamp_cmp, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TimestampGetDatumFast(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TimestampGetDatumFast(i32 %42)
  %44 = call i32 @DirectFunctionCall2(i32 %35, i32 %39, i32 %43)
  %45 = call i32 @DatumGetInt32(i32 %44)
  store i32 %45, i32* %4, align 4
  br label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %34
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @TimestampGetDatumFast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
