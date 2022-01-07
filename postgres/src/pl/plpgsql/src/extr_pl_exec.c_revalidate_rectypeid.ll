; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_revalidate_rectypeid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_revalidate_rectypeid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { i64, i64, i32*, i32 }

@RECORDOID = common dso_local global i32 0, align 4
@TYPECACHE_TUPDESC = common dso_local global i32 0, align 4
@TYPECACHE_DOMAIN_BASE_INFO = common dso_local global i32 0, align 4
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type %s is not composite\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @revalidate_rectypeid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revalidate_rectypeid(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RECORDOID, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %96

34:                                               ; preds = %23, %14
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = call i32 @typenameTypeIdAndMod(i32* null, i32* %42, i32* %44, i32* %46)
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TYPECACHE_TUPDESC, align 4
  %53 = load i32, i32* @TYPECACHE_DOMAIN_BASE_INFO, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.TYPE_6__* @lookup_type_cache(i32 %51, i32 %54)
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %4, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TYPECACHE_TUPDESC, align 4
  %66 = call %struct.TYPE_6__* @lookup_type_cache(i32 %64, i32 %65)
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %4, align 8
  br label %67

67:                                               ; preds = %61, %48
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @format_type_be(i32 %78)
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = call i32 @ereport(i32 %73, i32 %80)
  br label %82

82:                                               ; preds = %72, %67
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %82, %33, %13
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @typenameTypeIdAndMod(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @lookup_type_cache(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
