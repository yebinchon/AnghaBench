; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeTimezoneAbbrev.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeTimezoneAbbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@abbrevcache = common dso_local global %struct.TYPE_7__** null, align 8
@TOKMAXLEN = common dso_local global i32 0, align 4
@zoneabbrevtbl = common dso_local global %struct.TYPE_8__* null, align 8
@UNKNOWN_FIELD = common dso_local global i32 0, align 4
@DYNTZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeTimezoneAbbrev(i32 %0, i8* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32** %3, i32*** %8, align 8
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @abbrevcache, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %11, i64 %13
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TOKMAXLEN, align 4
  %24 = call i64 @strncmp(i8* %19, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %18, %4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zoneabbrevtbl, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zoneabbrevtbl, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zoneabbrevtbl, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_7__* @datebsearch(i8* %30, i32 %33, i32 %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %10, align 8
  br label %39

38:                                               ; preds = %26
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %39

39:                                               ; preds = %38, %29
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = icmp eq %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @UNKNOWN_FIELD, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 0, i32* %45, align 4
  %46 = load i32**, i32*** %8, align 8
  store i32* null, i32** %46, align 8
  br label %72

47:                                               ; preds = %40
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @abbrevcache, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %49, i64 %51
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @DYNTZ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load i32*, i32** %7, align 8
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zoneabbrevtbl, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = call i32* @FetchDynamicTimeZone(%struct.TYPE_8__* %61, %struct.TYPE_7__* %62)
  %64 = load i32**, i32*** %8, align 8
  store i32* %63, i32** %64, align 8
  br label %71

65:                                               ; preds = %47
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32**, i32*** %8, align 8
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %65, %59
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @datebsearch(i8*, i32, i32) #1

declare dso_local i32* @FetchDynamicTimeZone(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
