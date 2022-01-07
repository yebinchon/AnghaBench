; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_AtSubAbort_Portals.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_AtSubAbort_Portals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32*, i32 (%struct.TYPE_8__*)* }

@PortalHashTable = common dso_local global i32 0, align 4
@PORTAL_ACTIVE = common dso_local global i64 0, align 8
@PORTAL_FAILED = common dso_local global i64 0, align 8
@PORTAL_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtSubAbort_Portals(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @PortalHashTable, align 4
  %13 = call i32 @hash_seq_init(i32* %9, i32 %12)
  br label %14

14:                                               ; preds = %95, %65, %4
  %15 = call i64 @hash_seq_search(i32* %9)
  %16 = inttoptr i64 %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %10, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %104

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %11, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %18
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PORTAL_ACTIVE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = call i32 @MarkPortalFailed(%struct.TYPE_8__* %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PORTAL_FAILED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ResourceOwnerNewParent(i32* %59, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %56, %51, %45
  br label %65

65:                                               ; preds = %64, %27
  br label %14

66:                                               ; preds = %18
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PORTAL_READY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PORTAL_ACTIVE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %66
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %80 = call i32 @MarkPortalFailed(%struct.TYPE_8__* %79)
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %83, align 8
  %85 = call i64 @PointerIsValid(i32 (%struct.TYPE_8__*)* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 5
  %90 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %89, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %92 = call i32 %90(%struct.TYPE_8__* %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  store i32 (%struct.TYPE_8__*)* null, i32 (%struct.TYPE_8__*)** %94, align 8
  br label %95

95:                                               ; preds = %87, %81
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = call i32 @PortalReleaseCachedPlan(%struct.TYPE_8__* %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  store i32* null, i32** %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @MemoryContextDeleteChildren(i32 %102)
  br label %14

104:                                              ; preds = %14
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @MarkPortalFailed(%struct.TYPE_8__*) #1

declare dso_local i32 @ResourceOwnerNewParent(i32*, i32) #1

declare dso_local i64 @PointerIsValid(i32 (%struct.TYPE_8__*)*) #1

declare dso_local i32 @PortalReleaseCachedPlan(%struct.TYPE_8__*) #1

declare dso_local i32 @MemoryContextDeleteChildren(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
