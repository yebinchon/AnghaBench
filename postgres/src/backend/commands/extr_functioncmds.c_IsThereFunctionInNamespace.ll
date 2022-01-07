; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_IsThereFunctionInNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_IsThereFunctionInNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@PROCNAMEARGSNSP = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"function %s already exists in schema \22%s\22\00", align 1
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IsThereFunctionInNamespace(i8* %0, i32 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @PROCNAMEARGSNSP, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @CStringGetDatum(i8* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = call i32 @PointerGetDatum(%struct.TYPE_4__* %12)
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call i64 @SearchSysCacheExists3(i32 %9, i32 %11, i32 %13, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_DUPLICATE_FUNCTION, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NIL, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @funcname_signature_string(i8* %22, i32 %23, i32 %24, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @get_namespace_name(i32 %29)
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  %32 = call i32 @ereport(i32 %19, i32 %31)
  br label %33

33:                                               ; preds = %18, %4
  ret void
}

declare dso_local i64 @SearchSysCacheExists3(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_4__*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @funcname_signature_string(i8*, i32, i32, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
