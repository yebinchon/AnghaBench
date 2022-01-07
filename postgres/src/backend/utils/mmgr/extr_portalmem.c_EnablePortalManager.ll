; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_EnablePortalManager.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_EnablePortalManager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TopPortalContext = common dso_local global i32* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TopPortalContext\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@MAX_PORTALNAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Portal hash\00", align 1
@PORTALS_PER_USER = common dso_local global i32 0, align 4
@HASH_ELEM = common dso_local global i32 0, align 4
@PortalHashTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnablePortalManager() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = load i32*, i32** @TopPortalContext, align 8
  %3 = icmp eq i32* %2, null
  %4 = zext i1 %3 to i32
  %5 = call i32 @Assert(i32 %4)
  %6 = load i32, i32* @TopMemoryContext, align 4
  %7 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %8 = call i32* @AllocSetContextCreate(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32* %8, i32** @TopPortalContext, align 8
  %9 = load i32, i32* @MAX_PORTALNAME_LEN, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 4, i32* %11, align 4
  %12 = load i32, i32* @PORTALS_PER_USER, align 4
  %13 = load i32, i32* @HASH_ELEM, align 4
  %14 = call i32 @hash_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %12, %struct.TYPE_3__* %1, i32 %13)
  store i32 %14, i32* @PortalHashTable, align 4
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
