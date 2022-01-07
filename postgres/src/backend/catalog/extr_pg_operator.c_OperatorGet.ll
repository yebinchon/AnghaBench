; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_OperatorGet.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_OperatorGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@OPERNAMENSP = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32*)* @OperatorGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OperatorGet(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @OPERNAMENSP, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @PointerGetDatum(i8* %15)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ObjectIdGetDatum(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ObjectIdGetDatum(i32 %21)
  %23 = call i32 @SearchSysCache4(i32 %14, i32 %16, i32 %18, i32 %20, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @HeapTupleIsValid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @GETSTRUCT(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %13, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @RegProcedureIsValid(i32 %37)
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ReleaseSysCache(i32 %40)
  br label %45

42:                                               ; preds = %5
  %43 = load i32, i32* @InvalidOid, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %27
  %46 = load i32, i32* %12, align 4
  ret i32 %46
}

declare dso_local i32 @SearchSysCache4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @RegProcedureIsValid(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
