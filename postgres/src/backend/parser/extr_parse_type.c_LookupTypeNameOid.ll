; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_type.c_LookupTypeNameOid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_type.c_LookupTypeNameOid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type \22%s\22 does not exist\00", align 1
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LookupTypeNameOid(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32* @LookupTypeName(i32* %10, %struct.TYPE_6__* %11, i32* null, i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = call i32 @TypeNameToString(%struct.TYPE_6__* %23)
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @parser_errposition(i32* %26, i32 %29)
  %31 = call i32 @ereport(i32 %20, i32 %30)
  br label %32

32:                                               ; preds = %19, %16
  %33 = load i32, i32* @InvalidOid, align 4
  store i32 %33, i32* %4, align 4
  br label %43

34:                                               ; preds = %3
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @GETSTRUCT(i32* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @ReleaseSysCache(i32* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %32
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32* @LookupTypeName(i32*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @TypeNameToString(%struct.TYPE_6__*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
