; ModuleID = '/home/carl/AnghaBench/postgres/contrib/jsonb_plperl/extr_jsonb_plperl.c_Jsonb_to_SV.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/jsonb_plperl/extr_jsonb_plperl.c_Jsonb_to_SV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@dTHX = common dso_local global i32 0, align 4
@WJB_ELEM = common dso_local global i32 0, align 4
@WJB_END_ARRAY = common dso_local global i32 0, align 4
@WJB_DONE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unexpected jsonb token: %d\00", align 1
@WJB_KEY = common dso_local global i32 0, align 4
@WJB_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @Jsonb_to_SV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Jsonb_to_SV(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32, i32* @dTHX, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @JsonbIteratorInit(i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = call i32 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %4, i32 1)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %91 [
    i32 129, label %17
    i32 128, label %59
  ]

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = call i32 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %4, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @WJB_ELEM, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = call i32 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %7, i32 1)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @WJB_END_ARRAY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = call i32 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %7, i32 1)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @WJB_DONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27, %23
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = call i32* @JsonbValue_to_SV(%struct.TYPE_10__* %4)
  store i32* %40, i32** %2, align 8
  br label %95

41:                                               ; preds = %17
  %42 = call i32* (...) @newAV()
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %55, %41
  %44 = call i32 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %4, i32 1)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @WJB_DONE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @WJB_ELEM, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32*, i32** %8, align 8
  %53 = call i32* @JsonbValue_to_SV(%struct.TYPE_10__* %4)
  %54 = call i32 @av_push(i32* %52, i32* %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %43

56:                                               ; preds = %43
  %57 = load i32*, i32** %8, align 8
  %58 = call i32* @newRV(i32* %57)
  store i32* %58, i32** %2, align 8
  br label %95

59:                                               ; preds = %1
  %60 = call i32* (...) @newHV()
  store i32* %60, i32** %9, align 8
  br label %61

61:                                               ; preds = %87, %59
  %62 = call i32 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %4, i32 1)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @WJB_DONE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @WJB_KEY, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = call i32 @JsonbIteratorNext(i32** %5, %struct.TYPE_10__* %10, i32 1)
  %71 = load i32, i32* @WJB_VALUE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = call i32* @JsonbValue_to_SV(%struct.TYPE_10__* %10)
  store i32* %74, i32** %11, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @hv_store(i32* %75, i32 %79, i32 %83, i32* %84, i32 0)
  br label %86

86:                                               ; preds = %73, %69
  br label %87

87:                                               ; preds = %86, %65
  br label %61

88:                                               ; preds = %61
  %89 = load i32*, i32** %9, align 8
  %90 = call i32* @newRV(i32* %89)
  store i32* %90, i32** %2, align 8
  br label %95

91:                                               ; preds = %1
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @elog(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %93)
  store i32* null, i32** %2, align 8
  br label %95

95:                                               ; preds = %91, %88, %56, %39
  %96 = load i32*, i32** %2, align 8
  ret i32* %96
}

declare dso_local i32* @JsonbIteratorInit(i32*) #1

declare dso_local i32 @JsonbIteratorNext(i32**, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @JsonbValue_to_SV(%struct.TYPE_10__*) #1

declare dso_local i32* @newAV(...) #1

declare dso_local i32 @av_push(i32*, i32*) #1

declare dso_local i32* @newRV(i32*) #1

declare dso_local i32* @newHV(...) #1

declare dso_local i32 @hv_store(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
