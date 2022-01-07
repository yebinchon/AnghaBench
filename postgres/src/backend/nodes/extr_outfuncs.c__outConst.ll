; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outConst.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outConst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"CONST\00", align 1
@consttype = common dso_local global i32 0, align 4
@consttypmod = common dso_local global i32 0, align 4
@constcollid = common dso_local global i32 0, align 4
@constlen = common dso_local global i32 0, align 4
@constbyval = common dso_local global i32 0, align 4
@constisnull = common dso_local global i32 0, align 4
@location = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" :constvalue \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @_outConst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outConst(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @consttype, align 4
  %7 = call i32 @WRITE_OID_FIELD(i32 %6)
  %8 = load i32, i32* @consttypmod, align 4
  %9 = call i32 @WRITE_INT_FIELD(i32 %8)
  %10 = load i32, i32* @constcollid, align 4
  %11 = call i32 @WRITE_OID_FIELD(i32 %10)
  %12 = load i32, i32* @constlen, align 4
  %13 = call i32 @WRITE_INT_FIELD(i32 %12)
  %14 = load i32, i32* @constbyval, align 4
  %15 = call i32 @WRITE_BOOL_FIELD(i32 %14)
  %16 = load i32, i32* @constisnull, align 4
  %17 = call i32 @WRITE_BOOL_FIELD(i32 %16)
  %18 = load i32, i32* @location, align 4
  %19 = call i32 @WRITE_LOCATION_FIELD(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @appendStringInfoString(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @appendStringInfoString(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %41

29:                                               ; preds = %2
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @outDatum(i32 %30, i32 %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_OID_FIELD(i32) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_LOCATION_FIELD(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @outDatum(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
