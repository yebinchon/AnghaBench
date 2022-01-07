; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_getdatafield.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_getdatafield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.varlena = type { i32 }

@VARHDRSZ = common dso_local global i32 0, align 4
@LOBLKSIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"pg_largeobject entry for OID %u, page %d has invalid data field size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32**, i32*, i32*)* @getdatafield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getdatafield(%struct.TYPE_3__* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32* %13, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = call i64 @VARATT_IS_EXTENDED(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = bitcast i32* %18 to %struct.varlena*
  %20 = call i64 @detoast_attr(%struct.varlena* %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %9, align 8
  store i32 1, i32* %11, align 4
  br label %22

22:                                               ; preds = %17, %4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @VARSIZE(i32* %23)
  %25 = load i32, i32* @VARHDRSZ, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @LOBLKSIZE, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29, %22
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %43)
  %45 = call i32 @ereport(i32 %34, i32 %44)
  br label %46

46:                                               ; preds = %33, %29
  %47 = load i32*, i32** %9, align 8
  %48 = load i32**, i32*** %6, align 8
  store i32* %47, i32** %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  ret void
}

declare dso_local i64 @VARATT_IS_EXTENDED(i32*) #1

declare dso_local i64 @detoast_attr(%struct.varlena*) #1

declare dso_local i32 @VARSIZE(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
