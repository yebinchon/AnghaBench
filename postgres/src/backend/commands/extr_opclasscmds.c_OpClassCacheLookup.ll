; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_OpClassCacheLookup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_OpClassCacheLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CLAAMNAMENSP = common dso_local global i32 0, align 4
@CLAOID = common dso_local global i32 0, align 4
@AMOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cache lookup failed for access method %u\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"operator class \22%s\22 does not exist for access method \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i32)* @OpClassCacheLookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @OpClassCacheLookup(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @DeconstructQualifiedName(i32* %13, i8** %7, i8** %8)
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @LookupExplicitNamespace(i8* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @OidIsValid(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32* null, i32** %9, align 8
  br label %34

25:                                               ; preds = %17
  %26 = load i32, i32* @CLAAMNAMENSP, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ObjectIdGetDatum(i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @PointerGetDatum(i8* %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ObjectIdGetDatum(i32 %31)
  %33 = call i32* @SearchSysCache3(i32 %26, i32 %28, i32 %30, i32 %32)
  store i32* %33, i32** %9, align 8
  br label %34

34:                                               ; preds = %25, %24
  br label %49

35:                                               ; preds = %3
  %36 = load i32, i32* %4, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @OpclassnameGetOpcid(i32 %36, i8* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @OidIsValid(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32* null, i32** %9, align 8
  br label %48

43:                                               ; preds = %35
  %44 = load i32, i32* @CLAOID, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @ObjectIdGetDatum(i32 %45)
  %47 = call i32* @SearchSysCache1(i32 %44, i32 %46)
  store i32* %47, i32** %9, align 8
  br label %48

48:                                               ; preds = %43, %42
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @HeapTupleIsValid(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %82, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @AMOID, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @ObjectIdGetDatum(i32 %58)
  %60 = call i32* @SearchSysCache1(i32 %57, i32 %59)
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @HeapTupleIsValid(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @elog(i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @NameListToString(i32* %72)
  %74 = load i32*, i32** %12, align 8
  %75 = call i64 @GETSTRUCT(i32* %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @NameStr(i32 %78)
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %79)
  %81 = call i32 @ereport(i32 %69, i32 %80)
  br label %82

82:                                               ; preds = %68, %53, %49
  %83 = load i32*, i32** %9, align 8
  ret i32* %83
}

declare dso_local i32 @DeconstructQualifiedName(i32*, i8**, i8**) #1

declare dso_local i32 @LookupExplicitNamespace(i8*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32* @SearchSysCache3(i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @OpclassnameGetOpcid(i32, i8*) #1

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @NameListToString(i32*) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
