; ModuleID = '/home/carl/AnghaBench/postgres/contrib/jsonb_plperl/extr_jsonb_plperl.c_JsonbValue_to_SV.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/jsonb_plperl/extr_jsonb_plperl.c_JsonbValue_to_SV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@dTHX = common dso_local global i32 0, align 4
@numeric_out = common dso_local global i32 0, align 4
@PL_sv_yes = common dso_local global i32 0, align 4
@PL_sv_no = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unexpected jsonb value type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*)* @JsonbValue_to_SV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @JsonbValue_to_SV(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* @dTHX, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %64 [
    i32 132, label %12
    i32 129, label %19
    i32 128, label %35
    i32 131, label %52
    i32 130, label %62
  ]

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @Jsonb_to_SV(i32 %17)
  store i32* %18, i32** %2, align 8
  br label %70

19:                                               ; preds = %1
  %20 = load i32, i32* @numeric_out, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @NumericGetDatum(i32 %24)
  %26 = call i32 @DirectFunctionCall1(i32 %20, i32 %25)
  %27 = call i8* @DatumGetCString(i32 %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32* @cstr2sv(i8* %28)
  %30 = call i32 @SvNV(i32* %29)
  %31 = call i32* @newSVnv(i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @pfree(i8* %32)
  %34 = load i32*, i32** %5, align 8
  store i32* %34, i32** %2, align 8
  br label %70

35:                                               ; preds = %1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @pnstrdup(i32 %40, i32 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32* @cstr2sv(i8* %47)
  store i32* %48, i32** %7, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @pfree(i8* %49)
  %51 = load i32*, i32** %7, align 8
  store i32* %51, i32** %2, align 8
  br label %70

52:                                               ; preds = %1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32* @PL_sv_yes, i32* @PL_sv_no
  %60 = call i32 @SvNV(i32* %59)
  %61 = call i32* @newSVnv(i32 %60)
  store i32* %61, i32** %2, align 8
  br label %70

62:                                               ; preds = %1
  %63 = call i32* @newSV(i32 0)
  store i32* %63, i32** %2, align 8
  br label %70

64:                                               ; preds = %1
  %65 = load i32, i32* @ERROR, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @elog(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32* null, i32** %2, align 8
  br label %70

70:                                               ; preds = %64, %62, %52, %35, %19, %12
  %71 = load i32*, i32** %2, align 8
  ret i32* %71
}

declare dso_local i32* @Jsonb_to_SV(i32) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @NumericGetDatum(i32) #1

declare dso_local i32* @newSVnv(i32) #1

declare dso_local i32 @SvNV(i32*) #1

declare dso_local i32* @cstr2sv(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @pnstrdup(i32, i32) #1

declare dso_local i32* @newSV(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
