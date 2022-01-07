; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outEquivalenceClass.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outEquivalenceClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@.str = private unnamed_addr constant [17 x i8] c"EQUIVALENCECLASS\00", align 1
@ec_opfamilies = common dso_local global i32 0, align 4
@ec_collation = common dso_local global i32 0, align 4
@ec_members = common dso_local global i32 0, align 4
@ec_sources = common dso_local global i32 0, align 4
@ec_derives = common dso_local global i32 0, align 4
@ec_relids = common dso_local global i32 0, align 4
@ec_has_const = common dso_local global i32 0, align 4
@ec_has_volatile = common dso_local global i32 0, align 4
@ec_below_outer_join = common dso_local global i32 0, align 4
@ec_broken = common dso_local global i32 0, align 4
@ec_sortref = common dso_local global i32 0, align 4
@ec_min_security = common dso_local global i32 0, align 4
@ec_max_security = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @_outEquivalenceClass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outEquivalenceClass(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %4, align 8
  br label %5

14:                                               ; preds = %5
  %15 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ec_opfamilies, align 4
  %17 = call i32 @WRITE_NODE_FIELD(i32 %16)
  %18 = load i32, i32* @ec_collation, align 4
  %19 = call i32 @WRITE_OID_FIELD(i32 %18)
  %20 = load i32, i32* @ec_members, align 4
  %21 = call i32 @WRITE_NODE_FIELD(i32 %20)
  %22 = load i32, i32* @ec_sources, align 4
  %23 = call i32 @WRITE_NODE_FIELD(i32 %22)
  %24 = load i32, i32* @ec_derives, align 4
  %25 = call i32 @WRITE_NODE_FIELD(i32 %24)
  %26 = load i32, i32* @ec_relids, align 4
  %27 = call i32 @WRITE_BITMAPSET_FIELD(i32 %26)
  %28 = load i32, i32* @ec_has_const, align 4
  %29 = call i32 @WRITE_BOOL_FIELD(i32 %28)
  %30 = load i32, i32* @ec_has_volatile, align 4
  %31 = call i32 @WRITE_BOOL_FIELD(i32 %30)
  %32 = load i32, i32* @ec_below_outer_join, align 4
  %33 = call i32 @WRITE_BOOL_FIELD(i32 %32)
  %34 = load i32, i32* @ec_broken, align 4
  %35 = call i32 @WRITE_BOOL_FIELD(i32 %34)
  %36 = load i32, i32* @ec_sortref, align 4
  %37 = call i32 @WRITE_UINT_FIELD(i32 %36)
  %38 = load i32, i32* @ec_min_security, align 4
  %39 = call i32 @WRITE_UINT_FIELD(i32 %38)
  %40 = load i32, i32* @ec_max_security, align 4
  %41 = call i32 @WRITE_UINT_FIELD(i32 %40)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_OID_FIELD(i32) #1

declare dso_local i32 @WRITE_BITMAPSET_FIELD(i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_UINT_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
